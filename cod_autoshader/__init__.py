"""CoD AutoShader - builds Blender materials for Call of Duty: Black Ops 7 models exported by Saluki (.cast).

Texture decoding follows Infinite Ward's packed texture sets (Drobot, "Rendering of Call of Duty:
Infinite Warfare", Digital Dragons 2017, slides 110-115) and was verified against BO7 exports:

  packed CS  (semantic 0x47)  RGB = fused diffuse+specular color (sRGB), A = metalness mask with
                              an insulator range: a <= 0.1 -> dielectric F0 = a, a > 0.1 -> metal.
                              BO7 techsets that don't use the mask store a constant alpha; those are
                              shaded as plain dielectrics.
  packed NOG (semantic 0x48)  R = gloss, G = normal X, B = occlusion, A = normal Y. The normal is
                              hemi-octahedron encoded with DirectX Y (confirmed by an integrability
                              test over 110 BO7 normal maps).
  semantic 0x49  emissive color     semantic 0x4a  opacity mask

Gloss -> GGX alpha uses the Call of Duty: WWII parameterization (Chan, "Material Advances in Call of
Duty: WWII", SIGGRAPH 2018, slide 6 errata): alpha = sqrt(2 / (1 + 2^(18 * gloss))).
MW (2019) uses its own curve, read from the game's pixel shaders: alpha = sqrt(2 / (2 + 2^(20 * (1 - sqrt(1 - gloss))))).
Emissive maps are stored dim (a BO7 watch screen peaks at 0.43) because the engine scales them, so each one is
measured and lifted so its brightest pixel glows; the glow takes a colour tint.
Skin techsets (skin LUT 0x54, wrinkle maps 0xb/0xc, or a skin-tone 0x4e) store something other than
metalness in CS alpha, so they are shaded as dielectric skin with subsurface scattering.
Hair cards get a Marschner-style R / TRT / TT shader with anisotropic highlights around the strands;
eyes get a cornea coat, iris parallax and the lid shadow from the lacrimal mid-shadow shell.
Sights: lenses become tinted glass with the game's dirt map (including shader-driven glass like watch crystals,
which carry no textures at all); red dot / holo lenses get a collimated reticle
(it stays on the aim point when the head moves); scope surfaces (ads_scope_lens*) become a zoomed
picture-in-picture like the game's scope camera (Cycles Ray Portal), framed by the eye-relief shadow.
Bodycam Look (Blender 5.0+): one compositor node group for the bodycam-game camera - fisheye lens with color
fringes and soft edges, blown-out exposure with bloom, a flat warm grade, sharpening and sensor noise.
Animations: Import Animation layers CoD viewmodel clips on the NLA (full-body clips on a Base track, tag_ads ADS
clips above them, true additive clips in Combine mode), lines the mounted sight up with the eye at full ADS and
adds a procedural recoil kick to fire clips; Viewmodel Camera puts the camera on the eye bone. Weapon Clips finds
the gun's animations in the export and adds a move with the clips it needs (e.g. ADS Fire = aim + ADS fire).
Third person: heads attach to their body on import, Assemble Selected puts a gun on a body's j_gun, and clips are
sorted into layers - stance / locomotion (legs) under upper-body actions, aim offsets and fire kicks stacked on
the Additive layers, and the export's facial_* clips on Face layers alongside the body. Import & Shade can merge what it imports into the
selected rig (heads, hair, gear, weapons), like the Cast importer's own Import Merge.
Rig: Build Rig adds full-body IK (hand / foot controls with elbow and knee targets, IK/FK switch that keeps the
pose) and face controls for the bone-driven IW faces: every facial joint gets a handle, the eyes a look-at target,
and preset or saved expressions mix on sliders on top of the facial clips. On-face controls (mouth corners,
brows, eyelids, cheeks, nose, lips, jaw) mix whole expressions per side; the per-joint handles sit in a hidden
detail layer.
Rigify Rig (third person) fits a Rigify human metarig to the CoD skeleton - IK/FK limbs
with pole targets, torso / hip pivots, finger controls - generates it and makes the CoD joints follow it.
Hair can use the user's own Eevee Hair Card Shader node group (appended from their .blend) instead of the built-in
strand shader; skin defaults to Activision's separable subsurface scattering (a near and a far scatter lobe).
"""

bl_info = {
    "name": "CoD AutoShader",
    "author": "Simpy",
    "version": (1, 51, 0),
    "blender": (4, 2, 0),
    "location": "3D Viewport > Sidebar > CoD, Shader Editor > Sidebar > CoD",
    "description": "Auto-shades Call of Duty Saluki/Cast exports (CS/NOG decoding)",
    "category": "Material",
}

import glob
import json
import math
import os
import re
import struct

import bpy
import bpy.utils.previews
import numpy as np
from mathutils import Matrix, Quaternion, Vector
from bpy.props import (BoolProperty, CollectionProperty, EnumProperty, FloatProperty, FloatVectorProperty,
                       IntProperty, StringProperty)
from bpy_extras.io_utils import ImportHelper

GROUP_NAME = "CoD Surface Decode"
GROUP_VERSION = 8
SSS_NODE_NAME = "CoD SSS Scale"

SEM_CS = 0x47
SEM_NOG = 0x48
SEM_EMISSIVE = 0x49
SEM_OPACITY = 0x4A
SEM_STRAND = 0x4D           # hair techsets: per-strand random / depth value
SEM_PARAMS = 0x4E           # techset-specific; skin-tone color on skin (hair: flat per-card color, unused)
SEM_SKIN_MARKERS = (0x54, 0x0B, 0x0C)   # skin scattering LUT, wrinkle color / wrinkle NOG

# Weapon slots. MWII keeps its texture names, and those name the hashed MW4 ones:
#   MWII 0x32 '_cm'   camo / paint regions, one per RGBA channel
#        0x3d '_dm'   the parts that take battle damage (whole parts, on or off)
#   MW4  0x61, 0x71   the same regions, one greyscale image each (the two are complements)
#        0x0a '_dmg'  per-texel scratches and chips: bright = paint intact, dark = worn through
# Every one of them is a mask that says WHERE a finish goes, never what it looks like - the colour map
# is already painted - so they are read as masks and the finish itself is built here.
MW2_CAMO_SLOT = 0x32
MW2_DAMAGE_SLOT = 0x3D
MW4_CAMO_SLOTS = (0x61, 0x71)
MW4_DAMAGE_SLOT = 0x0A
MW2_ANISO_SLOT = 0x34        # RG = brush direction as a unit vector, B = strength (MWII blueprints)
MW2_LAYER2_MASK = 0x0F       # '_a_secondary': where the blueprint's second layer sits
MW2_LAYER2_NORMAL = 0x07     # '_n_secondary': that layer's own normal map
MW2_LAYER2_COLOR = 0x25      # '_tr_secondary': and its colour
MW2_TINT_MASK = 0x26         # '_tf': two regions the game paints per blueprint (red and green)

# gloss curve: alpha = sqrt(2 / (bias + 2^(exponent * g))), g = gloss, or 1 - sqrt(1 - gloss) with the remap on
GLOSS_CURVES = {
    'WWII': (18.0, 1.0, 0.0),    # Call of Duty: WWII (2018)
    'AW': (16.0, 2.0, 0.0),      # Call of Duty: Advanced Warfare (2015)
    # MW (2019), read from the game's own pixel shaders (4,804 of its 5,640 run it): g = 1 - sqrt(1 - gloss),
    # GGX alpha^2 = 2 / (2 + 2^(20 g)). Much rougher than the WWII curve at mid gloss (0.5 -> 0.43, not 0.25)
    'IW8': (20.0, 2.0, 1.0),
    # MWII likewise (gloss * scale + bias per material, then max(1 - gloss, 0.01); never the IW8 curve)
    # BO7 likewise: roughness = max(1 - gloss, 0.03), alpha^2 = roughness^4 (~420 of its shaders)
    # MW4 (2026) has no curve at all: its shaders take roughness = 1 - gloss and GGX alpha^2 = roughness^4
    # (2 / max((1 - g)^4, 1e-5) in 180 of its shaders, no exp2 of a scaled gloss anywhere) - 'LINEAR', no entry
}

SKIN_F0 = 0.028
SKIN_TEXTURE_RE = r"(^|_)base_(fe)?male_|(^|_)head_hero_|(^|_)skin(_|$)|(^|_)(bare_)?(arms?|hands?|torso|legs?)_(n|c)(&|_|$)"
# lowest roughness for everything that isn't skin, hair or eyes, per game ("Auto"). MWII-era cloth, skin-tight
# tops and painted gear read satin-wet with the WWII gloss curve alone. Measured over every export here, the
# share of plain materials that decode below 0.3 roughness is MWII 64%, MW4 52%, BO7 39% - so MW4 belongs with
# the MWII family, not with BO7, and its trousers came out looking like leather until this floor was added.
# MW4's gear gloss maps run high - measured over rex_body_sp_hero_jae_dirty they average 0.52-0.68 with a
# 90th percentile of 0.70-1.00 - so the old 0.25 floor left vests and pouches with a sheen on them.
GAME_ROUGHNESS_FLOOR = {'MW2': 0.0, 'MW3': 0.0, 'MW4': 0.0, 'MW19': 0.0, 'VG': 0.3, 'CW': 0.25,
                        'WW2': 0.2, 'IW': 0.2}
# Red travels far under skin, green and blue barely at all. The old ratios came from Jimenez's screen-space
# blur kernel, which is far wider in green/blue than the medium itself - in a path tracer that reads as a
# uniform pink glow through ears and nostrils. These are the per-channel mean free paths of dermis.
SKIN_SSS_RADIUS = (1.0, 0.22, 0.12)
# Separable SSS (Jimenez et al., ATVI-TR-19-02, Table 2): world size s in mm, near / far Gaussian widths as
# fractions of s per channel, and w, the near Gaussian's share
SSS_PROFILES = {
    'PRODUCTION': dict(s_mm=9.9, near=(0.22, 0.07, 0.07), far=(1.0, 0.3, 0.15), w=0.65),
    'MULTI': dict(s_mm=9.27, near=(0.055, 0.044, 0.038), far=(1.0, 0.2, 0.13), w=0.5),
    'SINGLE': dict(s_mm=10.34, near=(0.077, 0.034, 0.02), far=(1.0, 0.45, 0.25), w=0.5),
}
SSS_GAUSS_TO_RADIUS = 0.45          # Gaussian sigma -> Christensen-Burley radius with the same spread
SSS_NEAR_LABEL = "Skin - near scatter (detail)"
SSS_FAR_LABEL = "Skin - far scatter (glow)"
SKIN_SSS_ANISOTROPY = 0.8            # skin scatters strongly forward, so light does not spread sideways
SKIN_DIFFUSE_ROUGHNESS = 0.35        # Oren-Nayar: skin is microscopically rough, which softens the terminator
SKIN_OIL_NODE_NAME = "CoD Skin Oil"
SKIN_OIL_IOR = 1.47                  # sebum: skin's own film sits near fat/oil, not water
SKIN_OIL_ROUGHNESS = (0.40, 0.16)    # film roughness at no gloss, and at twice this skin's average gloss
SKIN_OIL_MAX = 0.5                   # even a sweating forehead is not a mirror

# BO7 eye textures share one layout: iris centered at (0.5, 0.5), limbal ring at r ~0.19,
# sclera from r ~0.22 (measured over the exported eye materials)
HAIR_NODE_NAME = "CoD Hair"
HAIR_GROUP_VERSION = 3
HAIR_TRANSPARENT_BOUNCES = 64
HAIR_TINT_GAMMA = 1.4        # TT/TRT color = (albedo / its brightest channel) ^ gamma: same hue, deeper
HAIR_FRESNEL_NORM = 4.0      # brings Fresnel x |N.V| (peaks near 0.25) back to a 0..1 range for "Shine"
# a hair card node group the user already owns (e.g. the "Eevee Hair Card Shader"), appended from their .blend
HAIR_CARD_NODE_NAME = "CoD Hair Card"
HAIR_CARD_MATCH = "hair card shader"
HAIR_BRIGHT_NODE = "CoD Hair Brightness"
# the shader's own defaults suit its demo head; on CoD hair colour they read too bright (strong spec and sheen,
# translucency added over the diffuse), so these start lower - all still editable on the node
HAIR_CARD_DEFAULTS = (("Specular", 0.3), ("Sheen", 0.08), ("Translucency Weight", 0.25),
                      ("Subsurface Weight", 0.3), ("Highlight Intensity", 0.06), ("Metallic", 0.3))
# Eyebrows and eyelashes are cards lying flat on skin, and the hair card shader's alpha is soft by default
# (0.5), so the skin reads through them. On the lit side that goes unnoticed; on the shadow side the card
# washes out to the colour of the face behind it, which is how one eyebrow comes out olive and the other
# stays brown. A hard alpha fixes it, and is only right for short hair: long hair wants the soft edge.
HAIR_CARD_SHORT = re.compile(r"brow|lash")

EYE_NODE_NAME = "CoD Eye Parallax"
EYE_SHADOW_NODE_NAME = "CoD Eye Shadow"
EYE_RELIEF_NODE_NAME = "CoD Eye Iris Relief"
EYE_RELIEF_VERSION = 1
EYE_RELIEF_STRENGTH = 0.6    # bump strength for the iris height map
EYE_RELIEF_DISTANCE = 0.012  # height -> bump depth, in eye UV units
EYE_DEPTH_RELIEF = 0.25      # bump strength when the height is the game's own iris depth (0x4a): it is deeper
EYE_NORMAL_SCALE = 0.5       # the eye's normal map under a smooth cornea reads softer than on dry skin
EYE_GROUP_VERSION = 3
EYE_IRIS_RADIUS = 0.21
EYE_IRIS_DEPTH = 0.06        # cornea apex over the iris plane (~0.4 cm) / 1.376 refraction, in eye UV units
EYE_TILT_MAX = 0.785         # cornea normal tilt model fitted to the BO7 eye mesh
EYE_TILT_FALLOFF = 0.11
EYE_CORNEA_IOR = 1.376
EYE_COAT_ROUGHNESS = 0.02
EYE_BASE_ROUGHNESS = 0.4
EYE_BASE_SPECULAR = 0.1            # Principled specular level of the tissue under the cornea (0.5 = default)           # the tissue under the cornea; the wet mirror is the coat, on the smooth geometry
EYE_IRIS_ABSORPTION = 0.25          # k in exp(-k (1/N.V - 1)): 0.90 at 45 degrees, 0.62 at 70
EYE_IRIS_SHEEN = 0.35               # iris stroma fibres
EYE_IRIS_SHEEN_ROUGHNESS = 0.35

# Position of the NOG slot in the list of non-albedo semantics (ascending semantic order) for the
# common techset layout 3,4,5,a,12,3f,40,41,42,[47],48. Eye / face techsets add 0x0, 0xb, 0xc
# in front, shifting it by up to two.
NOG_POSITIONS = (9, 10, 11)

# MWII-era techset slot indices (hash column of those exports). Verified by matching MWII's unhashed image
# names against BO7 textures: 0x0 '_c&_s' (CS), 0x4 '_n&_o&_g' (NOG), 0xC '_alpha', 0x26 '_scatter&_m'
# (skin: scatter color + thickness), 0x1D thermal, 0x1B infrared.
# Black Ops Cold War (T9) names its slots instead of numbering them. Roles the shader uses:
CW_ROLES = {
    "color": "colorMap", "normal": "normalMap", "roughness": "perceptualRoughnessMap",
    "ao": "aoMap", "spec": "specColorMap", "alpha": "alphaMap", "thickness": "thicknessMap",
    "detail_mask": "detailNormalMask", "detail1": "detailNormal1", "detail2": "detailNormal2",
    "detail3": "detailNormal3", "detail4": "detailNormal4", "detail": "detailMap",
    "detail_color": "detailColorMap", "tint": "tintMask",
}
CW_GROUP_NAME = "CoD Cold War Decode"
CW_GROUP_VERSION = 1
CW_NODE_NAME = "CoD Cold War Decode"
# F0 (linear) either side of which a Cold War surface is treated as metal. Measured over this export:
# dielectrics land at 0.004-0.052, gunmetal and plated parts at 0.107-0.734.
CW_F0_DIELECTRIC = 0.08
CW_F0_METAL = 0.22
CW_DETAIL_STRENGTH = 0.6
CW_TILING_NODE_NAME = "CoD Cold War Detail Tiling"
# Cold War tiles its detail normals across a garment, but the export carries no tiling constant,
# so this is a plausible default the user can set rather than a measured one.
CW_DETAIL_TILING = 8.0

MW2_SLOTS = {"cs": 0x0, "nog": 0x4, "emissive": 0x8, "opacity": 0xC, "params": 0x26}   # 0x8: '_e' textures
# MW (2019) numbers them its own way: '_c&_s' 0x0, '_n&_o&_g' 0x9, and the cut-out of hair cards, lashes, tassels
# and mask glass is a greyscale '_c' map in 0x1b (Zedra, Roze, Price exports)
MW19_SLOTS = {"cs": 0x0, "nog": 0x9, "opacity": 0x1b}
# MW (2019) skin: 0x7f '_z' is the scatter mask (white on skin, black on brows, scalp and covered neck) and 0x44
# '_t' the shared translucency map (bright where the head is thin: ears, nostrils, lids, lips)
MW19_SCATTER_MASK, MW19_TRANSLUCENCY = 0x7f, 0x44
MW19_TRANSMIT = 1.0      # translucency map -> Translucent BSDF strength (colour = skin albedo squared)
BO7_SLOTS = {"cs": SEM_CS, "nog": SEM_NOG, "emissive": SEM_EMISSIVE, "opacity": SEM_OPACITY,
             "strand": SEM_STRAND, "params": SEM_PARAMS}
SLOT_ROLES = ("cs", "nog", "emissive", "opacity", "strand", "params")

# Games with IW-style packed CS / NOG textures: (id, button label, full name, gloss curve, verified here)
GAMES = (
    ('BO7', "Black Ops 7", "Call of Duty: Black Ops 7 (2025)", 'LINEAR', True),
    ('BO6', "Black Ops 6", "Call of Duty: Black Ops 6 (2024)", 'LINEAR', False),     # BO7's engine
    ('MW4', "MW4 (2026)", "Call of Duty: Modern Warfare 4 (2026)", 'LINEAR', True),
    ('MW3', "MW III", "Call of Duty: Modern Warfare III (2023)", 'LINEAR', False),   # MWII's engine
    ('MW2', "MW II", "Call of Duty: Modern Warfare II / Warzone (2022)", 'LINEAR', True),
    ('VG', "Vanguard", "Call of Duty: Vanguard (2021)", 'WWII', False),
    ('CW', "Cold War", "Call of Duty: Black Ops Cold War (2020)", 'WWII', False),
    ('MW19', "MW (2019)", "Call of Duty: Modern Warfare (2019)", 'IW8', True),
    ('WW2', "WWII", "Call of Duty: WWII (2017)", 'WWII', False),
    ('IW', "Inf. Warfare", "Call of Duty: Infinite Warfare (2016)", 'AW', False),
    ('AW', "Adv. Warfare", "Call of Duty: Advanced Warfare (2014)", 'AW', False),
)
# the game a model comes from, by the codename its asset names carry
GAME_TOKENS = ((r"(^|_)rex(_|$)", 'MW4'), (r"(^|_)sat(_|$)", 'BO7'), (r"(^|_)jup(_|$)", 'MW3'),
               (r"(^|_)t10(_|$)", 'BO6'), (r"(^|_)iw9(_|$)", 'MW2'), (r"(^|_)iw8(_|$)", 'MW19'),
               (r"(^|_)t9(_|$)", 'CW'), (r"(^|_)s4(_|$)", 'VG'), (r"(^|_)s2(_|$)", 'WW2'),
               (r"(^|_)iw7(_|$)", 'IW'), (r"(^|_)s1(_|$)", 'AW'))
# Saluki's export folder per game, where the names say nothing
GAME_FOLDERS = {"bo7": 'BO7', "bo6": 'BO6', "mw7": 'MW4', "mw4_beta": 'MW4', "mw2_2022": 'MW2'}


def detect_game(*names):
    """The game a model belongs to, from its folder, material and image names; '' when nothing says."""
    for name in names:
        low = os.path.basename(str(name or "")).lower()
        for pattern, game in GAME_TOKENS:
            if re.search(pattern, low):
                return game
    for name in names:
        parts = [p.lower() for p in re.split(r"[\\/]", str(name or ""))]
        for p in parts:
            if p in GAME_FOLDERS:
                return GAME_FOLDERS[p]
    return ""
GAME_CURVE = {g[0]: g[3] for g in GAMES}
PRE_WWII_GAMES = {'AW', 'IW'}          # shipped before WWII's interreflection AO and rough diffuse


# --------------------------------------------------------------------------------------------
# _mat_info parsing
# --------------------------------------------------------------------------------------------

class MatInfo:
    def __init__(self, name, techset, model_dir):
        self.name = name
        self.techset = techset
        self.model_dir = model_dir
        self.image_names = []   # texture names that are not hashes: they still carry the asset's real name
        self.by_semantic = {}   # semantic id -> image path (older Saluki: unk_semantic_XX)
        self.by_name = {}       # semantic label -> image path (Cold War: colorMap, normalMap, ...)
        self.by_slot = {}       # MWII-era exports: techset slot index (hash column 0x0, 0x4, ...) -> path
        self.albedo = None      # newer Saluki: "Albedo" row
        self.extras = []        # newer Saluki: "Unknown" rows in slot order

    def image(self, semantic):
        return self.by_semantic.get(semantic)


LONG_PREFIX = chr(92) * 2 + '?' + chr(92)


def fs_path(path):
    """A path Windows will actually open. Plain Win32 calls still stop at 260 characters unless the program
    asks for more, and Blender does not ask: an MWII blueprint whose colour map is called
    "..._receiver_v8_c&..._receiver_v8_s~3371517256737451204.png" lands at 262 characters and reads as
    missing, which quietly costs that material its colour and its normal map. The prefix lifts the limit."""
    if os.name != 'nt' or not path or len(path) < 250 or path.startswith(LONG_PREFIX):
        return path
    return LONG_PREFIX + os.path.abspath(path)


def fs_exists(path):
    return bool(path) and os.path.exists(fs_path(path))


def _norm_name(name):
    name = re.sub(r"\.\d{3}$", "", name)
    return name.replace("/", "_").replace("\\", "_").lower()


def _is_placeholder(path):
    return path is None or os.path.basename(path).startswith("$")


class ModelIndex:
    """All _mat_info entries under one or more model folders, keyed by normalized material name."""

    def __init__(self):
        self.by_name = {}
        self.by_albedo = {}
        self._dirs = set()

    def add_model_dir(self, model_dir):
        model_dir = os.path.normpath(model_dir)
        if model_dir in self._dirs:
            return
        self._dirs.add(model_dir)

        files = {}
        for p in glob.glob(os.path.join(model_dir, "_images", "**", "*.*"), recursive=True):
            files.setdefault(os.path.splitext(os.path.basename(p))[0].lower(), []).append(p)

        # Saluki files a material under its own name where it has one and under the hash where it does
        # not, and the named ones go in a subfolder: _mat_info/m/base_female_arm_l.txt next to
        # _mat_info/material_19aa10a255d8b674.txt. Globbing only the top level found the hashes and
        # missed every material the export had actually named, which is most of a character.
        for txt in glob.glob(os.path.join(model_dir, "_mat_info", "**", "*.txt"), recursive=True):
            info = _parse_mat_info(txt, model_dir, files)
            if info is None:
                continue
            self.by_name.setdefault(_norm_name(info.name), info)
            albedo = info.image(SEM_CS) or info.albedo
            if albedo:
                self.by_albedo.setdefault(os.path.basename(albedo).lower(), info)

    def add_root(self, root):
        for mat_info_dir in glob.glob(os.path.join(root, "**", "_mat_info"), recursive=True):
            self.add_model_dir(os.path.dirname(mat_info_dir))


def _resolve(files, image_name, mat_name):
    cands = files.get(image_name.lower())
    if not cands:
        return None
    sub = mat_name.replace("/", os.sep).lower()
    for c in cands:
        if sub in c.lower():
            return c
    return cands[0]


def _parse_mat_info(txt, model_dir, files):
    try:
        lines = open(txt, encoding="utf-8", errors="replace").read().splitlines()
    except OSError:
        return None
    name = os.path.splitext(os.path.basename(txt))[0]
    techset = ""
    header = None
    for i, line in enumerate(lines):
        if line.startswith("Name:"):
            name = line.split(":", 1)[1].strip()
        elif line.startswith("Techset:"):
            techset = line.split(":", 1)[1].strip()
        elif line.startswith("semantic,"):
            header = i
            break
    if header is None:
        return None

    info = MatInfo(name, techset, model_dir)
    hashed = []
    for line in lines[header + 1:]:
        parts = [p.strip() for p in line.split(",")]
        if len(parts) < 2 or not parts[0]:
            continue
        semantic, image = parts[0], parts[1]
        readable = re.sub(r"~\d+$", "", os.path.splitext(os.path.basename(image))[0])
        if not readable.startswith("$") and not re.fullmatch(r"image_[0-9a-f]+", readable):
            for piece in readable.split("&"):
                if piece and piece not in info.image_names:
                    info.image_names.append(piece)
        m = re.match(r"unk_semantic_([0-9a-fA-F]+)$", semantic)
        if m:
            # older format: semantic id + bare image name
            path = None if image.startswith("$") else _resolve(files, image, name)
            info.by_semantic[int(m.group(1), 16)] = path
        else:
            # newer format: semantic label + relative path; unlabeled slots are positional
            path = os.path.normpath(os.path.join(model_dir, image))
            if not fs_exists(path):
                path = _resolve(files, os.path.splitext(os.path.basename(image))[0], name) or path
            if _is_placeholder(path):
                path = None
            info.by_name[semantic] = path
            if semantic.lower() == "albedo":
                info.albedo = path
            else:
                info.extras.append(path)
            try:
                hashed.append((int(parts[2], 16), path))
            except (IndexError, ValueError):
                pass
    # MWII-era exports put the techset slot index in the hash column (0x0, 0x4, 0x26 ...); later ones put a
    # 64-bit image hash there. Small values everywhere means slot indices.
    if hashed and all(h < 0x1000 for h, _ in hashed):
        info.by_slot = {h: p for h, p in hashed}
    return info


# --------------------------------------------------------------------------------------------
# Image helpers
# --------------------------------------------------------------------------------------------

_sample_cache = {}


def _set_colorspace(img, data):
    names = ("Non-Color", "Data", "Raw") if data else ("sRGB", "sRGB 2.1")
    for n in names:
        try:
            img.colorspace_settings.name = n
            return
        except TypeError:
            continue


def load_image(path, data, packed):
    img = bpy.data.images.load(fs_path(path), check_existing=True)
    _set_colorspace(img, data)
    img.alpha_mode = 'CHANNEL_PACKED' if packed else 'STRAIGHT'
    return img


def _sample_tga(path, size):
    """Fast path for uncompressed 24/32-bit TGA (every C2M map texture): read a size x size grid of pixels
    straight from the file instead of loading the whole image into Blender. None if not that kind of TGA."""
    with open(fs_path(path), "rb") as f:
        head = f.read(18)
    if len(head) < 18 or head[2] != 2 or head[1] != 0:
        return None
    w, h = int.from_bytes(head[12:14], "little"), int.from_bytes(head[14:16], "little")
    bpp = head[16]
    if bpp not in (24, 32) or w == 0 or h == 0:
        return None
    ch = bpp // 8
    data = np.memmap(path, dtype=np.uint8, mode="r", offset=18 + head[0], shape=(h, w, ch))
    rows = np.linspace(0, h - 1, min(size, h)).astype(np.int64)
    cols = np.linspace(0, w - 1, min(size, w)).astype(np.int64)
    px = np.asarray(data[rows][:, cols], dtype=np.float32).reshape(-1, ch) / 255.0
    rgba = np.ones((len(px), 4), np.float32)
    rgba[:, :3] = px[:, 2::-1] if ch == 3 else px[:, [2, 1, 0]]      # stored BGR(A)
    if ch == 4:
        rgba[:, 3] = px[:, 3]
    return rgba, (w, h)


def _sample(path, size=64):
    """(RGBA float sample of an image file with raw values, original (w, h)), cached per path."""
    if path in _sample_cache:
        return _sample_cache[path]
    result = (None, (0, 0))
    if path and path.lower().endswith(".tga"):
        try:
            fast = _sample_tga(path, size)
        except Exception:
            fast = None
        if fast is not None:
            _sample_cache[path] = fast
            return fast
    try:
        tmp = bpy.data.images.load(fs_path(path), check_existing=False)
        try:
            _set_colorspace(tmp, True)
            tmp.alpha_mode = 'CHANNEL_PACKED'
            dims = tuple(tmp.size)
            tmp.scale(size, size)
            buf = np.empty(size * size * 4, dtype=np.float32)
            tmp.pixels.foreach_get(buf)
            result = (buf.reshape(-1, 4), dims)
        finally:
            bpy.data.images.remove(tmp)
    except Exception:
        pass
    _sample_cache[path] = result
    return result


def sample_rgba(path):
    return _sample(path)[0]


def is_constant_white(path):
    """Placeholder opacity maps (e.g. a 4x4 white image) mean fully opaque."""
    px = sample_rgba(path)
    return px is not None and float(px[:, :3].min()) > 0.99


def is_lut(path):
    """Skin scattering LUT: a thin strip like 1024x8."""
    if _is_placeholder(path):
        return False
    w, h = _sample(path)[1]
    return h > 0 and w >= 256 and w // h >= 32


def is_greyscale(path):
    """True when an image holds the same thing in R, G and B, so its channels are not separate masks."""
    px, _size = _sample(path)
    if px is None:
        return True
    return float(abs(px[:, 0] - px[:, 1]).mean() + abs(px[:, 1] - px[:, 2]).mean()) < 0.02


def is_skin_tone(path):
    if _is_placeholder(path):
        return False
    px = sample_rgba(path)
    if px is None:
        return False
    r, g, b = px[:, :3].mean(0)
    return r > 0.3 and r > g > b > 0.05 and r - b > 0.15


def mean_gloss(path, default=0.3):
    """Average gloss of a NOG map (its red channel), used to judge how shiny THIS skin is meant to be
    relative to itself. Absolute gloss is not comparable across games or even body parts."""
    if _is_placeholder(path):
        return default
    px = sample_rgba(path)
    if px is None:
        return default
    return max(float(px[:, 0].mean()), 0.05)

def is_scatter_map(path):
    """The subsurface tint map of a skin shader: red dominant, and an actual texture rather than a flat flag
    colour (gear materials keep pure red or grey constants in the same slot)."""
    if _is_placeholder(path):
        return False
    px = sample_rgba(path)
    if px is None:
        return False
    r, g, b = (float(x) for x in px[:, :3].mean(0))
    return r > 0.12 and r > g > b and r - b > 0.12


def looks_like_nog(path):
    if _is_placeholder(path):
        return False
    px = sample_rgba(path)
    if px is None:
        return False
    mean = px.mean(0)
    return mean[2] > 0.55 and abs(mean[1] - 0.5) < 0.15 and abs(mean[3] - 0.5) < 0.15


def is_packed_nog(path):
    """looks_like_nog, plus the thing that makes it certain: a NOG's green is a normal's X, so it sits
    tight around 0.5. An albedo's green varies across the texture even when its average lands there."""
    if not looks_like_nog(path):
        return False
    px = sample_rgba(path)
    return px is not None and float(px[:, 1].std()) < 0.12


def is_nog_signature(path):
    """A packed NOG whatever its gloss: normal X in green and normal Y in alpha both sit around 0.5, occlusion in
    blue is mostly bright. (The scarlet_sight body's 0x47 maps have gloss anywhere from 0.21 to 0.58.)"""
    px = sample_rgba(path)
    if px is None:
        return False
    g, b, a = (float(px[:, i].mean()) for i in (1, 2, 3))
    return abs(g - 0.5) < 0.06 and abs(a - 0.5) < 0.08 and b > 0.6


def is_tangent_normal_map(path):
    """A plain RGB tangent-space normal map: blue-dominant, red and green sitting around 0.5."""
    px = sample_rgba(path)
    if px is None:
        return False
    r, g, b = (float(px[:, i].mean()) for i in range(3))
    return b > 0.75 and abs(r - 0.5) < 0.08 and abs(g - 0.5) < 0.08


def looks_like_colour(path):
    """A plausible albedo: real image, not a placeholder, not a NOG or normal map, and not flat or near-black."""
    if _is_placeholder(path) or not fs_exists(path):
        return False
    if is_packed_nog(path) or is_tangent_normal_map(path) or is_nog_signature(path):
        return False
    px = sample_rgba(path)
    if px is None:
        return False
    rgb = px[:, :3]
    return float(rgb.max()) > 0.08 and float(rgb.std()) > 0.02


def fix_colour_slot(slots, candidates):
    """If the colour slot ended up holding a NOG, put the real colour map there.

    Returns the name of the image that was wrong, or "" when there was nothing to fix. Only a NOG in the
    colour slot triggers this - that is never right, whatever the export's layout - and the replacement has
    to actually look like an albedo, so a material with no colour map simply keeps none.
    """
    cs = slots.get("cs")
    if not cs or not is_packed_nog(cs):
        return ""
    if not slots.get("nog"):
        slots["nog"] = cs                      # it was the NOG all along, just in the wrong slot
    better = next((p for p in candidates
                   if p and p != cs and looks_like_colour(p)), None)
    slots["cs"] = better
    return os.path.basename(cs)


def looks_like_tearfilm(slots):
    """A pure specular shell: black colour, full gloss. The eye's tear film and wet line are built this
    way - they contribute no colour of their own, only a highlight - and an export that hashes its
    material names gives the classifier nothing else to go on."""
    cs, nog = slots.get("cs"), slots.get("nog")
    if not cs or not nog:
        return False
    px = sample_rgba(cs)
    if px is None or float(px[:, :3].max()) > 0.02:       # anything with colour in it is not a film
        return False
    gloss = sample_rgba(nog)
    return gloss is not None and float(gloss[:, 0].mean()) > 0.90


def emissive_gain(path, target=1.0, limit=25.0):
    """How much to scale an emissive map so its brightest pixel reaches full brightness. The game's maps are
    stored dim (the BO7 watch screen peaks at 0.43 sRGB, i.e. 0.16 linear) and the engine scales them up."""
    px = sample_rgba(path)
    if px is None:
        return 1.0
    peak = float(px[:, :3].max()) ** 2.2          # sample_rgba reads raw values; emissive maps are sRGB
    if peak < 1e-4:
        return 1.0
    return float(min(max(target / peak, 1.0), limit))


def alpha_is_metal_mask(path):
    """A real metalness mask is bimodal: insulator values <= ~0.1 and metal near 1.0.
    Constant alpha (unused, BO7 stores 1.0) or mostly mid-range values (other techset data,
    e.g. leather sleeves around 0.77) are not metal."""
    px = sample_rgba(path)
    if px is None:
        return False
    a = px[:, 3]
    if float(a.std()) < 0.01:
        return False
    mid = float(((a > 0.12) & (a < 0.88)).mean())
    return mid < 0.3


# --------------------------------------------------------------------------------------------
# Slot resolution
# --------------------------------------------------------------------------------------------

WEAPON_NAME = re.compile(r"(^|_)(wpn|att|weapon)_|_(vm|wm)_|(^|_)(gun|rifle|pistol)(_|$)")
# "_vm_" means viewmodel, and a character wears their watch on the viewmodel arms
WEAPON_NOT = re.compile(r"watch|wristwear|bracelet|glove")


# --------------------------------------------------------------------------------------------
# Asset names: reading the game's hashes back through a name table
# --------------------------------------------------------------------------------------------

HASH_MASK63 = 0x7FFFFFFFFFFFFFFF
HASHED_ASSET = re.compile(r"^(?:material|image|techset|xmodel|model)_([0-9a-f]{6,16})$")
# only the tables that can name something a shader cares about; the folder also holds sound and
# animation tables many times this size
HASH_TABLES = ("fnv1a_xmaterials.csv", "fnv1a_xmaterials_v2.csv", "fnv1a_ximages.csv",
               "fnv1a_ximages_v2.csv", "cod_techsets.csv", "fnv1a_xmodels.csv")
HASH_DB_GUESSES = ("~/hash-slinging-slasher/cod-name-db/csv", "~/cod-name-db/csv",
                   "~/Documents/hash-slinging-slasher/cod-name-db/csv")
_hash_names = {}            # asset id -> name, or None for one that has been looked for and missed


def hash_db_folder(settings):
    """Where the hash -> name tables are: whatever the panel says, else the usual place to clone them."""
    folder = bpy.path.abspath(getattr(settings, "hash_names_folder", "") or "")
    if folder and os.path.isdir(folder):
        return folder
    for guess in HASH_DB_GUESSES:
        guess = os.path.expanduser(guess)
        if os.path.isdir(guess):
            return guess
    return ""


def asset_id(name):
    """The id in a hashed asset name, or None if the name is a real one."""
    hit = HASHED_ASSET.match(os.path.basename(str(name)).strip().lower())
    return int(hit.group(1), 16) & HASH_MASK63 if hit else None


def resolve_asset_ids(ids, folder):
    """{id: name} for the ids the tables know. The tables total a few hundred megabytes, so they are
    streamed against the handful of ids actually being asked about and never held in memory; what is
    held is the answer, including the misses, so a second model costs nothing."""
    wanted = {i for i in ids if i is not None and i not in _hash_names}
    if wanted and folder:
        for table in HASH_TABLES:
            path = os.path.join(folder, table)
            if not wanted or not os.path.exists(path):
                continue
            try:
                with open(path, "r", encoding="utf-8", errors="replace") as fh:
                    for line in fh:
                        comma = line.find(",")
                        if comma <= 0:
                            continue
                        try:
                            key = int(line[:comma], 16) & HASH_MASK63
                        except ValueError:
                            continue
                        if key in wanted:
                            _hash_names[key] = line[comma + 1:].strip()
                            wanted.discard(key)
                            if not wanted:
                                break
            except OSError:
                continue
        for i in wanted:
            _hash_names[i] = None
    return {i: _hash_names[i] for i in ids if i is not None and _hash_names.get(i)}


def material_asset_ids(info, mat_name):
    """Every hashed id one material could be named by: itself, its techset and all of its textures."""
    ids = {asset_id(mat_name)}
    if info is not None:
        ids.add(asset_id(info.name))
        ids.add(asset_id(info.techset))
        for path in list(info.by_semantic.values()) + list(info.by_slot.values()) + info.extras:
            if isinstance(path, str):
                ids.add(asset_id(os.path.splitext(os.path.basename(path))[0]))
    ids.discard(None)
    return ids


def asset_names(info, mat_name, folder):
    """(real material name or None, extra hints) for one material, from the tables.

    A resolved name is worth more than a texture name: it is what the material IS. The textures are
    resolved as well and handed on as hints, which is where 'base_eye_infrared' or 'hair_s' does its
    work in classify(). Ask for every material's ids in one go before calling this - a lookup that
    misses costs a pass over a few hundred megabytes, and one pass for a whole model is the point."""
    ids = material_asset_ids(info, mat_name)
    resolved = resolve_asset_ids(ids, folder)
    if not resolved:
        return None, []
    name = resolved.get(asset_id(mat_name)) or (resolved.get(asset_id(info.name)) if info else None)
    hints = [v for k, v in resolved.items() if k != asset_id(mat_name)]
    return name, hints


def cw_slots(info):
    """Cold War's named slots, or None when this material is not one. Roles are its own (colour, normal,
    roughness, ao, spec, detail*) - it keeps apart what MWII and BO7 pack together."""
    named = info.by_name
    # Cold War is recognised by naming its slots at all. Demanding particular ones threw away the eyes,
    # which carry no roughness map, and every metal whose colorMap is the $black_color placeholder.
    if not named or not any(label in named for label in CW_ROLES.values()):
        return None
    out = {role: named.get(label) for role, label in CW_ROLES.items()}
    out = {k: (None if _is_placeholder(v) or not fs_exists(v) else v) for k, v in out.items()}
    # a spec map that is essentially black is not a reflectance of zero, it is an unused slot; keeping it
    # would leave the surface with no specular at all (the boots ship one at F0 0.004)
    if out["spec"] is not None:
        px, _size = _sample(out["spec"])
        if px is not None and float(px[:, :3].mean()) < 0.02:
            out["spec"] = None
    # Hair cards have no alphaMap: their cut-out is the colour map's alpha. An eye's colour map also
    # carries an alpha - measured at mean 0.29 on this export - but it is not opacity, and reading it as
    # one left the eyeballs 70% see-through and black. Eyes are named, so ask the name.
    name = (info.name or "").lower()
    an_eye = re.search(r"(^|_)eyes?($|_)", name) and not re.search(r"lash|brow", name)
    if out["alpha"] is None and not an_eye and _cuts_alpha(out["color"]):
        out["alpha"] = out["color"]
        out["alpha_in_color"] = True
    return out


def _cuts_alpha(path):
    """True when an image's alpha actually cuts something out, rather than being a flat opaque channel."""
    if not path or _is_placeholder(path) or not fs_exists(path):
        return False
    px, _size = _sample(path)
    if px is None or px.shape[1] < 4:
        return False
    a = px[:, 3]
    return float(a.min()) < 0.5 and float(a.std()) > 0.05


def resolve_slots(info):
    """Returns dict role -> image path for cs / nog / emissive / opacity / params, plus skin markers."""
    markers = []
    sem = info.by_semantic
    cw = cw_slots(info)
    if cw is not None:
        # keep cs / opacity filled as well: the classifier reads them to tell skin and hair from gear
        slots = {role: None for role in SLOT_ROLES}
        slots["cs"] = cw["color"]
        slots["opacity"] = cw["alpha"]
        slots.update({"cw_" + k: v for k, v in cw.items()})
        slots["cw"] = True
        slots["skin_marker"] = cw["thickness"] is not None
        slots["model"] = os.path.basename(info.model_dir or "")
        return slots
    if sem and (SEM_CS in sem or SEM_NOG in sem):
        # BO7 / BO6 / MW4 numbering (0x47 CS, 0x48 NOG, ...)
        shift = 0
        at47, at46 = sem.get(SEM_CS), sem.get(SEM_CS - 1)
        if (at47 and not _is_placeholder(at47) and fs_exists(at47) and (is_packed_nog(at47) or is_tangent_normal_map(at47) or is_nog_signature(at47))
                and at46 and not _is_placeholder(at46) and fs_exists(at46)
                and not (is_packed_nog(at46) or is_tangent_normal_map(at46) or is_nog_signature(at46))):
            shift = -1      # layered-material layout: colour 0x46, NOG 0x47, everything one slot down
        slots = {role: sem.get(BO7_SLOTS[role] + shift) if role in BO7_SLOTS else None for role in SLOT_ROLES}
        markers = [sem.get(s) for s in SEM_SKIN_MARKERS]
    elif sem or info.by_slot:
        # MWII-era numbering, in either export format (unk_semantic_0 ... or a slot-index hash column).
        # Verified from MWII's unhashed names: '_c&_s' 0x0, '_n&_o&_g' 0x4, '_e' 0x8, '_alpha' 0xC, scatter 0x26
        mapping = sem or info.by_slot
        mw19 = mapping.get(MW19_SLOTS["nog"]) is not None and mapping.get(MW2_SLOTS["nog"]) is None
        table = MW19_SLOTS if mw19 else MW2_SLOTS
        slots = {role: mapping.get(table[role]) if role in table else None for role in SLOT_ROLES}
        slots["cs"] = slots["cs"] or info.albedo
        if mw19:
            slots["scatter_mask"] = mapping.get(MW19_SCATTER_MASK)
            slots["translucency"] = mapping.get(MW19_TRANSLUCENCY)
        # MW19's slot is certain; lash NOGs fail the look test anyway (no gloss, black occlusion)
        if not (mw19 and slots["nog"]) and not looks_like_nog(slots["nog"]):
            slots["nog"] = next((p for p in list(mapping.values()) + info.extras if looks_like_nog(p)), None)
        markers = [p for p in mapping.values() if p and is_lut(p)][:1]
    else:
        slots = {"cs": info.albedo, "nog": None, "emissive": None, "opacity": None, "strand": None, "params": None}
        extras = info.extras
        for idx in NOG_POSITIONS:
            if idx < len(extras) and looks_like_nog(extras[idx]):
                slots["nog"] = extras[idx]
                for role, offset in (("emissive", SEM_EMISSIVE), ("opacity", SEM_OPACITY),
                                     ("strand", SEM_STRAND), ("params", SEM_PARAMS)):
                    j = idx + offset - SEM_NOG
                    if j < len(extras):
                        slots[role] = extras[j]
                # skin LUT / wrinkle maps sit before or after the core slots; look for the LUT strip
                markers = [p for p in extras if is_lut(p)][:1]
                break
        else:
            # unknown layout: still find the normal map by its pixel signature
            slots["nog"] = next((p for p in extras if looks_like_nog(p)), None)
    slots = {k: (None if _is_placeholder(v) or not fs_exists(v) else v) for k, v in slots.items()}
    slots["cw"] = False
    # Guard against a NOG landing in the colour slot - seen on exports whose _mat_info numbering the
    # branches above read differently from how it was written. Every image this material mentions is a
    # candidate for the real colour map.
    pool = list((sem or info.by_slot or {}).values()) + list(info.extras) + [info.albedo]
    slots["cs_was_nog"] = fix_colour_slot(slots, pool)
    # wrinkle atlases (2x2 expression maps) on faces: told apart by their four look-alike quadrants
    slots["wrinkles"] = (None, None)
    if re.search(r"head|face", (os.path.basename(info.model_dir or "") + " " + info.name).lower()):
        sem_maps = (sem or {}) if isinstance(sem, dict) else {}
        named = (sem_maps.get(WRINKLE_NOG_SLOT), sem_maps.get(WRINKLE_COLOR_SLOT))
        if named[0] and is_wrinkle_atlas(named[0]):
            slots["wrinkles"] = (named[0], named[1] if named[1] and is_wrinkle_atlas(named[1]) else None)
        else:
            slots["wrinkles"] = find_wrinkle_maps([p for p in pool if p not in (slots.get("cs"), slots.get("nog"))])
    slots["game"] = detect_game(info.model_dir, info.name, *info.image_names[:8], info.model_dir and
                                os.path.dirname(os.path.dirname(info.model_dir)))
    slots["skin_marker"] = any(m and not _is_placeholder(m) for m in markers)
    slots["model"] = os.path.basename(info.model_dir or "")
    if WEAPON_NAME.search(slots["model"].lower()):
        # only on a gun: the same slot numbers carry other things on a character, and resolving them means
        # opening every one of those images to see whether it holds a mask at all
        slots.update(weapon_slots(sem or info.by_slot, SEM_CS in sem or SEM_NOG in sem))
    return slots


def weapon_slots(mapping, bo7_numbering):
    """The camo and damage masks of a weapon material: {'camo': path|None, 'damage': path|None,
    'damage_kind': 'DETAIL' (per-texel scratches) or 'REGION' (whole parts)}."""
    out = {"camo": None, "damage": None, "damage_kind": "", "aniso": None, "layer2": None,
           "layer2_normal": None, "layer2_color": None, "tint_mask": None}
    if not mapping:
        return out
    if not bo7_numbering:
        # only MWII is proven to put these here; MW4's beta ships nothing with the same signature, and a
        # guess would put brushed streaks on the wrong surfaces
        out["aniso"] = mapping.get(MW2_ANISO_SLOT) if _is_mask(mapping.get(MW2_ANISO_SLOT)) else None
        out["layer2"] = mapping.get(MW2_LAYER2_MASK) if _is_mask(mapping.get(MW2_LAYER2_MASK)) else None
        out["layer2_normal"] = mapping.get(MW2_LAYER2_NORMAL) \
            if _is_mask(mapping.get(MW2_LAYER2_NORMAL)) else None
        out["layer2_color"] = mapping.get(MW2_LAYER2_COLOR) \
            if _is_mask(mapping.get(MW2_LAYER2_COLOR)) else None
        out["tint_mask"] = mapping.get(MW2_TINT_MASK) if _is_mask(mapping.get(MW2_TINT_MASK)) else None
    camo = MW4_CAMO_SLOTS if bo7_numbering else (MW2_CAMO_SLOT,)
    out["camo"] = next((p for p in (mapping.get(s) for s in camo) if _is_mask(p)), None)
    first = mapping.get(camo[0])
    if out["camo"] is None and isinstance(first, str) and not _is_placeholder(first) and fs_exists(first):
        # a 4x4 stand-in is a constant mask: BO7's magazine ships one all black, i.e. "no camo on this part"
        px, size = _sample(first)
        if px is not None and min(size) < 64:
            out["camo_const"] = float(px[:, 0].mean())
    damage = mapping.get(MW4_DAMAGE_SLOT if bo7_numbering else MW2_DAMAGE_SLOT)
    if _is_mask(damage):
        out["damage"] = damage
        out["damage_kind"] = 'DETAIL' if bo7_numbering else 'REGION'
    return out


def _is_mask(path):
    """A usable mask: a real image with something in it. Weapons carry a lot of 4x4 stand-ins."""
    if not isinstance(path, str) or _is_placeholder(path) or not fs_exists(path):
        return False
    px, size = _sample(path)
    return px is not None and min(size) >= 64 and float(px[:, :3].std()) > 0.02


def classify(mat_name, slots, hints=()):
    """'EYE', 'TEARFILM', 'SKIN', 'HAIR' or 'DEFAULT'. Only DEFAULT reads CS alpha as metalness.
    MW4 (2026) exports hash every material name (material_381463ac...), but the textures often keep the asset's
    real name - an eye's infrared map is still called base_eye_infrared - so those are read as well."""
    by_name = _classify_name(mat_name, slots)
    if by_name is not None:
        return by_name
    for hint in hints:
        by_hint = _classify_name(hint, slots)
        # A texture name may only assert what a material IS. It must not veto: this body's neck shares a
        # colour map merged with a strand texture called 'hair_s', which used to end the search at DEFAULT
        # and left bare skin on the generic path.
        if by_hint is not None and by_hint != 'DEFAULT':
            return by_hint
    # a hashed-name export (MW4 names every material material_<hash>) tells the name-based rules nothing,
    # so the tear film has to be recognised by its make-up instead. Not on a weapon though: a black,
    # fully glossy gun part has the same signature, and letting it through moved two BO7 weapon materials
    # off the weapon-finish path.
    if not WEAPON_NAME.search((slots.get("model") or "").lower()) and looks_like_tearfilm(slots):
        return 'TEARFILM'
    if slots["skin_marker"]:
        return 'HAIR' if slots["opacity"] else 'SKIN'
    if looks_like_lashes(slots):
        return 'HAIR'                                  # MW4's hashed eyelashes: strand cards with no skin marker
    if not slots["opacity"] and is_skin_tone(slots["params"]):
        return 'SKIN'
    # MW4 faces and bare wrists carry no skin LUT, so read the shader's own maps: a skin-toned colour map
    # together with a red subsurface tint map is skin and nothing else (checked against every export here)
    if not slots["opacity"] and is_skin_tone(slots["cs"]) and is_scatter_map(slots["params"]):
        return 'SKIN'
    # MWII / MWIII bodies: no LUT and no scatter map, but the skin parts share IW's base body and hero head
    # textures (base_female_arm_l_n, base_female_torso_n, head_hero_valeria_n ...)
    if not slots["opacity"] and is_skin_tone(slots["cs"]) and any(
            re.search(SKIN_TEXTURE_RE, os.path.basename(h).lower()) for h in hints if h):
        return 'SKIN'
    # Bare skin that carries none of the markers above: MWII writes a plain techset for a hip or a neck, so
    # the only evidence left is a skin-toned colour map on something named after a body part. Without this
    # those parts took the generic path - gloss 0.89 off their own map became roughness 0.07, wet plastic.
    if not slots["opacity"] and is_skin_tone(slots["cs"]) and names_a_body_part(mat_name, hints):
        return 'SKIN'
    return 'DEFAULT'


BODY_PART = re.compile(r"(^|_)(torso|body|chest|belly|abs|arm|arms|forearm|leg|legs|thigh|calf|hand|hands"
                       r"|neck|head|face|cheek|ear|ears|foot|feet|skin)(_|$)")
WORN = re.compile(r"armor|armour|gear|plate|pouch|ammo|bullet|buckle|strap|vest|glove|boot|helmet|mask|jewel"
                  r"|rosary|watch|wpn|weapon|mag|holster|patch|band|suit|shirt|pants|jacket|sleeve|cloth"
                  r"|hair|beard|cap|hood|goggle|scope|lens")


def looks_like_lashes(slots):
    """Eyelash cards under a hashed name (MW4): on a head model, a cut-out map of thin curved strands on black
    (2-35% covered) over a dark colour map. Hair and beard cards carry the skin marker; lashes do not."""
    if "head" not in (slots.get("model") or "").lower():
        return False
    op = slots.get("opacity")
    if not op or _is_placeholder(op) or not fs_exists(op):
        return False
    px, size = _sample(op)
    if px is None or min(size) < 32:
        return False
    n = int(round(math.sqrt(len(px))))
    if n * n != len(px):
        return False
    bright = px[:, :3].max(axis=1).reshape(n, n) > 0.5
    cover = float(bright.mean())
    if not 0.02 < cover < 0.35:
        return False
    # strands, not a blob: nearly every lit texel of a thin strand has an unlit one beside it
    edge = bright & (~np.roll(bright, 1, axis=1) | ~np.roll(bright, -1, axis=1))
    if float(edge.sum()) / max(float(bright.sum()), 1.0) < 0.6:
        return False
    cs = slots.get("cs")
    col = _sample(cs)[0] if cs and not _is_placeholder(cs) and fs_exists(cs) else None
    return col is None or float(col[:, :3].mean()) < 0.3


def names_a_body_part(mat_name, hints=()):
    """True when the material or one of its textures is named after bare anatomy rather than something worn.
    'mp_anime_torso_lower' and 'zombie_toxic_legs' are skin; 'shoulder_armor' and 'ammo_9x19' are not."""
    for name in [re.sub(r"\.\d{3}$", "", mat_name).split("/")[-1]] + list(hints):
        name = name.lower()
        if BODY_PART.search(name) and not WORN.search(name):
            return True
    return False


# What a part is made of, from its name, and the roughness shift that goes with it. CoD's colour maps are
# authored bright and even, so a polymer handguard and a steel barrel come out of the decode at nearly the
# same roughness; in the hand they do not look remotely alike.
WEAPON_PARTS = (
    ('RUBBER', re.compile(r"rubber|buttpad|butt_pad|recoil_pad|cheek|grip_tape|sling|strap|boot"), 0.22),
    ('POLYMER', re.compile(r"grip|stock|guard|hguard|handguard|foregrip|mag(_|azine|$)|polymer|plastic"
                           r"|pgrip|furniture|shroud|cover"), 0.10),
    ('METAL', re.compile(r"barrel|(^|_)bar(_|$)|receiver|(^|_)rec(_|$)|bolt|muzzle|(^|_)muz(_|$)|comp(_|$)"
                         r"|brake|supp?ressor|trigger|rail|slide|(^|_)pin(_|$)|screw|hammer|sight|mount"), -0.04),
)


def is_weapon_material(mat_name, slots, hints=()):
    """True for a gun part. The model it came from decides, and failing that its own name - a holstered
    pistol on a body is a gun too, and gets the wear a gun gets. What is NOT evidence is the camo and damage
    slots: BO7 runs its character clothing through the same two, so trusting them put battle damage on 122
    shirts and vests across the exports here."""
    names = [slots.get("model", ""), re.sub(r"\.\d{3}$", "", mat_name).split("/")[-1]] + \
        [os.path.basename(h) for h in hints if h]
    names = [n.lower() for n in names if n]
    return any(WEAPON_NAME.search(n) for n in names) and not any(WEAPON_NOT.search(n) for n in names)


def weapon_part(mat_name, hints=()):
    """('METAL' | 'POLYMER' | 'RUBBER' | '', roughness shift) for a weapon part, read off its name."""
    names = [re.sub(r"\.\d{3}$", "", mat_name).split("/")[-1].lower()] +         [os.path.basename(h).lower() for h in hints if h]
    for material, pattern, bias in WEAPON_PARTS:
        if any(pattern.search(n) for n in names):
            return material, bias
    return "", 0.0


def _classify_name(mat_name, slots):
    """The kind a name implies, or None when the name says nothing."""
    name = re.sub(r"\.\d{3}$", "", mat_name).lower()
    if "lacrimal" in name or "wetness" in name:      # BO7 lacrimal fluid, MWII eye_wetness
        return 'TEARFILM'
    if re.search(r"(^|_)eyes?($|_)", name) and not re.search(r"lash|brow", name):
        return 'EYE'
    # named hair first: MWII hair techsets carry no skin LUT, and solid hair meshes (braids) do carry one
    if re.search(r"hair|braid|beard|mustache|moustache|stubble|goatee|brow|lash", name):
        return 'HAIR' if slots["opacity"] else 'DEFAULT'
    return None


# --------------------------------------------------------------------------------------------
# Decode node group
# --------------------------------------------------------------------------------------------

class _Builder:
    def __init__(self, tree):
        self.tree = tree
        self.nodes = tree.nodes
        self.links = tree.links

    def _feed(self, sock, value):
        if value is None:
            return
        if isinstance(value, bpy.types.NodeSocket):
            self.links.new(value, sock)
        else:
            sock.default_value = value

    def math(self, op, a, b=None, c=None, clamp=False, loc=(0, 0)):
        n = self.nodes.new("ShaderNodeMath")
        n.operation = op
        n.use_clamp = clamp
        n.location = loc
        for i, v in enumerate((a, b, c)):
            self._feed(n.inputs[i], v)
        return n.outputs[0]

    def vmath(self, op, a, b=None, c=None, scale=None, loc=(0, 0)):
        n = self.nodes.new("ShaderNodeVectorMath")
        n.operation = op
        n.location = loc
        for i, v in enumerate((a, b, c)):
            self._feed(n.inputs[i], v)
        if scale is not None:
            self._feed(n.inputs[3], scale)
        return n.outputs[0]


def _socket(iface, name, in_out, stype, default=None, lo=None, hi=None, desc="", parent=None):
    s = iface.new_socket(name=name, in_out=in_out, socket_type=stype, description=desc, parent=parent)
    if default is not None and hasattr(s, "default_value"):
        s.default_value = default
    if lo is not None and hasattr(s, "min_value"):
        s.min_value = lo
    if hi is not None and hasattr(s, "max_value"):
        s.max_value = hi
    return s


def get_decode_group():
    # versioned name: materials built by an older version keep their own group until reshaded
    name = "%s v%d" % (GROUP_NAME, GROUP_VERSION)
    ng = bpy.data.node_groups.get(name)
    if ng is not None and ng.get("cod_version") == GROUP_VERSION:
        return ng
    ng = bpy.data.node_groups.new(name, "ShaderNodeTree")
    ng["cod_version"] = GROUP_VERSION

    iface = ng.interface
    I, O = "INPUT", "OUTPUT"
    # outputs first: sockets must come before panels at the same level
    for name, stype in (("Base Color", "NodeSocketColor"), ("Metallic", "NodeSocketFloat"),
                        ("Roughness", "NodeSocketFloat"), ("IOR", "NodeSocketFloat"), ("Normal", "NodeSocketVector"),
                        ("Alpha", "NodeSocketFloat"), ("Emission Color", "NodeSocketColor"),
                        ("Emission Strength", "NodeSocketFloat"), ("Specular Level", "NodeSocketFloat"),
                        ("Diffuse Roughness", "NodeSocketFloat")):
        _socket(iface, name, O, stype)

    maps = iface.new_panel("Maps", description="texture maps from the Saluki export")
    _socket(iface, "CS Color", I, "NodeSocketColor", (0.5, 0.5, 0.5, 1.0), desc="packed CS RGB (sRGB image)", parent=maps)
    _socket(iface, "CS Alpha", I, "NodeSocketFloat", 0.0, 0.0, 1.0, "packed CS alpha: metalness mask", parent=maps)
    _socket(iface, "NOG Color", I, "NodeSocketColor", (0.0, 0.5, 1.0, 1.0), desc="packed NOG RGB (Non-Color)", parent=maps)
    _socket(iface, "NOG Alpha", I, "NodeSocketFloat", 0.5, 0.0, 1.0, "packed NOG alpha: normal Y", parent=maps)
    _socket(iface, "Opacity", I, "NodeSocketFloat", 1.0, 0.0, 1.0, parent=maps)
    _socket(iface, "Emissive", I, "NodeSocketColor", (0.0, 0.0, 0.0, 1.0), parent=maps)

    adjust = iface.new_panel("Adjust", description="safe to tweak")
    _socket(iface, "Normal Strength", I, "NodeSocketFloat", 1.0, 0.0, 4.0, "bumpiness of the normal map", parent=adjust)
    _socket(iface, "AO Strength", I, "NodeSocketFloat", 1.0, 0.0, 1.0, "baked ambient occlusion darkening", parent=adjust)
    _socket(iface, "AO Bounce", I, "NodeSocketFloat", 1.0, 0.0, 1.0,
            "1 = CoD WWII's interreflection AO (light bounces in a crevice off the surface's own colour), "
            "0 = plain darkening", parent=adjust)
    _socket(iface, "Specular Occlusion", I, "NodeSocketFloat", 1.0, 0.0, 1.0,
            "crevices lose their reflections as well as their light (Activision GTAO / WWII)", parent=adjust)
    _socket(iface, "Rough Diffuse", I, "NodeSocketFloat", 1.0, 0.0, 1.0,
            "rough surfaces scatter like rough ones (CoD WWII multiscattering diffuse); 0 = plain Lambert",
            parent=adjust)
    _socket(iface, "Roughness Min", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "raise to make the surface less shiny (roughness = min + (max - min) * r)", parent=adjust)
    _socket(iface, "Roughness Max", I, "NodeSocketFloat", 1.0, 0.0, 1.0, "lower to make rough areas shinier", parent=adjust)
    _socket(iface, "Emission Strength", I, "NodeSocketFloat", 1.0, 0.0, 100.0, "glow of emissive parts", parent=adjust)
    _socket(iface, "Emission Color", I, "NodeSocketColor", (1.0, 1.0, 1.0, 1.0),
            desc="tints the glow; white keeps the colour the game's emissive map has", parent=adjust)

    adv = iface.new_panel("Advanced (CoD decode)", description="how the game textures are decoded", default_closed=True)
    _socket(iface, "Metal Mask", I, "NodeSocketFloat", 1.0, 0.0, 1.0,
            "1 = CS alpha is an IW metalness mask, 0 = alpha unused (plain dielectric)", parent=adv)
    _socket(iface, "Insulator Range", I, "NodeSocketFloat", 0.1, 0.0, 0.5,
            "IW INSULATOR_SPEC_RANGE: alpha below this is dielectric F0, above is metal", parent=adv)
    _socket(iface, "Dielectric F0", I, "NodeSocketFloat", 0.04, 0.0, 0.2, "F0 used when the metal mask is unused", parent=adv)
    _socket(iface, "F0 Floor", I, "NodeSocketFloat", 0.02, 0.0, 0.2, "minimum dielectric reflectance", parent=adv)
    _socket(iface, "Emission Gain", I, "NodeSocketFloat", 1.0, 0.0, 100.0,
            "measured from the emissive map: lifts its brightest pixel to full brightness", parent=adv)
    _socket(iface, "CoD Gloss Curve", I, "NodeSocketFloat", 1.0, 0.0, 1.0,
            "0 = roughness = 1 - gloss, 1 = CoD gloss curve", parent=adv)
    _socket(iface, "Gloss Exponent", I, "NodeSocketFloat", 18.0, 1.0, 24.0,
            "alpha = sqrt(2 / (bias + 2^(exponent * gloss))); WWII = 18, Advanced Warfare = 16", parent=adv)
    _socket(iface, "Gloss Bias", I, "NodeSocketFloat", 1.0, 0.0, 4.0, "WWII = 1, Advanced Warfare = 2", parent=adv)
    _socket(iface, "Gloss Sqrt Remap", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "1 = gloss becomes 1 - sqrt(1 - gloss) before the curve (MW 2019)", parent=adv)

    extra = iface.new_panel("Extra Outputs", default_closed=True)
    _socket(iface, "Occlusion", O, "NodeSocketFloat", parent=extra)
    _socket(iface, "Gloss", O, "NodeSocketFloat", parent=extra)
    _socket(iface, "Normal Color", O, "NodeSocketColor", parent=extra)       # tangent-space map, for other shaders

    b = _Builder(ng)
    gi = ng.nodes.new("NodeGroupInput")
    gi.location = (-1400, 0)
    go = ng.nodes.new("NodeGroupOutput")
    go.location = (900, 0)
    inp = gi.outputs

    sep = ng.nodes.new("ShaderNodeSeparateColor")
    sep.location = (-1150, -300)
    ng.links.new(inp["NOG Color"], sep.inputs[0])
    gloss, nog_x, occl = sep.outputs[0], sep.outputs[1], sep.outputs[2]
    nog_y = inp["NOG Alpha"]

    # --- metalness / F0 (IW DeriveAlbedoAndSpec, slide 111-112)
    a = inp["CS Alpha"]
    rng = inp["Insulator Range"]
    m = b.math("DIVIDE", b.math("SUBTRACT", a, rng, loc=(-1000, 400)),
               b.math("SUBTRACT", 1.0, rng, loc=(-1000, 300)), clamp=True, loc=(-850, 400))
    metallic = b.math("MULTIPLY", m, inp["Metal Mask"], loc=(-700, 400))
    r0_iw = b.math("MINIMUM", a, rng, loc=(-1000, 200))
    r0 = b.math("MULTIPLY_ADD", b.math("SUBTRACT", r0_iw, inp["Dielectric F0"], loc=(-850, 200)),
                inp["Metal Mask"], inp["Dielectric F0"], loc=(-700, 200))
    r0 = b.math("MAXIMUM", r0, inp["F0 Floor"], loc=(-550, 200))
    s = b.math("MINIMUM", b.math("SQRT", r0, loc=(-400, 200)), 0.95, loc=(-250, 200))
    ior = b.math("DIVIDE", b.math("ADD", 1.0, s, loc=(-100, 250)),
                 b.math("SUBTRACT", 1.0, s, loc=(-100, 150)), loc=(50, 200))

    # --- base color with occlusion: CoD WWII's interreflection model, AO' = AO / (1 - albedo (1 - AO)) per channel
    ao = b.math("MULTIPLY_ADD", b.math("SUBTRACT", occl, 1.0, loc=(-850, 0)),
                inp["AO Strength"], 1.0, loc=(-700, 0))
    albedo = b.vmath("SCALE", inp["CS Color"], scale=b.math("SUBTRACT", 1.0, metallic, loc=(-700, 650)),
                     loc=(-550, 650))
    ao_vec = b.vmath("SCALE", (1.0, 1.0, 1.0), scale=ao, loc=(-550, 50))
    bounce = b.vmath("DIVIDE", ao_vec,
                     b.vmath("SUBTRACT", (1.0, 1.0, 1.0),
                             b.vmath("SCALE", albedo, scale=b.math("SUBTRACT", 1.0, ao, loc=(-550, -50)),
                                     loc=(-400, 650)), loc=(-250, 650)), loc=(-100, 650))
    ao_rgb = b.vmath("MULTIPLY_ADD", b.vmath("SUBTRACT", bounce, ao_vec, loc=(50, 650)),
                     b.vmath("SCALE", (1.0, 1.0, 1.0), scale=inp["AO Bounce"], loc=(50, 550)), ao_vec,
                     loc=(200, 650))
    base = b.vmath("MULTIPLY", inp["CS Color"], ao_rgb, loc=(350, 550))

    # --- roughness from gloss: alpha = sqrt(2 / (bias + 2^(exp*g))), Blender roughness = sqrt(alpha)
    g_iw8 = b.math("SUBTRACT", 1.0, b.math("SQRT", b.math("SUBTRACT", 1.0, gloss, clamp=True, loc=(-1300, -150)),
                                           loc=(-1150, -150)), loc=(-1000, -150))
    g_curve = b.math("MULTIPLY_ADD", b.math("SUBTRACT", g_iw8, gloss, loc=(-1000, -100)), inp["Gloss Sqrt Remap"], gloss,
                     loc=(-900, -100))
    power = b.math("POWER", 2.0, b.math("MULTIPLY", g_curve, inp["Gloss Exponent"], loc=(-850, -150)), loc=(-700, -150))
    r_cod = b.math("POWER", b.math("DIVIDE", 2.0, b.math("ADD", power, inp["Gloss Bias"], loc=(-550, -150)),
                                   loc=(-400, -150)), 0.25, loc=(-250, -150))
    r_lin = b.math("SUBTRACT", 1.0, gloss, loc=(-400, -250))
    rough = b.math("MULTIPLY_ADD", b.math("SUBTRACT", r_cod, r_lin, loc=(-100, -200)),
                   inp["CoD Gloss Curve"], r_lin, clamp=True, loc=(50, -200))
    rough = b.math("MULTIPLY_ADD", rough,
                   b.math("SUBTRACT", inp["Roughness Max"], inp["Roughness Min"], loc=(50, -300)),
                   inp["Roughness Min"], clamp=True, loc=(200, -200))

    # --- hemi-octahedron normal, DirectX Y -> Blender (OpenGL) tangent space
    ex = b.math("MULTIPLY_ADD", nog_x, 2.0, -1.0, loc=(-850, -450))
    ey = b.math("MULTIPLY_ADD", nog_y, 2.0, -1.0, loc=(-850, -550))
    tx = b.math("MULTIPLY", b.math("ADD", ex, ey, loc=(-700, -450)), 0.5, loc=(-550, -450))
    ty = b.math("MULTIPLY", b.math("SUBTRACT", ey, ex, loc=(-700, -550)), 0.5, loc=(-550, -550))
    tz = b.math("SUBTRACT", b.math("SUBTRACT", 1.0, b.math("ABSOLUTE", tx, loc=(-400, -650)), loc=(-250, -650)),
                b.math("ABSOLUTE", ty, loc=(-400, -750)), loc=(-100, -650))
    comb = ng.nodes.new("ShaderNodeCombineXYZ")
    comb.location = (50, -500)
    ng.links.new(b.math("MULTIPLY", tx, inp["Normal Strength"], loc=(-250, -450)), comb.inputs[0])
    ng.links.new(b.math("MULTIPLY", ty, inp["Normal Strength"], loc=(-250, -550)), comb.inputs[1])
    ng.links.new(tz, comb.inputs[2])
    n = b.vmath("NORMALIZE", comb.outputs[0], loc=(200, -500))
    ncol = b.vmath("MULTIPLY_ADD", n, (0.5, 0.5, 0.5), (0.5, 0.5, 0.5), loc=(350, -500))
    nmap = ng.nodes.new("ShaderNodeNormalMap")
    nmap.space = 'TANGENT'
    nmap.location = (550, -500)
    ng.links.new(ncol, nmap.inputs["Color"])

    # --- specular occlusion: saturate((N.V + AO)^(2^(-16 a - 1)) - 1 + AO), a = roughness^2
    geo = ng.nodes.new("ShaderNodeNewGeometry")
    geo.location = (350, -800)
    ndv = b.math("ABSOLUTE", b.vmath("DOT_PRODUCT", nmap.outputs["Normal"], geo.outputs["Incoming"], loc=(550, -800)),
                 loc=(700, -800))
    a2 = b.math("MULTIPLY", rough, rough, loc=(550, -950))
    expo = b.math("POWER", 2.0, b.math("MULTIPLY_ADD", a2, -16.0, -1.0, loc=(700, -950)), loc=(850, -950))
    so = b.math("ADD", b.math("SUBTRACT", b.math("POWER", b.math("ADD", ndv, ao, loc=(850, -800)), expo,
                                                 loc=(1000, -850)), 1.0, loc=(1150, -850)), ao, clamp=True,
                loc=(1300, -850))
    so = b.math("MULTIPLY_ADD", b.math("SUBTRACT", so, 1.0, loc=(1450, -850)), inp["Specular Occlusion"], 1.0,
                loc=(1600, -850))
    spec_level = b.math("MULTIPLY", so, 0.5, loc=(1750, -850))          # 0.5 is Principled's neutral level
    diffuse_rough = b.math("MULTIPLY", rough, inp["Rough Diffuse"], loc=(1750, -1000))

    out = go.inputs
    ng.links.new(spec_level, out["Specular Level"])
    ng.links.new(diffuse_rough, out["Diffuse Roughness"])
    ng.links.new(base, out["Base Color"])
    ng.links.new(metallic, out["Metallic"])
    ng.links.new(rough, out["Roughness"])
    ng.links.new(ior, out["IOR"])
    ng.links.new(nmap.outputs["Normal"], out["Normal"])
    ng.links.new(inp["Opacity"], out["Alpha"])
    # CoD emissive maps are stored dim (a watch screen peaks around 0.4) and the engine scales them up, so the
    # material's own gain lifts the brightest pixel to full before the user's strength and tint
    tint = ng.nodes.new("ShaderNodeMix")
    tint.data_type = 'RGBA'
    tint.blend_type = 'MULTIPLY'
    tint.inputs[0].default_value = 1.0
    tint.location = (1500, -700)
    ng.links.new(inp["Emissive"], tint.inputs[6])
    ng.links.new(inp["Emission Color"], tint.inputs[7])
    ng.links.new(tint.outputs[2], out["Emission Color"])
    glow = b.math("MULTIPLY", inp["Emission Strength"], inp["Emission Gain"], loc=(1500, -850))
    ng.links.new(glow, out["Emission Strength"])
    ng.links.new(occl, out["Occlusion"])
    ng.links.new(gloss, out["Gloss"])
    ng.links.new(ncol, out["Normal Color"])
    return ng


# --------------------------------------------------------------------------------------------
# Material building
# --------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Weapon finish: camo paint, worn-through metal, grime
# --------------------------------------------------------------------------------------------
# This sits between the decode group and the shader on gun parts and reworks colour, metalness and roughness
# inside the game's own masks. Everything is off at zero, so a gun with the sliders down decodes exactly as
# it did before.

WEAPON_GROUP_NAME = "CoD Weapon Finish"
WEAPON_GROUP_VERSION = 5
WEAPON_NODE_NAME = "CoD Weapon"
WEAPON_BARE_METAL = (0.23, 0.225, 0.22, 1.0)    # phosphate / bluing under the paint, nowhere near chrome
WEAPON_BARE_ROUGHNESS = 0.24                    # handling polishes what it wears through
WEAPON_GRIME_COLOR = (0.34, 0.30, 0.25, 1.0)    # carbon and oil, which collect in the corners
WEAPON_GRIME_ROUGHNESS = 0.78
WEAPON_CAMO_COLOR = (0.30, 0.29, 0.22)
WEAPON_EDGE_RANGE = (0.56, 0.72)                # Cycles pointiness: 0.5 is flat, above it the mesh is convex
WEAPON_CAMO_BUMP = 0.55                         # a camo's own normal map is authored strong; this is the
                                                # difference between painted-on and carved-in
WEAPON_EDGE_SHARPNESS = 2.0                     # pointiness is a broad curvature gradient; this pulls it
                                                # back to the corners a gun actually gets knocked on


def get_weapon_group():
    name = "%s v%d" % (WEAPON_GROUP_NAME, WEAPON_GROUP_VERSION)
    ng = bpy.data.node_groups.get(name)
    if ng is not None and ng.get("cod_version") == WEAPON_GROUP_VERSION:
        return ng
    ng = bpy.data.node_groups.new(name, "ShaderNodeTree")
    ng["cod_version"] = WEAPON_GROUP_VERSION
    iface = ng.interface
    I, O = "INPUT", "OUTPUT"
    for socket_name, stype in (("Base Color", "NodeSocketColor"), ("Metallic", "NodeSocketFloat"),
                               ("Roughness", "NodeSocketFloat")):
        _socket(iface, socket_name, O, stype)

    maps = iface.new_panel("Maps", description="wired up from the decode group and the weapon's own masks")
    _socket(iface, "Base Color", I, "NodeSocketColor", (0.5, 0.5, 0.5, 1.0), parent=maps)
    _socket(iface, "Metallic", I, "NodeSocketFloat", 0.0, 0.0, 1.0, parent=maps)
    _socket(iface, "Roughness", I, "NodeSocketFloat", 0.5, 0.0, 1.0, parent=maps)
    _socket(iface, "Occlusion", I, "NodeSocketFloat", 1.0, 0.0, 1.0,
            "baked occlusion: grime settles where this is dark", parent=maps)
    _socket(iface, "Wear", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "where the paint is knocked off: the game's damage map, and the model's own edges", parent=maps)
    _socket(iface, "Camo Mask", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "the region the game paints a camo into", parent=maps)
    _socket(iface, "Camo Color", I, "NodeSocketColor", WEAPON_CAMO_COLOR + (1.0,),
            desc="the paint: a flat colour, or an image plugged in here", parent=maps)
    _socket(iface, "Camo Finish", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "1 = the camo brings its own surface (gloss, non-metal), 0 = it only recolours the part", parent=maps)
    _socket(iface, "Camo Roughness", I, "NodeSocketFloat", 0.3, 0.0, 1.0,
            "the camo's own roughness, from the gloss its export carries", parent=maps)
    _socket(iface, "Layer Color", I, "NodeSocketColor", (1.0, 1.0, 1.0, 1.0),
            desc="a blueprint's second layer: marbling that rides on top of the paint", parent=maps)
    _socket(iface, "Layer Mask", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "where that second layer sits", parent=maps)
    _socket(iface, "Tint A Mask", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "the blueprint's first painted region", parent=maps)
    _socket(iface, "Tint B Mask", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "and its second", parent=maps)

    adjust = iface.new_panel("Adjust", description="safe to tweak")
    _socket(iface, "Wear Amount", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "how far the paint is worn through to the metal", parent=adjust)
    _socket(iface, "Bare Metal", I, "NodeSocketColor", WEAPON_BARE_METAL,
            desc="colour of the metal under the paint", parent=adjust)
    _socket(iface, "Bare Roughness", I, "NodeSocketFloat", WEAPON_BARE_ROUGHNESS, 0.0, 1.0,
            "worn metal is smoother than the finish over it", parent=adjust)
    _socket(iface, "Grime", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "carbon and oil in the corners of the gun", parent=adjust)
    _socket(iface, "Grime Color", I, "NodeSocketColor", WEAPON_GRIME_COLOR, parent=adjust)
    _socket(iface, "Camo Amount", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "how strongly the camo repaints its region", parent=adjust)
    _socket(iface, "Roughness Bias", I, "NodeSocketFloat", 0.0, -0.5, 0.5,
            "shifts this part's roughness: polymer and rubber read matter than steel", parent=adjust)
    _socket(iface, "Layer Tint", I, "NodeSocketColor", (1.0, 1.0, 1.0, 1.0),
            desc="colours the blueprint's second layer; white leaves the map as it was exported", parent=adjust)
    _socket(iface, "Tint A", I, "NodeSocketColor", (1.0, 1.0, 1.0, 1.0),
            desc="paint for the blueprint's first region; white leaves it the grey it was exported as",
            parent=adjust)
    _socket(iface, "Tint B", I, "NodeSocketColor", (1.0, 1.0, 1.0, 1.0),
            desc="paint for its second region", parent=adjust)
    _socket(iface, "Layer Amount", I, "NodeSocketFloat", 1.0, 0.0, 1.0,
            "how strongly that layer shows", parent=adjust)

    b = _Builder(ng)
    gi = ng.nodes.new("NodeGroupInput")
    gi.location = (-1100, 0)
    go = ng.nodes.new("NodeGroupOutput")
    go.location = (700, 0)
    inp = gi.outputs

    def mix(fac, a, other, data='RGBA', blend='MIX', loc=(0, 0)):
        n = ng.nodes.new("ShaderNodeMix")
        n.data_type = data
        n.blend_type = blend
        n.clamp_factor = True
        n.location = loc
        a_in, b_in, out = _MIX_SOCKETS[data]
        for sock, value in ((n.inputs[0], fac), (n.inputs[a_in], a), (n.inputs[b_in], other)):
            b._feed(sock, value)
        return n.outputs[out]

    # Camo: the game sprays it over the paint, so it replaces the colour in its region rather than tinting
    # it - a tint would leave Genesis reading as dark gunmetal with a green cast. What it keeps is the part's
    # baked occlusion, which beds the paint into the corners instead of floating it over them.
    # the blueprint's own paint first: parts authored grey under a tint mask are meant to take a colour
    tinted = inp["Base Color"]
    for mask_name, tint_name, y in (("Tint A Mask", "Tint A", 900), ("Tint B Mask", "Tint B", 780)):
        tinted = mix(inp[mask_name], tinted,
                     mix(1.0, tinted, inp[tint_name], blend='MULTIPLY', loc=(-1000, y)), loc=(-860, y))

    camo = b.math("MULTIPLY", inp["Camo Mask"], inp["Camo Amount"], clamp=True, loc=(-850, 380))
    paint = mix(1.0, inp["Camo Color"], inp["Occlusion"], blend='MULTIPLY', loc=(-850, 560))
    color = mix(camo, tinted, paint, loc=(-650, 380))
    # the blueprint's own layer goes over the paint, whatever the paint turned out to be
    layer = mix(1.0, inp["Layer Color"], inp["Layer Tint"], blend='MULTIPLY', loc=(-700, 700))
    where = b.math("MULTIPLY", inp["Layer Mask"], inp["Layer Amount"], clamp=True, loc=(-700, 250))
    color = mix(where, color, mix(1.0, color, layer, blend='MULTIPLY', loc=(-520, 560)), loc=(-520, 380))

    # Worn paint: bare metal shows through, and it is metal, so it takes a specular reflection the painted
    # finish never had. That reflection is what reads as "used" at a glance, more than the colour does.
    # a camo with its own surface (Genesis is glassy) replaces the part's finish where it is painted
    coat = b.math("MULTIPLY", camo, inp["Camo Finish"], clamp=True, loc=(-850, -20))
    base_rough = mix(coat, inp["Roughness"], inp["Camo Roughness"], data='FLOAT', loc=(-600, -120))
    base_metal = mix(coat, inp["Metallic"], 0.0, data='FLOAT', loc=(-600, 40))
    wear = b.math("MULTIPLY", inp["Wear"], inp["Wear Amount"], clamp=True, loc=(-850, 120))
    color = mix(wear, color, inp["Bare Metal"], loc=(-400, 240))
    metal = b.math("MAXIMUM", base_metal, wear, loc=(-400, 40))
    rough = mix(wear, base_rough, inp["Bare Roughness"], data='FLOAT', loc=(-400, -120))

    # Grime where the baked occlusion is dark: darker, rougher, and it buries the metal it sits on
    grime = b.math("MULTIPLY", b.math("SUBTRACT", 1.0, inp["Occlusion"], loc=(-850, -340)),
                   inp["Grime"], clamp=True, loc=(-650, -340))
    dirty = mix(1.0, color, inp["Grime Color"], blend='MULTIPLY', loc=(-180, -300))
    color = mix(grime, color, dirty, loc=(60, 240))
    metal = mix(grime, metal, b.math("MULTIPLY", metal, 0.35, loc=(-180, 40)), data='FLOAT', loc=(60, 40))
    rough = mix(grime, rough, WEAPON_GRIME_ROUGHNESS, data='FLOAT', loc=(60, -120))

    rough = b.math("ADD", rough, inp["Roughness Bias"], clamp=True, loc=(320, -120))

    ng.links.new(color, go.inputs["Base Color"])
    ng.links.new(metal, go.inputs["Metallic"])
    ng.links.new(rough, go.inputs["Roughness"])
    return ng


def _weapon_wear_source(nt, slots, tex):
    """The 'Wear' signal for a gun part: (socket, helper nodes).

    The damage map says which parts of the gun may be damaged at all - MWII marks whole parts, MW4 goes down
    to the rivet - and inside that region the shape of the mesh decides: paint goes off the corners you knock
    it on first. Reading the map as wear directly does not work and was worth checking rather than assuming:
    one MW4 part (rec_03) ships an all-black map, which can only mean "nothing here ever wears".

    Edges come from Cycles' pointiness, a Cycles-only input. Under EEVEE it reads flat, so the wear simply
    stops instead of going wrong."""
    links, helpers = nt.links, []
    geo = nt.nodes.new("ShaderNodeNewGeometry")
    geo.label = "Mesh Edges"
    edge = nt.nodes.new("ShaderNodeMapRange")
    edge.label = "Convex Edges Wear First"
    edge.clamp = True
    edge.inputs["From Min"].default_value, edge.inputs["From Max"].default_value = WEAPON_EDGE_RANGE
    links.new(geo.outputs["Pointiness"], edge.inputs["Value"])
    sharp = nt.nodes.new("ShaderNodeMath")
    sharp.operation = 'POWER'
    sharp.label = "Corners, Not Curves"
    sharp.use_clamp = True
    links.new(edge.outputs["Result"], sharp.inputs[0])
    sharp.inputs[1].default_value = WEAPON_EDGE_SHARPNESS
    helpers += [geo, edge, sharp]
    wear = sharp.outputs[0]

    if slots.get("damage"):
        dmg = tex(slots["damage"], True, True, "Damage Regions")
        inside = nt.nodes.new("ShaderNodeMath")
        inside.operation = 'MULTIPLY'
        inside.label = "Only Where It Can Be Damaged"
        links.new(dmg.outputs["Color"], inside.inputs[0])
        links.new(wear, inside.inputs[1])
        helpers.append(inside)
        wear = inside.outputs[0]
    return wear, helpers


def camo_maps(folder):
    """{'color': path, 'normal': path or None} for a Saluki camo export folder, or {} if it holds no camo.

    Saluki writes one folder per camo with a .txt of semantic,image rows, the same shape as a model's
    _mat_info. The numbering is the camo techset's own, and an animated camo ships several colour layers it
    cross-fades between in game (Genesis: a green nebula, a starfield, two more), so the maps are picked by
    what the pixels are rather than by slot number: the lowest-numbered full-size colour image is the camo,
    and a map whose blue channel sits at 1.0 with red and green around 0.5 is its normal."""
    if not folder or not os.path.isdir(folder):
        return {}
    # SAT is Saluki's BO7 export prefix. This profile identifies the supplied
    # texture set, not a shader hash: the dump has no material-to-shader table.
    sat = {
        "color": "image_413b6d55e6d0dae0",
        "color2": "image_2aefe8c065af5669",
        "blend": "image_169b540b6b8adf9c",
        "stars": "image_665dcbfc70c4244c",
        "normal": "image_5161b217874352b_n",
    }
    paths = {key: os.path.join(folder, stem + ".png") for key, stem in sat.items()}
    if all(fs_exists(path) for path in paths.values()):
        paths.update(profile="SAT_MERC_05", animated=True)
        gloss, _ = _sample(os.path.join(folder, "image_5161b217874352b_g.png"))
        paths["gloss"] = float(gloss[:, 0].mean()) if gloss is not None else None
        return paths
    rows, files = [], {}
    for name in os.listdir(folder):
        path = os.path.join(folder, name)
        if name.lower().endswith(".txt"):
            for line in open(path, encoding="utf-8", errors="ignore"):
                parts = line.strip().split(",")
                if len(parts) == 2 and parts[0].startswith("unk_semantic_"):
                    rows.append((int(parts[0][len("unk_semantic_"):], 16), parts[1]))
        elif name.lower().endswith((".png", ".tga", ".dds")):
            if os.path.splitext(name)[0].lower().endswith(("_n", "_g", "_o")):
                continue  # decoded companions are not extra colour layers
            files[os.path.splitext(name)[0]] = path
    if not rows:
        rows = [(i, stem) for i, stem in enumerate(sorted(files))]

    layers, normal, blend, glosses = [], None, None, []
    for sem, stem in sorted(rows):
        path = files.get(stem)
        if not path or _is_placeholder(path):
            continue
        px, size = _sample(path)
        if px is None:
            continue
        mean = [float(px[:, i].mean()) for i in range(px.shape[1])]
        if min(size) < 256:
            # 1x1 packed NOGs (normal flat at 0.5, occlusion 1): the layers' gloss, carried as a constant
            if len(mean) == 4 and abs(mean[1] - 0.5) < 0.05 and abs(mean[3] - 0.5) < 0.05 and mean[2] > 0.95:
                glosses.append(mean[0])
            continue
        if is_tangent_normal_map(path):
            normal = normal or path          # a plain tangent normal; Genesis' packed crackle NOG is not one
        elif is_packed_nog(path) or is_nog_signature(path):
            continue
        elif not is_greyscale(path):
            layers.append(path)
        elif (blend is None and float(px[:, 3].std()) < 0.02 and 0.08 < float(px[:, 0].std())
              and float(((px[:, 0] > 0.1) & (px[:, 0] < 0.9)).mean()) > 0.5):
            # a soft greyscale field (smoke), not a hard mask (cracks, stars) nor a height map with its own
            # alpha (Genesis' cracked plates)
            blend = path
    if not layers:
        return {}
    return {"color": layers[0], "color2": layers[1] if len(layers) > 1 else None, "blend": blend,
            "normal": normal, "gloss": glosses[0] if glosses else None,
            "animated": "_anim_" in os.path.basename(os.path.normpath(folder)).lower()}


def _camo_animation_update(self, context):
    self.id_data.update_tag()
    # PropertyGroup edits do not always invalidate material drivers in Blender.
    # Tag only our animated materials, so controls respond without a reshade.
    for mat in bpy.data.materials:
        if mat.node_tree and mat.node_tree.nodes.get("CoD Camo Time"):
            mat.node_tree.update_tag()


def _camo_time(nt, settings):
    """Scene-owned seconds: scrubbing, rendering and saved files use the same clock."""
    node = nt.nodes.new("ShaderNodeValue")
    node.name = "CoD Camo Time"
    node.label = "Camo Time (seconds)"
    driver = node.outputs[0].driver_add("default_value").driver
    driver.type = 'SCRIPTED'
    scene = settings.id_data
    for name, path in (
            ("fps", "render.fps"), ("base", "render.fps_base"), ("start", "frame_start"),
            ("speed", "cod_autoshader.weapon_camo_speed"),
            ("enabled", "cod_autoshader.weapon_camo_animate"),
            ("phase", "cod_autoshader.weapon_camo_phase")):
        var = driver.variables.new()
        var.name, var.type = name, 'SINGLE_PROP'
        var.targets[0].id_type = 'SCENE'
        var.targets[0].id = scene
        var.targets[0].data_path = path
    driver.expression = "((frame-start)*base/max(fps,1)*speed+phase)*enabled"
    return node


def _camo_motion(nt, vector, clock, velocity, label):
    """Scroll colour layers independently; the gun mask and surface normal stay fixed."""
    offset = nt.nodes.new("ShaderNodeVectorMath")
    offset.operation = 'SCALE'
    offset.label = label + " Velocity"
    offset.inputs[0].default_value = velocity
    nt.links.new(clock.outputs[0], offset.inputs[3])
    move = nt.nodes.new("ShaderNodeVectorMath")
    move.operation = 'ADD'
    move.label = label + " Motion"
    nt.links.new(vector, move.inputs[0])
    nt.links.new(offset.outputs[0], move.inputs[1])
    return move.outputs[0], [offset, move]


def _weapon_aniso(nt, bsdf, slots, settings, tex):
    """Point the specular highlight along the direction the metal was machined.

    The map stores that direction as a unit vector in R and G, so the angle is simply atan2 of it, and
    Blender wants it as a turn (0..1) measured from the surface's UV tangent - the same space the map is
    authored in. B says how anisotropic the surface is; the rest of the gun has it at zero and is unchanged."""
    rotation = _principled_input(bsdf, "Anisotropic Rotation")
    strength = _principled_input(bsdf, "Anisotropic")
    if rotation is None or strength is None:
        return []
    links = nt.links
    node = tex(slots["aniso"], True, True, "Brush Direction  (aniso)")
    split = nt.nodes.new("ShaderNodeSeparateColor")
    links.new(node.outputs["Color"], split.inputs[0])
    axes = []
    for channel, loc in (("Red", 0), ("Green", 1)):
        centre = nt.nodes.new("ShaderNodeMath")
        centre.operation = 'MULTIPLY_ADD'
        centre.label = "%s to -1..1" % channel
        links.new(split.outputs[channel], centre.inputs[0])
        centre.inputs[1].default_value = 2.0
        centre.inputs[2].default_value = -1.0
        axes.append(centre)
    angle = nt.nodes.new("ShaderNodeMath")
    angle.operation = 'ARCTAN2'
    angle.label = "Brush Angle"
    links.new(axes[1].outputs[0], angle.inputs[0])
    links.new(axes[0].outputs[0], angle.inputs[1])
    turn = nt.nodes.new("ShaderNodeMath")
    turn.operation = 'MULTIPLY_ADD'
    turn.label = "Angle to Turns"
    links.new(angle.outputs[0], turn.inputs[0])
    turn.inputs[1].default_value = 1.0 / (2.0 * math.pi)
    turn.inputs[2].default_value = 0.5
    links.new(turn.outputs[0], rotation)
    amount = nt.nodes.new("ShaderNodeMath")
    amount.operation = 'MULTIPLY'
    amount.label = "Anisotropy"
    amount.use_clamp = True
    links.new(split.outputs["Blue"], amount.inputs[0])
    amount.inputs[1].default_value = settings.weapon_aniso
    links.new(amount.outputs[0], strength)
    return [split] + axes + [angle, turn, amount]


def _weapon_layer2(nt, grp, slots, tex):
    """The blueprint's second layer: its own normal map, wherever its mask says it sits."""
    if not (slots.get("layer2") and slots.get("layer2_normal")):
        return None, []
    links = nt.links
    mask = tex(slots["layer2"], True, True, "Blueprint Layer Mask")
    normal = tex(slots["layer2_normal"], True, True, "Blueprint Layer Normal")
    blend = nt.nodes.new("ShaderNodeMix")
    blend.data_type = 'RGBA'
    blend.label = "Blueprint Layer"
    blend.clamp_factor = True
    under = nt.nodes.new("ShaderNodeMath")
    under.operation = 'SUBTRACT'
    under.label = "Where the Layer Shows"
    under.inputs[0].default_value = 1.0
    under.use_clamp = True
    links.new(mask.outputs["Color"], under.inputs[1])
    links.new(under.outputs[0], blend.inputs[0])
    links.new(grp.outputs["Normal Color"], blend.inputs[6])
    links.new(normal.outputs["Color"], blend.inputs[7])
    return blend.outputs[2], [under, blend]


def _weapon_camo_source(nt, slots, settings, tex, finish=None):
    """(region mask socket, paint colour socket or None, helper nodes) for the camo. `finish`, a dict, gets the
    camo's own gloss when its export carries one."""
    under_artwork = settings.weapon_camo_region == 'LAYER' and slots.get("layer2")
    if under_artwork:
        # the blueprint's first layer covers its own artwork; the game's paint goes in what is left
        where = tex(slots["layer2"], True, True, "Paint Goes Here")
        under = nt.nodes.new("ShaderNodeMath")
        under.operation = 'SUBTRACT'
        under.label = "Under the Artwork"
        under.inputs[0].default_value = 1.0
        under.use_clamp = True
        nt.links.new(where.outputs["Color"], under.inputs[1])
        region, helpers = under.outputs[0], [under]
    elif not slots.get("camo"):
        region, helpers = None, []
    elif (settings.weapon_camo <= 0.0 and not settings.weapon_camo_unmasked and not settings.weapon_camo_folder
            and not settings.weapon_camo_image):
        # Camo 0 paints nothing, but a linked mask would still sit on the GPU (a 4096x2048 per gun part);
        # raising the Camo slider reshades these parts with the mask
        return 'DEFERRED', None, None, []
    else:
        mask = tex(slots["camo"], True, True, "Camo Region")
        region, helpers = mask.outputs["Color"], []
    if not under_artwork and slots.get("camo") and not is_greyscale(slots["camo"]):
        # MWII packs one region per channel of a single _cm image. Straight into a value socket that would
        # average them - a weak wash everywhere - so the channels are read apart. Which one a part uses is
        # up to the weapon: this blueprint's receiver is in red and its stock in blue.
        split = nt.nodes.new("ShaderNodeSeparateColor")
        split.label = "Camo Regions (R / G / B)"
        nt.links.new(mask.outputs["Color"], split.inputs[0])
        helpers = [split]
        want = settings.weapon_camo_region
        if want in {'R', 'G', 'B'}:
            region = split.outputs[{'R': "Red", 'G': "Green", 'B': "Blue"}[want]]
        else:
            rg = nt.nodes.new("ShaderNodeMath")
            rg.operation = 'MAXIMUM'
            rg.label = "Any Region"
            nt.links.new(split.outputs["Red"], rg.inputs[0])
            nt.links.new(split.outputs["Green"], rg.inputs[1])
            rgb = nt.nodes.new("ShaderNodeMath")
            rgb.operation = 'MAXIMUM'
            nt.links.new(rg.outputs[0], rgb.inputs[0])
            nt.links.new(split.outputs["Blue"], rgb.inputs[1])
            helpers += [rg, rgb]
            region = rgb.outputs[0]
    maps = camo_maps(bpy.path.abspath(settings.weapon_camo_folder or "")) if settings.weapon_camo_folder \
        else {}
    path = maps.get("color") or bpy.path.abspath(settings.weapon_camo_image or "")
    if not fs_exists(path):
        return region, None, None, helpers
    uv = nt.nodes.new("ShaderNodeUVMap")
    scale = nt.nodes.new("ShaderNodeMapping")
    scale.label = "Camo Scale"
    s = settings.weapon_camo_scale
    scale.inputs["Scale"].default_value = (s, s, 1.0)
    nt.links.new(uv.outputs["UV"], scale.inputs["Vector"])
    helpers += [uv, scale]
    vectors = [scale.outputs["Vector"]] * 3
    if maps.get("animated") and settings.game == 'BO7':
        clock = _camo_time(nt, settings)
        helpers.append(clock)
        vectors = []
        for velocity, label in (((0.025, 0.012, 0.0), "Camo Colour"),
                                ((-0.017, 0.021, 0.0), "Camo Second Layer"),
                                ((0.011, -0.014, 0.0), "Camo Smoke")):
            vector, nodes = _camo_motion(nt, scale.outputs["Vector"], clock, velocity, label)
            vectors.append(vector)
            helpers += nodes
    paint = tex(path, False, False, "Camo Paint")
    paint.extension = 'REPEAT'
    nt.links.new(vectors[0], paint.inputs["Vector"])
    color = paint.outputs["Color"]
    if maps.get("color2") and maps.get("blend"):
        # animated camos ship several colour layers the game drifts between (Genesis: an emerald nebula and a
        # violet one); a still frame shows the first with the second welling up through its smoke field
        second = tex(maps["color2"], False, False, "Camo Paint 2")
        field = tex(maps["blend"], True, False, "Camo Layer Blend")
        for node, vector in ((second, vectors[1]), (field, vectors[2])):
            node.extension = 'REPEAT'
            nt.links.new(vector, node.inputs["Vector"])
        where = nt.nodes.new("ShaderNodeMapRange")
        where.label = "Second Layer Where Smoke Is Thin"
        where.inputs["From Min"].default_value, where.inputs["From Max"].default_value = 0.85, 0.45
        nt.links.new(field.outputs["Color"], where.inputs["Value"])
        both = nt.nodes.new("ShaderNodeMix")
        both.data_type = 'RGBA'
        both.label = "Camo Layers"
        nt.links.new(where.outputs["Result"], both.inputs[0])
        nt.links.new(color, both.inputs[6])
        nt.links.new(second.outputs["Color"], both.inputs[7])
        helpers += [where, both]
        color = both.outputs[2]
    if maps.get("stars"):
        stars = tex(maps["stars"], False, True, "Camo Stars")
        stars.extension = 'REPEAT'
        nt.links.new(vectors[1], stars.inputs["Vector"])
        overlay = nt.nodes.new("ShaderNodeMixRGB")
        overlay.blend_type = 'ADD'
        overlay.label = "Camo Star Overlay"
        nt.links.new(stars.outputs["Alpha"], overlay.inputs[0])
        nt.links.new(color, overlay.inputs[1])
        nt.links.new(stars.outputs["Color"], overlay.inputs[2])
        helpers.append(overlay)
        color = overlay.outputs[0]
    if finish is not None and maps.get("gloss") is not None:
        finish["gloss"] = maps["gloss"]
    bump = None
    if maps.get("normal"):
        # the camo is a surface, not a decal: Genesis is crazed like dried paint, and that crackle is in its
        # normal map. Without it the pattern reads as a sticker over the gun's own machining.
        nrm = tex(maps["normal"], True, True, "Camo Normal")
        nt.links.new(scale.outputs["Vector"], nrm.inputs["Vector"])
        bump = nrm.outputs["Color"]
    return region, color, bump, helpers


def _principled_input(bsdf, *names):
    for n in names:
        s = bsdf.inputs.get(n)
        if s is not None:
            return s
    return None


def _separable_far_lobe(nt, near, settings):
    """Twin the finished skin shader as the far scatter lobe and blend the two by the profile's near share.
    The twin takes every input the near shader has - textures, normals, scale - and differs only in its radius."""
    prof = SSS_PROFILES.get(settings.sss_profile, SSS_PROFILES['PRODUCTION'])
    far = nt.nodes.new(near.bl_idname)
    for attr in ("distribution", "subsurface_method"):
        if hasattr(near, attr):
            setattr(far, attr, getattr(near, attr))
    for src, dst in zip(near.inputs, far.inputs):
        if hasattr(src, "default_value"):
            try:
                dst.default_value = src.default_value
            except (TypeError, AttributeError):
                pass
        for link in src.links:
            nt.links.new(link.from_socket, dst)
    radius = _principled_input(far, "Subsurface Radius")
    if radius is None:
        nt.nodes.remove(far)
        return None
    radius.default_value = prof["far"]
    near.label, far.label = SSS_NEAR_LABEL, SSS_FAR_LABEL
    far.location = (near.location.x, near.location.y - 760)
    mix = nt.nodes.new("ShaderNodeMixShader")
    mix.label = "Separable SSS  (near %d%% / far %d%%)" % (round(prof["w"] * 100), round((1 - prof["w"]) * 100))
    mix.location = (near.location.x + 320, near.location.y)
    mix.inputs[0].default_value = 1.0 - prof["w"]
    for link in list(near.outputs[0].links):
        to = link.to_socket
        nt.links.remove(link)
        nt.links.new(mix.outputs[0], to)
    nt.links.new(near.outputs[0], mix.inputs[1])
    nt.links.new(far.outputs[0], mix.inputs[2])
    return [far, mix]


def _sss_scale_nodes(nt, base_cm):
    """Subsurface scale that follows the object's world scale: base value is in Cast import units
    (centimeters), multiplied by the length of an object->world transformed unit vector, so a rig
    scaled to 0.01 (meters) gets 0.01x the distance."""
    vt = nt.nodes.new("ShaderNodeVectorTransform")
    vt.vector_type = 'VECTOR'
    vt.convert_from = 'OBJECT'
    vt.convert_to = 'WORLD'
    vt.inputs[0].default_value = (0.57735, 0.57735, 0.57735)
    vt.label = "Object Scale"
    length = nt.nodes.new("ShaderNodeVectorMath")
    length.operation = 'LENGTH'
    length.label = "Scale Factor"
    nt.links.new(vt.outputs[0], length.inputs[0])
    mul = nt.nodes.new("ShaderNodeMath")
    mul.operation = 'MULTIPLY'
    mul.name = SSS_NODE_NAME
    mul.label = "SSS Scale (cm)"
    nt.links.new(length.outputs["Value"], mul.inputs[0])
    mul.inputs[1].default_value = base_cm
    return mul.outputs[0], [vt, length, mul]


def get_cw_decode_group():
    """Black Ops Cold War's material, turned into a Principled one.

    Cold War keeps its maps apart instead of packing them, so most of this is plumbing. The three parts that
    are not:

    Normal. R and G hold X and Y; B is near zero and is not a z, so Z is rebuilt as sqrt(1 - x^2 - y^2).
    The four tiling detail normals are blended in while the normal is still in x/y form - their X and Y are
    added to the base's, weighted by the mask's R, G and B channels, and Z is rebuilt once at the end. The
    mask does not sum to 1 (it measures 0.26-0.71 over this export); whatever is left is simply no detail.

    Roughness comes straight off perceptualRoughnessMap. There is no gloss curve here, which is why this
    group has none: the map already is roughness.

    Metalness has to be derived. Cold War is a specular/gloss material - a metal's colorMap is black and its
    colour lives in specColorMap as an F0 reflectance - so metalness is read from that F0 and the base colour
    is mixed toward the spec colour by it. Below Dielectric F0 the surface stays a plain dielectric and the
    F0 drives Specular IOR Level instead."""
    name = "%s v%d" % (CW_GROUP_NAME, CW_GROUP_VERSION)
    ng = bpy.data.node_groups.get(name)
    if ng is not None and ng.get("cod_version") == CW_GROUP_VERSION:
        return ng
    ng = bpy.data.node_groups.new(name, "ShaderNodeTree")
    ng["cod_version"] = CW_GROUP_VERSION

    iface = ng.interface
    I, O = "INPUT", "OUTPUT"
    for sname, stype in (("Base Color", "NodeSocketColor"), ("Metallic", "NodeSocketFloat"),
                         ("Roughness", "NodeSocketFloat"), ("Specular", "NodeSocketFloat"),
                         ("Normal", "NodeSocketVector"), ("Alpha", "NodeSocketFloat")):
        _socket(iface, sname, O, stype)

    maps = iface.new_panel("Maps", description="texture maps from the Saluki export")
    _socket(iface, "Color", I, "NodeSocketColor", (0.5, 0.5, 0.5, 1.0), desc="colorMap (sRGB)", parent=maps)
    _socket(iface, "Normal Map", I, "NodeSocketColor", (0.5, 0.5, 0.0, 1.0),
            desc="normalMap: R = X, G = Y (Non-Color)", parent=maps)
    _socket(iface, "Roughness Map", I, "NodeSocketFloat", 0.5, 0.0, 1.0,
            "perceptualRoughnessMap - already roughness, not gloss", parent=maps)
    _socket(iface, "Occlusion", I, "NodeSocketFloat", 1.0, 0.0, 1.0, "aoMap", parent=maps)
    # socket defaults are LINEAR, so this is the dielectric F0 itself - not the 0.22 the sRGB-encoded
    # map stores for it. Setting 0.22 here made every material without a spec map fully metallic grey.
    _socket(iface, "Spec Color", I, "NodeSocketColor", (0.04, 0.04, 0.04, 1.0),
            desc="specColorMap: F0 reflectance. The map is sRGB, where the dielectric 0.04 reads as 0.22",
            parent=maps)
    _socket(iface, "Opacity", I, "NodeSocketFloat", 1.0, 0.0, 1.0, "alphaMap", parent=maps)
    for i in range(1, 4):
        _socket(iface, "Detail %d" % i, I, "NodeSocketColor", (0.5, 0.5, 0.0, 1.0),
                desc="detailNormal%d, tiled" % i, parent=maps)
    _socket(iface, "Detail Mask", I, "NodeSocketColor", (0.0, 0.0, 0.0, 1.0),
            desc="detailNormalMask: R, G, B pick detail 1, 2, 3", parent=maps)
    _socket(iface, "Detail Base", I, "NodeSocketColor", (0.5, 0.5, 0.0, 1.0),
            desc="detailMap: a tiled normal over the whole material, with no mask "
                 "(skin pores, burlap, denim)", parent=maps)

    adjust = iface.new_panel("Adjust", description="safe to tweak")
    _socket(iface, "Normal Strength", I, "NodeSocketFloat", 1.0, 0.0, 4.0, "bumpiness of the normal map", parent=adjust)
    _socket(iface, "Detail Strength", I, "NodeSocketFloat", CW_DETAIL_STRENGTH, 0.0, 4.0,
            "how much the tiling detail normals (weave, grain, filaments) show", parent=adjust)
    _socket(iface, "AO Strength", I, "NodeSocketFloat", 1.0, 0.0, 1.0, "baked ambient occlusion darkening", parent=adjust)
    _socket(iface, "Roughness Min", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "raise to make the surface less shiny", parent=adjust)
    _socket(iface, "Roughness Max", I, "NodeSocketFloat", 1.0, 0.0, 1.0, "lower to make rough areas shinier", parent=adjust)

    adv = iface.new_panel("Advanced (Cold War decode)", default_closed=True)
    # Blender's Normal Map node wants OpenGL (+Y up). Two tests on this export point that way: integrating
    # the button decal's normal back to a height puts the disc +12.3 above its surround under +Y against
    # +0.03 under -Y, and correlating recovered height against the baked AO favours +Y on 17 materials to 9.
    # Neither is conclusive on its own, so the flip is here to click if detail ever reads inside out.
    _socket(iface, "Flip Green", I, "NodeSocketFloat", 0.0, 0.0, 1.0,
            "1 flips the normal map's Y (DirectX convention): use it if bumps look like dents", parent=adv)
    _socket(iface, "Dielectric F0", I, "NodeSocketFloat", CW_F0_DIELECTRIC, 0.0, 0.5,
            "F0 below which the surface is a plain dielectric", parent=adv)
    _socket(iface, "Metal F0", I, "NodeSocketFloat", CW_F0_METAL, 0.0, 1.0,
            "F0 at and above which the surface is fully metal", parent=adv)

    extra = iface.new_panel("Extra Outputs", default_closed=True)
    _socket(iface, "Normal Color", O, "NodeSocketColor", parent=extra)
    _socket(iface, "Occlusion", O, "NodeSocketFloat", parent=extra)

    b = _Builder(ng)
    nodes, link = ng.nodes, ng.links.new
    gi = nodes.new("NodeGroupInput")
    gi.location = (-1400, 0)
    go = nodes.new("NodeGroupOutput")
    go.location = (900, 0)
    inp = gi.outputs

    def xy(color, loc):
        """The X and Y of a Cold War normal map, centred on zero."""
        sep = nodes.new("ShaderNodeSeparateColor")
        sep.location = loc
        link(color, sep.inputs[0])
        return (b.math("SUBTRACT", b.math("MULTIPLY", sep.outputs[0], 2.0, loc=(loc[0] + 170, loc[1] + 60)), 1.0,
                       loc=(loc[0] + 330, loc[1] + 60)),
                b.math("SUBTRACT", b.math("MULTIPLY", sep.outputs[1], 2.0, loc=(loc[0] + 170, loc[1] - 60)), 1.0,
                       loc=(loc[0] + 330, loc[1] - 60)))

    bx, by = xy(inp["Normal Map"], (-1200, 500))
    bx = b.math("MULTIPLY", bx, inp["Normal Strength"], loc=(-700, 560))
    # Flip Green = 0 leaves Y alone, 1 negates it: sign = 1 - 2 * flip
    flip = b.math("SUBTRACT", 1.0, b.math("MULTIPLY", inp["Flip Green"], 2.0, loc=(-860, 380)),
                  loc=(-780, 380))
    by = b.math("MULTIPLY", b.math("MULTIPLY", by, inp["Normal Strength"], loc=(-700, 440)), flip,
                loc=(-560, 440))

    # detail normals: add their X and Y on top, each weighted by its channel of the mask
    mask = nodes.new("ShaderNodeSeparateColor")
    mask.location = (-1200, 60)
    link(inp["Detail Mask"], mask.inputs[0])
    for i in range(1, 4):
        dx, dy = xy(inp["Detail %d" % i], (-1200, -200 - (i - 1) * 260))
        w = b.math("MULTIPLY", mask.outputs[i - 1], inp["Detail Strength"], loc=(-700, -160 - (i - 1) * 260))
        bx = b.math("ADD", bx, b.math("MULTIPLY", dx, w, loc=(-520, -160 - (i - 1) * 260)),
                    loc=(-340, 560 - (i - 1) * 40))
        by = b.math("ADD", by, b.math("MULTIPLY", dy, w, loc=(-520, -240 - (i - 1) * 260)),
                    loc=(-340, 440 - (i - 1) * 40))

    # detailMap: the same kind of layer but unmasked, so it goes on at full Detail Strength
    ux, uy = xy(inp["Detail Base"], (-1200, -980))
    bx = b.math("ADD", bx, b.math("MULTIPLY", ux, inp["Detail Strength"], loc=(-520, -940)), loc=(-260, 560))
    by = b.math("ADD", by, b.math("MULTIPLY", uy, inp["Detail Strength"], loc=(-520, -1020)), loc=(-260, 440))

    # Z rebuilt once, from the summed X and Y: B in these maps is near zero and is not a z
    zz = b.math("SQRT", b.math("MAXIMUM", b.math("SUBTRACT", 1.0,
                b.math("ADD", b.math("MULTIPLY", bx, bx, loc=(-100, 300)),
                       b.math("MULTIPLY", by, by, loc=(-100, 200)), loc=(60, 250)), loc=(220, 250)),
                0.0, loc=(380, 250)), loc=(540, 250))
    packed = nodes.new("ShaderNodeCombineColor")
    packed.location = (700, 400)
    for i, c in enumerate((bx, by, zz)):
        link(b.math("ADD", b.math("MULTIPLY", c, 0.5, loc=(620, 480 - i * 70)), 0.5, loc=(700, 480 - i * 70)),
             packed.inputs[i])
    nmap = nodes.new("ShaderNodeNormalMap")
    nmap.location = (860, 400)
    link(packed.outputs[0], nmap.inputs["Color"])
    link(nmap.outputs["Normal"], go.inputs["Normal"])
    link(packed.outputs[0], go.inputs["Normal Color"])

    # metalness from the spec map's F0: Cold War is a specular workflow, so a metal's colour is in there
    f0 = nodes.new("ShaderNodeSeparateColor")
    f0.location = (-1200, -1100)
    link(inp["Spec Color"], f0.inputs[0])
    peak = b.math("MAXIMUM", b.math("MAXIMUM", f0.outputs[0], f0.outputs[1], loc=(-1000, -1100)),
                  f0.outputs[2], loc=(-840, -1100))
    ramp = nodes.new("ShaderNodeMapRange")          # Math has no smoothstep; Map Range does
    ramp.interpolation_type = 'SMOOTHSTEP'
    ramp.clamp = True
    ramp.location = (-660, -1100)
    link(peak, ramp.inputs["Value"])
    link(inp["Dielectric F0"], ramp.inputs["From Min"])
    link(inp["Metal F0"], ramp.inputs["From Max"])
    metal = ramp.outputs["Result"]
    link(metal, go.inputs["Metallic"])
    # Blender's Specular IOR Level is F0 / 0.08; it only matters where the surface is not metal
    link(b.math("DIVIDE", peak, 0.08, clamp=True, loc=(-660, -1260)), go.inputs["Specular"])

    ao = b.math("POWER", inp["Occlusion"], inp["AO Strength"], loc=(-660, -700))
    link(ao, go.inputs["Occlusion"])
    shaded = nodes.new("ShaderNodeMix")
    shaded.data_type = 'RGBA'
    shaded.blend_type = 'MULTIPLY'
    shaded.location = (-460, -600)
    shaded.inputs[0].default_value = 1.0
    link(inp["Color"], shaded.inputs[6])
    link(b.vmath("SCALE", (1.0, 1.0, 1.0), scale=ao, loc=(-660, -600)), shaded.inputs[7])
    base = nodes.new("ShaderNodeMix")
    base.data_type = 'RGBA'
    base.location = (-260, -600)
    link(metal, base.inputs[0])
    link(shaded.outputs[2], base.inputs[6])
    link(inp["Spec Color"], base.inputs[7])         # a metal's reflectance IS its colour
    link(base.outputs[2], go.inputs["Base Color"])

    rough = b.math("ADD", inp["Roughness Min"],
                   b.math("MULTIPLY", b.math("SUBTRACT", inp["Roughness Max"], inp["Roughness Min"],
                                             loc=(-660, -380)), inp["Roughness Map"], loc=(-460, -380)),
                   clamp=True, loc=(-260, -380))
    link(rough, go.inputs["Roughness"])
    link(inp["Opacity"], go.inputs["Alpha"])
    return ng


def _eye_iris_angle(nt, bsdf, grp, parallax, finish):
    """The iris seen through the cornea: darker the more obliquely you look through the eye's fluid (the multilayer
    talk's path-length absorption), with a fibre sheen that catches the light by angle. Returns the nodes made."""
    made = []

    def node(kind, label=None):
        nd = nt.nodes.new(kind)
        if label:
            nd.label = label
        made.append(nd)
        return nd

    def math(op, a, b):
        m = node("ShaderNodeMath")
        m.operation = op
        for i, v in enumerate((a, b)):
            if isinstance(v, bpy.types.NodeSocket):
                nt.links.new(v, m.inputs[i])
            else:
                m.inputs[i].default_value = v
        return m.outputs[0]

    geo = node("ShaderNodeNewGeometry")
    dot = node("ShaderNodeVectorMath")
    dot.operation = 'DOT_PRODUCT'
    nt.links.new(geo.outputs["Normal"], dot.inputs[0])
    nt.links.new(geo.outputs["Incoming"], dot.inputs[1])
    ndv = math('MAXIMUM', math('ABSOLUTE', dot.outputs["Value"], 0.0), 0.08)
    path = math('SUBTRACT', math('DIVIDE', 1.0, ndv), 1.0)                       # extra path past face-on
    k = node("ShaderNodeValue", "Iris Absorption")
    k.name = "CoD Eye Iris Absorption"
    k.outputs[0].default_value = EYE_IRIS_ABSORPTION
    trans = math('EXPONENT', math('MULTIPLY', math('MULTIPLY', path, k.outputs[0]), -1.0), 0.0)
    iris = parallax.outputs["Iris Mask"] if parallax is not None and "Iris Mask" in parallax.outputs else None
    if iris is not None:
        trans = math('ADD', math('MULTIPLY', math('SUBTRACT', trans, 1.0), iris), 1.0)  # only inside the iris
    base = finish.get("Base Color") or grp.outputs["Base Color"]
    tint = node("ShaderNodeVectorMath", "Iris through the cornea")
    tint.operation = 'SCALE'
    nt.links.new(base, tint.inputs[0])
    nt.links.new(trans, tint.inputs["Scale"])
    finish["Base Color"] = tint.outputs["Vector"]
    sheen = _principled_input(bsdf, "Sheen Weight")
    if sheen is not None:
        amount = node("ShaderNodeValue", "Iris Sheen")
        amount.name = "CoD Eye Iris Sheen"
        amount.outputs[0].default_value = EYE_IRIS_SHEEN
        nt.links.new(math('MULTIPLY', amount.outputs[0], iris) if iris is not None else amount.outputs[0], sheen)
        tint_in = _principled_input(bsdf, "Sheen Tint")
        if tint_in is not None:
            nt.links.new(base, tint_in)
        rough = _principled_input(bsdf, "Sheen Roughness")
        if rough is not None:
            rough.default_value = EYE_IRIS_SHEEN_ROUGHNESS
    return made


def get_eye_parallax_group():
    """Iris parallax like CoD's eye shader, done in the eye's forward frame.

    BO7 eye meshes model the cornea bulge, so the surface normal tilts away from the pupil with UV
    radius (measured: 13.6 deg at r=0.05 ... 37.6 deg at the limbus, r=0.19). Parallax along the
    local normal would shrink the iris, so the forward axis F is rebuilt per pixel by undoing that
    tilt (theta(r) = tilt_max * (1 - exp(-r / falloff))), and the view vector is measured in F's
    frame:   uv' = uv - V_F.xy / V_F.z * depth * (1 - (r / R_iris)^2)"""
    name = "CoD Eye Parallax v%d" % EYE_GROUP_VERSION
    ng = bpy.data.node_groups.get(name)
    if ng is not None:
        return ng
    ng = bpy.data.node_groups.new(name, "ShaderNodeTree")
    iface = ng.interface
    _socket(iface, "UV", "OUTPUT", "NodeSocketVector")
    _socket(iface, "Iris Mask", "OUTPUT", "NodeSocketFloat")
    _socket(iface, "Iris Depth", "INPUT", "NodeSocketFloat", EYE_IRIS_DEPTH, 0.0, 0.3,
            "how deep the iris sits under the cornea (0 = painted on)")
    _socket(iface, "Iris Radius", "INPUT", "NodeSocketFloat", EYE_IRIS_RADIUS, 0.0, 0.5, "size of the iris in the eye texture")
    adv = iface.new_panel("Advanced", default_closed=True)
    _socket(iface, "Iris Center", "INPUT", "NodeSocketVector", (0.5, 0.5, 0.0), parent=adv)
    _socket(iface, "Tilt Max", "INPUT", "NodeSocketFloat", EYE_TILT_MAX, 0.0, 1.5,
            "cornea normal tilt model (radians)", parent=adv)
    _socket(iface, "Tilt Falloff", "INPUT", "NodeSocketFloat", EYE_TILT_FALLOFF, 0.01, 1.0, parent=adv)

    b = _Builder(ng)
    nodes, link = ng.nodes, ng.links.new
    gi = nodes.new("NodeGroupInput")
    gi.location = (-1400, 0)
    go = nodes.new("NodeGroupOutput")
    go.location = (1100, 0)
    inp = gi.outputs

    tc = nodes.new("ShaderNodeTexCoord")
    tc.location = (-1400, 300)
    uv = tc.outputs["UV"]
    geo = nodes.new("ShaderNodeNewGeometry")
    geo.location = (-1400, -400)
    tan = nodes.new("ShaderNodeTangent")
    tan.direction_type = 'UV_MAP'
    tan.location = (-1400, -650)
    I, N, T = geo.outputs["Incoming"], geo.outputs["Normal"], tan.outputs["Tangent"]
    B = b.vmath("CROSS_PRODUCT", N, T, loc=(-1150, -650))

    def dot(a, c, loc):
        n = nodes.new("ShaderNodeVectorMath")
        n.operation = 'DOT_PRODUCT'
        n.location = loc
        link(a, n.inputs[0])
        link(c, n.inputs[1])
        return n.outputs["Value"]

    # radial UV offset and cornea height profile
    d = b.vmath("SUBTRACT", uv, inp["Iris Center"], loc=(-1150, 300))
    sep = nodes.new("ShaderNodeSeparateXYZ")
    sep.location = (-950, 300)
    link(d, sep.inputs[0])
    r = nodes.new("ShaderNodeVectorMath")
    r.operation = 'LENGTH'
    r.location = (-950, 150)
    link(d, r.inputs[0])
    r = r.outputs["Value"]
    rr = b.math("DIVIDE", r, inp["Iris Radius"], loc=(-750, 150))
    height = b.math("MAXIMUM", b.math("SUBTRACT", 1.0, b.math("MULTIPLY", rr, rr, loc=(-600, 150)), loc=(-450, 150)),
                    0.0, loc=(-300, 150))
    depth = b.math("MULTIPLY", height, inp["Iris Depth"], loc=(-150, 150))

    # forward axis F = cos(theta) N - sin(theta) R_hat, R_hat = outward radial direction on the surface
    r_hat = b.vmath("NORMALIZE", b.vmath("ADD", b.vmath("SCALE", T, scale=sep.outputs[0], loc=(-950, -150)),
                                          b.vmath("SCALE", B, scale=sep.outputs[1], loc=(-950, -300)),
                                          loc=(-750, -200)), loc=(-600, -200))
    theta = b.math("MULTIPLY", inp["Tilt Max"],
                   b.math("SUBTRACT", 1.0, b.math("EXPONENT", b.math("DIVIDE", b.math("MULTIPLY", r, -1.0, loc=(-750, 0)),
                                                                  inp["Tilt Falloff"], loc=(-600, 0)), loc=(-450, 0)),
                          loc=(-300, 0)), loc=(-150, 0))
    F = b.vmath("NORMALIZE", b.vmath("SUBTRACT",
                                     b.vmath("SCALE", N, scale=b.math("COSINE", theta, loc=(0, 50)), loc=(150, -100)),
                                     b.vmath("SCALE", r_hat, scale=b.math("SINE", theta, loc=(0, -50)), loc=(150, -250)),
                                     loc=(300, -150)), loc=(450, -150))

    # tangent frame orthogonal to F
    def ortho(v, loc):
        proj = b.vmath("SCALE", F, scale=dot(v, F, (loc[0], loc[1] + 80)), loc=(loc[0] + 150, loc[1]))
        return b.vmath("NORMALIZE", b.vmath("SUBTRACT", v, proj, loc=(loc[0] + 300, loc[1])), loc=(loc[0] + 450, loc[1]))

    TF = ortho(T, (0, -450))
    BF = ortho(B, (0, -650))
    vz = b.math("MAXIMUM", dot(I, F, (600, -300)), 0.2, loc=(750, -300))
    k = b.math("DIVIDE", depth, vz, loc=(750, -150))
    comb = nodes.new("ShaderNodeCombineXYZ")
    comb.location = (900, -300)
    link(b.math("MULTIPLY", dot(I, TF, (600, -450)), k, loc=(750, -450)), comb.inputs[0])
    link(b.math("MULTIPLY", dot(I, BF, (600, -650)), k, loc=(750, -650)), comb.inputs[1])
    link(b.vmath("SUBTRACT", uv, comb.outputs[0], loc=(950, 0)), go.inputs["UV"])
    link(b.math("CEIL", height, loc=(950, 150)), go.inputs["Iris Mask"])
    return ng


def get_eye_relief_group():
    """Iris relief from a height map: trabeculae and vessels raised on the iris, sclera left smooth.

    Bump drives the shading normal, which is what both Cycles and Eevee actually see. The Displacement
    output is real geometry and only Cycles reads it, so its scale starts at 0 - an iris fibre is about
    0.1 mm on a 12 mm iris, which needs heavy subdivision before it moves anything.

    The mask fades the height back to the midlevel outside the iris instead of to black, so the limbus
    does not come out as a bump ridge where the map falls off a cliff."""
    name = "CoD Eye Iris Relief v%d" % EYE_RELIEF_VERSION
    ng = bpy.data.node_groups.get(name)
    if ng is not None:
        return ng
    ng = bpy.data.node_groups.new(name, "ShaderNodeTree")
    iface = ng.interface
    _socket(iface, "Normal", "OUTPUT", "NodeSocketVector")
    _socket(iface, "Displacement", "OUTPUT", "NodeSocketVector")
    _socket(iface, "Relief", "INPUT", "NodeSocketFloat", EYE_RELIEF_STRENGTH, 0.0, 2.0,
            "how raised the iris fibres look (shading only: works in Cycles and Eevee)")
    _socket(iface, "Displace", "INPUT", "NodeSocketFloat", 0.0, 0.0, 0.02,
            "true displacement of the iris surface, in Blender units. Cycles only, and the eye needs "
            "subdivision before it moves anything - leave at 0 for the bump above")
    maps = iface.new_panel("Maps", description="wired from the height map and the iris depth node",
                           default_closed=True)
    _socket(iface, "Height", "INPUT", "NodeSocketFloat", 0.5, 0.0, 1.0, "iris height map", parent=maps)
    _socket(iface, "Iris Mask", "INPUT", "NodeSocketFloat", 1.0, 0.0, 1.0,
            "1 on the iris, 0 on the sclera", parent=maps)
    _socket(iface, "Midlevel", "INPUT", "NodeSocketFloat", 0.5, 0.0, 1.0,
            "the grey in the map that means 'flat'", parent=maps)
    _socket(iface, "Normal", "INPUT", "NodeSocketVector", parent=maps)

    nodes, link = ng.nodes, ng.links.new
    gi = nodes.new("NodeGroupInput")
    gi.location = (-700, 0)
    go = nodes.new("NodeGroupOutput")
    go.location = (400, 0)
    inp = gi.outputs

    # outside the iris the height goes to the midlevel, so the sclera stays smooth and the limbus flat
    masked = nodes.new("ShaderNodeMix")
    masked.data_type = 'FLOAT'
    masked.location = (-450, 100)
    link(inp["Iris Mask"], masked.inputs["Factor"])
    link(inp["Midlevel"], masked.inputs[2])
    link(inp["Height"], masked.inputs[3])
    height = masked.outputs[0]

    bump = nodes.new("ShaderNodeBump")
    bump.location = (-150, 150)
    bump.inputs["Distance"].default_value = EYE_RELIEF_DISTANCE
    link(inp["Relief"], bump.inputs["Strength"])
    link(height, bump.inputs["Height"])
    link(inp["Normal"], bump.inputs["Normal"])
    link(bump.outputs["Normal"], go.inputs["Normal"])

    disp = nodes.new("ShaderNodeDisplacement")
    disp.location = (-150, -200)
    link(height, disp.inputs["Height"])
    link(inp["Midlevel"], disp.inputs["Midlevel"])
    link(inp["Displace"], disp.inputs["Scale"])
    link(inp["Normal"], disp.inputs["Normal"])
    link(disp.outputs["Displacement"], go.inputs["Displacement"])
    return ng


HAIR_PARAMS = (
    # name, default, min, max, description, node panel
    # Blender caps anisotropy at a 10:1 roughness ratio, so a fiber-like lobe (tight along the strand,
    # spread around it) needs a fairly high base roughness with anisotropy at 1: r 0.45 -> alpha ~0.06
    # along the strand and ~0.6 across it. Low roughness mirror-reflects the room on every card.
    ("Shine", 0.35, 0.0, 4.0, "white highlight on the strands (Marschner R lobe)", "Highlights"),
    ("Shine Softness", 0.45, 0.0, 1.0, "roughness of the white highlight (lower = sharper glints, more noise)",
     "Highlights"),
    ("Color Shine", 0.7, 0.0, 4.0, "hair-colored second highlight (TRT lobe)", "Highlights"),
    ("Color Shine Softness", 0.7, 0.0, 1.0, "roughness of the colored highlight", "Highlights"),
    ("Backlight", 0.9, 0.0, 2.0, "light shining through the hair from behind (TT lobe)", "Look"),
    ("Strand Variation", 0.45, 0.0, 1.0, "brightness variation between strands and clumps", "Look"),
    ("Shine Shift", 0.12, -1.0, 1.0, "moves the white highlight along the strand (+ toward root)", "Advanced"),
    ("Color Shine Shift", -0.18, -1.0, 1.0, "moves the colored highlight along the strand (- toward tip)", "Advanced"),
    ("Strand Stretch", 0.8, 0.0, 1.0, "anisotropy: how far highlights wrap around each strand", "Advanced"),
)


def get_hair_group():
    """Card hair shader after Marschner's hair model (R, TRT, TT lobes), as used by game hair shaders.
    Strands run along UV V (BO7 hair cards), so the UV tangent (U) is across the strands: anisotropic
    GGX stretched along it gives the horizontal highlight band. Each lobe tilts the shading normal
    along the strand to shift its highlight toward the root (R) or tip (TRT)."""
    name = "CoD Hair v%d" % HAIR_GROUP_VERSION
    ng = bpy.data.node_groups.get(name)
    if ng is not None:
        return ng
    ng = bpy.data.node_groups.new(name, "ShaderNodeTree")
    iface = ng.interface
    _socket(iface, "Shader", "OUTPUT", "NodeSocketShader")
    panels = {name: iface.new_panel(name, default_closed=(name == "Advanced"))
              for name in ("Highlights", "Look", "Advanced")}
    for pname, default, lo, hi, desc, panel in HAIR_PARAMS:
        _socket(iface, pname, "INPUT", "NodeSocketFloat", default, lo, hi, desc, parent=panels[panel])
    maps = iface.new_panel("Maps", description="wired from the CoD Surface Decode node", default_closed=True)
    _socket(iface, "Color", "INPUT", "NodeSocketColor", (0.01, 0.008, 0.007, 1.0), desc="hair base color (linear)", parent=maps)
    _socket(iface, "Strand ID", "INPUT", "NodeSocketFloat", 0.2, 0.0, 1.0, "per-strand value (0x4d)", parent=maps)
    _socket(iface, "Occlusion", "INPUT", "NodeSocketFloat", 1.0, 0.0, 1.0, parent=maps)
    _socket(iface, "Alpha", "INPUT", "NodeSocketFloat", 1.0, 0.0, 1.0, parent=maps)
    n_sock = _socket(iface, "Normal", "INPUT", "NodeSocketVector", parent=maps)
    n_sock.hide_value = True

    b = _Builder(ng)
    nodes, link = ng.nodes, ng.links.new
    gi = nodes.new("NodeGroupInput")
    gi.location = (-1200, 0)
    go = nodes.new("NodeGroupOutput")
    go.location = (1300, 0)
    inp = gi.outputs

    tan = nodes.new("ShaderNodeTangent")
    tan.direction_type = 'UV_MAP'
    tan.location = (-1200, -500)
    across = tan.outputs["Tangent"]                                    # U: across the strands
    N_card = inp["Normal"]
    # cards are seen from both sides: face the shading normal toward the viewer, otherwise back-facing
    # cards get grazing-angle Fresnel (~100% reflection) and sparkle white
    geo = nodes.new("ShaderNodeNewGeometry")
    geo.location = (-1200, -750)
    facing = nodes.new("ShaderNodeVectorMath")
    facing.operation = 'DOT_PRODUCT'
    facing.location = (-1000, -750)
    link(N_card, facing.inputs[0])
    link(geo.outputs["Incoming"], facing.inputs[1])
    N = b.vmath("SCALE", N_card, scale=b.math("SIGN", facing.outputs["Value"], loc=(-850, -750)), loc=(-700, -750))
    head_on = b.math("ABSOLUTE", facing.outputs["Value"], loc=(-850, -900))   # 1 facing the camera, 0 edge-on
    edge_on = b.math("SUBTRACT", 1.0, head_on, loc=(-700, -900))

    # TT / TRT cross the fiber and are filtered by its pigment on the way, so they come out MORE saturated
    # than the albedo, not less - the amber you see through backlit hair. Brightening the albedo instead
    # (albedo x 4, clipped) pushed every brown into the same pale peach, which is what made card hair read
    # as ashy grey. Here the albedo is normalised to keep its hue, then gamma'd to deepen it.
    sep = nodes.new("ShaderNodeSeparateColor")
    sep.location = (-1000, 620)
    link(inp["Color"], sep.inputs[0])
    peak = b.math("MAXIMUM", b.math("MAXIMUM", sep.outputs[0], sep.outputs[1], loc=(-850, 700)),
                  b.math("MAXIMUM", sep.outputs[2], 1e-4, loc=(-850, 560)), loc=(-700, 640))
    hue = b.vmath("DIVIDE", inp["Color"], b.vmath("SCALE", (1.0, 1.0, 1.0), scale=peak, loc=(-550, 700)),
                  loc=(-400, 640))
    deepened = nodes.new("ShaderNodeGamma")
    deepened.location = (-250, 640)
    deepened.inputs["Gamma"].default_value = HAIR_TINT_GAMMA
    link(hue, deepened.inputs["Color"])
    # keep some of the albedo's own level, or black hair would transmit as brightly as blonde
    tint = b.vmath("SCALE", deepened.outputs[0], scale=b.math("SQRT", peak, loc=(-250, 520)), loc=(-100, 600))
    # strand direction from the card's own normal so root/tip stay put when the normal is flipped
    along = b.vmath("NORMALIZE", b.vmath("CROSS_PRODUCT", N_card, across, loc=(-1000, -500)), loc=(-850, -500))

    # per-strand variation: 0x4d spans ~0.05..0.35 in BO7 hair
    var = nodes.new("ShaderNodeMapRange")
    var.data_type = 'FLOAT'
    var.location = (-1000, 300)
    link(inp["Strand ID"], var.inputs[0])
    var.inputs[1].default_value = 0.05
    var.inputs[2].default_value = 0.35
    link(b.math("SUBTRACT", 1.0, inp["Strand Variation"], loc=(-1200, 350)), var.inputs[3])
    link(b.math("ADD", 1.0, inp["Strand Variation"], loc=(-1200, 250)), var.inputs[4])
    var = b.math("MULTIPLY", var.outputs[0], inp["Occlusion"], loc=(-800, 300))
    # Real hair reads in clumps: some locks catch more light than their neighbours. The game's per-strand
    # map only covers cards that have one, so a smooth object-space noise (~2 cm features, the width of a
    # lock) breaks up the flat "combed plastic" tone on every hairstyle.
    coord = nodes.new("ShaderNodeTexCoord")
    coord.location = (-1200, 150)
    clump_tex = nodes.new("ShaderNodeTexNoise")
    clump_tex.location = (-1000, 150)
    clump_tex.inputs["Scale"].default_value = 0.4
    clump_tex.inputs["Detail"].default_value = 2.0
    link(coord.outputs["Object"], clump_tex.inputs["Vector"])
    clump = b.math("ADD", 1.0, b.math("MULTIPLY", b.math("SUBTRACT", clump_tex.outputs["Fac"], 0.5, loc=(-800, 120)),
                                      inp["Strand Variation"], loc=(-650, 120)), loc=(-500, 150))
    var = b.math("MULTIPLY", var, clump, loc=(-350, 250))

    def shifted(shift, loc):
        return b.vmath("NORMALIZE", b.vmath("ADD", N, b.vmath("SCALE", along, scale=shift, loc=loc), loc=(loc[0] + 150, loc[1])),
                       loc=(loc[0] + 300, loc[1]))

    def glossy(color, rough, normal, loc):
        g = nodes.new("ShaderNodeBsdfGlossy")
        g.distribution = 'GGX'
        g.location = loc
        b._feed(g.inputs["Color"], color)
        link(rough, g.inputs["Roughness"])
        link(inp["Strand Stretch"], g.inputs["Anisotropy"])
        link(normal, g.inputs["Normal"])
        link(across, g.inputs["Tangent"])
        return g.outputs[0]

    def scaled(fac, shader, loc):
        m = nodes.new("ShaderNodeMixShader")
        m.location = loc
        link(fac, m.inputs[0])
        link(shader, m.inputs[2])      # first input left empty: output = fac * shader
        return m.outputs[0]

    # R: the white cuticle reflection. A fiber's Fresnel does climb to 1 at grazing - but there the fiber
    # is edge-on and covers almost no pixels. A card covers just as many pixels edge-on as face-on, so
    # Fresnel alone painted the whole silhouette white. Multiplying by |N.V| puts that foreshortening back:
    # the highlight band stays on the hair facing the camera and fades out along the outline.
    n_r = shifted(inp["Shine Shift"], (-700, -250))
    fres = nodes.new("ShaderNodeFresnel")
    fres.location = (-250, -150)
    fres.inputs["IOR"].default_value = 1.55
    link(n_r, fres.inputs["Normal"])
    lobe_shape = b.math("MULTIPLY", b.math("MULTIPLY", fres.outputs[0], head_on, loc=(-80, -150)),
                        HAIR_FRESNEL_NORM, loc=(60, -150))
    r_fac = b.math("MULTIPLY", b.math("MULTIPLY", inp["Shine"], lobe_shape, loc=(200, -120)), var, loc=(340, -120))
    r_lobe = scaled(r_fac, glossy((1.0, 1.0, 1.0, 1.0), inp["Shine Softness"], n_r, (100, -300)), (350, -200))

    # TRT: tinted, broader, shifted toward the tip
    n_trt = shifted(inp["Color Shine Shift"], (-700, -650))
    trt_fac = b.math("MULTIPLY", b.math("MULTIPLY", inp["Color Shine"], lobe_shape, loc=(100, -470)),
                     var, loc=(240, -470))
    trt_lobe = scaled(trt_fac, glossy(tint, inp["Color Shine Softness"], n_trt, (100, -650)), (350, -550))

    # body: dark diffuse + TT translucency in the tint color
    diff = nodes.new("ShaderNodeBsdfDiffuse")
    diff.location = (100, 350)
    link(b.vmath("SCALE", inp["Color"], scale=var, loc=(-200, 400)), diff.inputs["Color"])
    link(N, diff.inputs["Normal"])
    tt = nodes.new("ShaderNodeBsdfTranslucent")
    tt.location = (100, 150)
    link(b.vmath("SCALE", tint, scale=b.math("MULTIPLY", inp["Backlight"], edge_on, loc=(-350, 200)),
                 loc=(-200, 200)), tt.inputs["Color"])
    link(N, tt.inputs["Normal"])

    def add(a, c, loc):
        n = nodes.new("ShaderNodeAddShader")
        n.location = loc
        link(a, n.inputs[0])
        link(c, n.inputs[1])
        return n.outputs[0]

    surface = add(add(diff.outputs[0], tt.outputs[0], (350, 250)), add(r_lobe, trt_lobe, (550, -350)), (750, 0))
    transparent = nodes.new("ShaderNodeBsdfTransparent")
    transparent.location = (750, 200)
    final = nodes.new("ShaderNodeMixShader")
    final.location = (1000, 0)
    link(inp["Alpha"], final.inputs[0])
    link(transparent.outputs[0], final.inputs[1])
    link(surface, final.inputs[2])
    link(final.outputs[0], go.inputs["Shader"])
    return ng


# node editor layout (columns, left to right)
X_EYE, X_TEX, X_DEC, X_SHADER, X_OUT = -1480, -1120, -760, -380, 20
Y_TOP = 300
TEX_STEP = 300
FRAME_COLORS = {
    "tex": (0.36, 0.26, 0.12), "decode": (0.12, 0.22, 0.36), "shader": (0.12, 0.30, 0.16),
    "helper": (0.26, 0.26, 0.26), "tip": (0.30, 0.30, 0.10),
}
DECODE_MAP_INPUTS = ("CS Color", "CS Alpha", "NOG Color", "NOG Alpha", "Opacity", "Emissive")


def _frame(nt, label, color, nodes_in):
    frame = nt.nodes.new("NodeFrame")
    frame.label = label
    frame.label_size = 16
    frame.use_custom_color = True
    frame.color = FRAME_COLORS[color]
    frame.location = (0, 0)          # children keep absolute coordinates
    for n in nodes_in:
        n.parent = frame
    return frame


def _hide_unused(node, inputs=True, outputs=True, only=None):
    """Hide unconnected sockets so beginners only see what is wired."""
    for group, enabled in ((node.inputs, inputs), (node.outputs, outputs)):
        if not enabled:
            continue
        for sock in group:
            if only is not None and sock.name not in only:
                continue
            if not sock.is_linked:
                sock.hide = True


def _hair_card_candidates(names):
    names = [n for n in names if HAIR_CARD_MATCH in n.lower()]
    # prefer the newest build of the shader: "(Extra)" > "(4.1)" > plain
    return sorted(names, key=lambda n: ("extra" not in n.lower(), "4.1" not in n, len(n)))


_hair_card_error = [None]


_hair_card_found = [None, False]        # (path, searched)


def find_hair_card_blend():
    """The Hair Card Shader .blend in the usual places (Downloads, Documents, Desktop, two folders deep), the build
    for this Blender preferred: '(4.4+)' on 4.4 and newer, '(4.0)' on 4.0-4.3."""
    if _hair_card_found[1]:
        return _hair_card_found[0]
    _hair_card_found[1] = True
    home = os.path.expanduser("~")
    hits = []
    for top in ("Downloads", "Documents", "Desktop"):
        root = os.path.join(home, top)
        for pattern in ("*.blend", os.path.join("*", "*.blend"), os.path.join("*", "*", "*.blend")):
            for p in glob.glob(os.path.join(root, pattern)):
                if HAIR_CARD_MATCH in os.path.basename(p).lower():
                    hits.append(p)
    new = bpy.app.version >= (4, 4, 0)

    def rank(p):
        name = os.path.basename(p)
        return (("4.4" in name) != new, ("4.0" in name) == new, len(name))
    _hair_card_found[0] = min(hits, key=rank) if hits else None
    return _hair_card_found[0]


def _hair_card_path(settings):
    path = bpy.path.abspath(settings.hair_card_file) if settings.hair_card_file else ""
    return path if path and os.path.isfile(path) else find_hair_card_blend()


def get_hair_card_group(settings):
    """The user's hair card node group: already in this file, or appended from the .blend they point to (or the one
    found in Downloads / Documents / Desktop)."""
    _hair_card_error[0] = None
    have = _hair_card_candidates([ng.name for ng in bpy.data.node_groups if ng.bl_idname == 'ShaderNodeTree'])
    if have:
        return bpy.data.node_groups[have[0]]
    path = _hair_card_path(settings)
    if not path:
        _hair_card_error[0] = "Eevee Hair Card Shader .blend not found - pick it in Character > Hair"
        return None
    try:
        with bpy.data.libraries.load(path, link=False) as (src, dst):
            pick = _hair_card_candidates(list(src.node_groups))
            dst.node_groups = pick[:1]
    except (OSError, RuntimeError) as e:
        _hair_card_error[0] = "could not read %s (%s)" % (os.path.basename(path), e)
        return None
    groups = [g for g in dst.node_groups if g is not None]
    if not groups:
        _hair_card_error[0] = "no hair card shader node group in %s" % os.path.basename(path)
        return None
    return groups[0]


def _set_input(node, name, value):
    sock = node.inputs.get(name)
    if sock is not None and hasattr(sock, "default_value"):
        try:
            sock.default_value = value
        except (TypeError, ValueError):
            pass
    return sock


def configure_decode(gin, slots, settings, metal_mode, kind):
    """Set a CoD Surface Decode node's inputs from the panel settings. Returns the metal mask used."""
    game = material_game(slots, settings)
    if metal_mode == 'AUTO':
        mask = 1.0 if (kind == 'DEFAULT' and slots["cs"] and alpha_is_metal_mask(slots["cs"])) else 0.0
    else:
        mask = 1.0 if metal_mode == 'ON' else 0.0
    gin["Metal Mask"].default_value = mask
    if kind != 'DEFAULT':
        gin["Dielectric F0"].default_value = SKIN_F0
    if kind == 'SKIN':
        gin["Roughness Min"].default_value = settings.skin_roughness_min
    elif kind == 'EYE':
        # MW4's eye gloss is a flat 1.0: the game shades the wet eye as one mirror layer. Here the wetness is the
        # coat (on the smooth eyeball), so the tissue under it must not be a mirror too - on its bumpy normals it
        # threw pinpoint glints all over the sclera
        gin["Roughness Min"].default_value = EYE_BASE_ROUGHNESS
    elif kind == 'DEFAULT':
        gin["Roughness Min"].default_value = surface_roughness_floor(settings, game)
    gin["Normal Strength"].default_value = settings.normal_strength * (EYE_NORMAL_SCALE if kind == 'EYE' else 1.0)
    gin["AO Strength"].default_value = settings.ao_strength
    # interreflection AO and the multiscattering (rough) diffuse arrived with CoD: WWII; Advanced Warfare explored
    # retroreflective diffuse but did not ship it ("Real-World Measurements for CoD: AW", section 14), and IW is
    # the same engine generation - so the older games decode the way they shipped
    newer = game not in PRE_WWII_GAMES
    if "AO Bounce" in gin:
        gin["AO Bounce"].default_value = 1.0 if newer else 0.0
    if "Rough Diffuse" in gin:
        gin["Rough Diffuse"].default_value = 1.0 if newer else 0.0
    gin["Emission Strength"].default_value = settings.emission_strength
    gin["Emission Color"].default_value = tuple(settings.emission_color) + (1.0,)
    curve_id = settings.gloss_curve
    if curve_id == 'GAME':
        curve_id = GAME_CURVE.get(game, 'WWII')
    curve = GLOSS_CURVES.get(curve_id)
    gin["CoD Gloss Curve"].default_value = 1.0 if curve else 0.0
    if curve:
        gin["Gloss Exponent"].default_value, gin["Gloss Bias"].default_value, remap = curve
        if "Gloss Sqrt Remap" in gin:
            gin["Gloss Sqrt Remap"].default_value = remap
    return mask


# --------------------------------------------------------------------------------------------
# Wrinkle maps: 2x2 expression atlases, driven by how much the skin is squashed
# --------------------------------------------------------------------------------------------

WRINKLE_CROP = (0.25, 0.336, 0.5)
WRINKLE_COLOR_SLOT, WRINKLE_NOG_SLOT = 0x0B, 0x0C   # older-style MW4 / BO7 exports name the atlases          # u0, v0, size of the face area each quadrant covers
WRINKLE_QUADS = ((0.0, 0.5), (0.5, 0.5), (0.0, 0.0), (0.5, 0.0))     # UV origin of TL, TR, BL, BR
WRINKLE_SQUASH_V, WRINKLE_SQUASH_H = "cod_squash_v", "cod_squash_h"
WRINKLE_GN_NAME = "CoD Skin Squash v2"
WRINKLE_MOD_NAME = "CoD Wrinkle Drive"
WRINKLE_NODE_PREFIX = "CoD Wrinkle "


def _grid(path, size=64):
    px = sample_rgba(path)
    if px is None or len(px) != size * size:
        return None
    return px.reshape(size, size, 4)


def _quadrants(a):
    h = a.shape[0] // 2
    return [a[h:, :h], a[h:, h:], a[:h, :h], a[:h, h:]]          # TL, TR, BL, BR (rows are bottom-up)


def is_wrinkle_atlas(path):
    """Four look-alike quadrants: a 2x2 atlas of the same face. A flat or perfectly symmetric map also has four
    look-alike quadrants, so it must carry real detail and the quadrants must not be identical."""
    if _is_placeholder(path) or not fs_exists(path):
        return False
    w, h = _sample(path)[1]
    if w < 512 or w != h:
        return False
    a = _grid(path)
    if a is None or float(a[..., 1].std()) < 0.02:
        return False
    qs = []
    for q in _quadrants(a):
        g = q[..., 1] - q[..., 1].mean()
        qs.append(g / (np.linalg.norm(g) + 1e-9))
    like = min(float((qs[0] * q).sum()) for q in qs[1:])
    return 0.55 < like < 0.995


def find_wrinkle_maps(paths):
    """(normal atlas, colour atlas) among a material's images, or (None, None)."""
    nog = col = None
    for p in paths:
        if not p or not is_wrinkle_atlas(p):
            continue
        a = _grid(p)
        packed = abs(float(a[..., 1].mean()) - 0.5) < 0.08 and abs(float(a[..., 3].mean()) - 0.5) < 0.1
        if packed and nog is None:
            nog = p
        elif not packed and col is None:
            col = p
    return nog, col


def wrinkle_directions(path):
    """Per quadrant, how much its creases answer vertical squash (lines running across the face, which tilt
    normal Y) versus horizontal squash (lines running up it, which tilt normal X). [(v, h), ...] summing to 1."""
    out = []
    try:
        img = bpy.data.images.load(fs_path(path), check_existing=False)
        try:
            img.colorspace_settings.name = 'Non-Color'
            img.scale(256, 256)
            a = np.array(img.pixels[:], np.float32).reshape(256, 256, 4)
        finally:
            bpy.data.images.remove(img)
    except Exception:
        return [(0.5, 0.5)] * 4
    qs = _quadrants(a)
    mean = sum(qs) / 4.0
    for q in qs:
        ex = float(np.abs(q[..., 1] - mean[..., 1]).mean())
        ey = float(np.abs(q[..., 3] - mean[..., 3]).mean())
        tot = ex + ey + 1e-9
        out.append((ey / tot, ex / tot))
    return out


def get_squash_group():
    """Geometry nodes: per vertex, how much the skin around it is squashed against its rest shape, split into
    vertical and horizontal squash (object space, Z up). Needs the object's rest_position attribute."""
    ng = bpy.data.node_groups.get(WRINKLE_GN_NAME)
    if ng is not None:
        return ng
    ng = bpy.data.node_groups.new(WRINKLE_GN_NAME, 'GeometryNodeTree')
    ng.interface.new_socket("Geometry", in_out='INPUT', socket_type='NodeSocketGeometry')
    sens = ng.interface.new_socket("Sensitivity", in_out='INPUT', socket_type='NodeSocketFloat')
    sens.default_value, sens.min_value, sens.max_value = 5.0, 0.0, 50.0
    up_in = ng.interface.new_socket("Up", in_out='INPUT', socket_type='NodeSocketVector')
    up_in.default_value = (0.0, 0.0, 1.0)
    ng.interface.new_socket("Geometry", in_out='OUTPUT', socket_type='NodeSocketGeometry')
    n, L = ng.nodes.new, ng.links.new
    gin, gout = n("NodeGroupInput"), n("NodeGroupOutput")
    gin.location, gout.location = (-1200, 0), (900, 0)
    ev = n("GeometryNodeInputMeshEdgeVertices")
    rest = n("GeometryNodeInputNamedAttribute")
    rest.data_type = 'FLOAT_VECTOR'
    rest.inputs["Name"].default_value = "rest_position"

    def at_index(idx_socket):
        f = n("GeometryNodeFieldAtIndex")
        f.domain, f.data_type = 'POINT', 'FLOAT_VECTOR'
        L(idx_socket, f.inputs["Index"])
        L(rest.outputs["Attribute"], f.inputs["Value"])
        return f.outputs[0]

    def vmath(op, a, b=None):
        m = n("ShaderNodeVectorMath")
        m.operation = op
        L(a, m.inputs[0])
        if b is not None:
            L(b, m.inputs[1])
        return m.outputs["Value" if op in ('DISTANCE', 'LENGTH', 'DOT_PRODUCT') else "Vector"]

    def math(op, a, b=None):
        m = n("ShaderNodeMath")
        m.operation = op
        for i, v in enumerate((a, b)):
            if v is None:
                continue
            if isinstance(v, bpy.types.NodeSocket):
                L(v, m.inputs[i])
            else:
                m.inputs[i].default_value = v
        return m.outputs[0]

    r1, r2 = at_index(ev.outputs["Vertex Index 1"]), at_index(ev.outputs["Vertex Index 2"])
    cur = vmath('DISTANCE', ev.outputs["Position 1"], ev.outputs["Position 2"])
    rl = math('MAXIMUM', vmath('DISTANCE', r1, r2), 1e-6)
    squash = math('MAXIMUM', math('SUBTRACT', 1.0, math('DIVIDE', cur, rl)), 0.0)
    d = vmath('NORMALIZE', vmath('SUBTRACT', r2, r1))
    along = vmath('DOT_PRODUCT', d, vmath('NORMALIZE', gin.outputs["Up"]))     # the face's own up, from its UVs
    vert = math('MULTIPLY', along, along)
    sv = math('MULTIPLY', squash, vert)
    sh = math('MULTIPLY', squash, math('SUBTRACT', 1.0, vert))
    geo = gin.outputs["Geometry"]
    for name, val in ((WRINKLE_SQUASH_V, sv), (WRINKLE_SQUASH_H, sh)):
        on = n("GeometryNodeFieldOnDomain")
        on.domain, on.data_type = 'EDGE', 'FLOAT'
        L(val, on.inputs[0])
        gain = math('MINIMUM', math('MULTIPLY', on.outputs[0], gin.outputs["Sensitivity"]), 1.0)
        st = n("GeometryNodeStoreNamedAttribute")
        st.data_type, st.domain = 'FLOAT', 'POINT'
        st.inputs["Name"].default_value = name
        L(geo, st.inputs["Geometry"])
        L(gain, st.inputs["Value"])
        geo = st.outputs["Geometry"]
    L(geo, gout.inputs["Geometry"])
    return ng


def face_up(ob, polys):
    """The face's up in object space: the direction its UV v grows, fitted over its own polygons. A head's object
    axes say nothing reliable - a Cast head can lie on its side - but its UV layout always has the chin at the bottom."""
    uvl = ob.data.uv_layers.active
    if uvl is None or not polys:
        return (0.0, 0.0, 1.0)
    rows, pos = [], []
    for p in polys[:4000]:
        for li in p.loop_indices:
            u, v = uvl.data[li].uv
            rows.append((u, v, 1.0))
            pos.append(tuple(ob.data.vertices[ob.data.loops[li].vertex_index].co))
    try:
        coef, *_ = np.linalg.lstsq(np.array(rows), np.array(pos), rcond=None)
    except Exception:
        return (0.0, 0.0, 1.0)
    up = Vector(coef[1])
    return tuple(up.normalized()) if up.length > 1e-9 else (0.0, 0.0, 1.0)


def add_wrinkle_drive(mat, settings):
    """Give every object using `mat` its rest shape and the squash measurement, after the armature."""
    group = get_squash_group()
    for ob, polys in _material_polygons(mat):
        if hasattr(ob, "add_rest_position_attribute"):
            ob.add_rest_position_attribute = True
        mod = ob.modifiers.get(WRINKLE_MOD_NAME)
        if mod is None:
            mod = ob.modifiers.new(WRINKLE_MOD_NAME, 'NODES')
        mod.node_group = group
        up = face_up(ob, polys)
        for item in group.interface.items_tree:
            name = getattr(item, "name", "")
            if getattr(item, "in_out", "") != 'INPUT':
                continue
            try:
                if name == "Sensitivity":
                    mod[item.identifier] = settings.wrinkle_sensitivity
                elif name == "Up":
                    mod[item.identifier] = up
            except (TypeError, KeyError):
                pass


def build_wrinkles(nt, links, nog_node, cs_node, gin, maps, settings, x, y):
    """Blend the four expression quadrants into the face NOG (normal and crease occlusion; the gloss stays the
    face's own) and, when there is one, into the colour. Returns the nodes made."""
    nog_atlas, col_atlas = maps
    made = []

    def node(kind, dx, dy, label=None):
        nd = nt.nodes.new(kind)
        nd.location = (x + dx, y + dy)
        if label:
            nd.label = label
        made.append(nd)
        return nd

    def vmath(op, a, b, dx, dy):
        m = node("ShaderNodeVectorMath", dx, dy)
        m.operation = op
        for i, v in enumerate((a, b)):
            if isinstance(v, bpy.types.NodeSocket):
                links.new(v, m.inputs[i])
            elif v is not None:
                m.inputs[i].default_value = v
        return m.outputs["Vector"]

    def math(op, a, b, dx, dy):
        m = node("ShaderNodeMath", dx, dy)
        m.operation = op
        for i, v in enumerate((a, b)):
            if isinstance(v, bpy.types.NodeSocket):
                links.new(v, m.inputs[i])
            else:
                m.inputs[i].default_value = v
        return m.outputs[0]

    u0, v0, size = WRINKLE_CROP
    uv = node("ShaderNodeTexCoord", -1400, 0).outputs["UV"]
    local = vmath('DIVIDE', vmath('SUBTRACT', uv, (u0, v0, 0.0), -1200, 0), (size, size, 1.0), -1050, 0)
    sep = node("ShaderNodeSeparateXYZ", -900, 150)
    links.new(local, sep.inputs[0])
    inside = math('MULTIPLY',
                  math('MULTIPLY', math('GREATER_THAN', sep.outputs["X"], 0.0, -750, 250),
                       math('LESS_THAN', sep.outputs["X"], 1.0, -750, 200), -600, 225),
                  math('MULTIPLY', math('GREATER_THAN', sep.outputs["Y"], 0.0, -750, 150),
                       math('LESS_THAN', sep.outputs["Y"], 1.0, -750, 100), -600, 125), -450, 175)
    half = vmath('SCALE', local, None, -900, 0)
    half.node.inputs["Scale"].default_value = 0.5
    sq_v = node("ShaderNodeAttribute", -900, -200, "Squash - vertical")
    sq_v.attribute_type, sq_v.attribute_name = 'GEOMETRY', WRINKLE_SQUASH_V
    sq_h = node("ShaderNodeAttribute", -900, -350, "Squash - horizontal")
    sq_h.attribute_type, sq_h.attribute_name = 'GEOMETRY', WRINKLE_SQUASH_H
    strength = node("ShaderNodeValue", -900, -500, "Wrinkle Strength")
    strength.name = WRINKLE_NODE_PREFIX + "Strength"
    strength.outputs[0].default_value = settings.wrinkle_strength

    base = nog_node.outputs["Color"]
    base_sep = node("ShaderNodeSeparateColor", -450, -650)
    links.new(base, base_sep.inputs[0])
    base_vec = node("ShaderNodeCombineXYZ", -300, -650)
    links.new(base_sep.outputs["Green"], base_vec.inputs["X"])
    links.new(base_sep.outputs["Blue"], base_vec.inputs["Y"])
    links.new(nog_node.outputs["Alpha"], base_vec.inputs["Z"])
    nog_sum, col_sum = base_vec.outputs[0], (cs_node.outputs["Color"] if cs_node is not None and col_atlas else None)
    dirs = wrinkle_directions(nog_atlas)
    for i, ((qu, qv), (dv, dh)) in enumerate(zip(WRINKLE_QUADS, dirs)):
        yy = -900 - i * 420
        q_uv = vmath('ADD', half, (qu, qv, 0.0), -750, yy)
        manual = node("ShaderNodeValue", -750, yy - 120, "Wrinkle %d" % (i + 1))
        manual.name = WRINKLE_NODE_PREFIX + str(i + 1)
        manual.outputs[0].default_value = 1.0 if settings.wrinkle_auto else 0.0
        if settings.wrinkle_auto:
            drive = math('ADD', math('MULTIPLY', sq_v.outputs["Fac"], dv, -600, yy - 220),
                         math('MULTIPLY', sq_h.outputs["Fac"], dh, -600, yy - 280), -450, yy - 250)
            w = math('MULTIPLY', drive, manual.outputs[0], -300, yy - 200)
        else:
            w = manual.outputs[0]
        w = math('MULTIPLY', math('MULTIPLY', w, inside, -150, yy - 200), strength.outputs[0], 0, yy - 200)
        tx = node("ShaderNodeTexImage", -600, yy, "Wrinkle NOG %d" % (i + 1))
        tx.image = load_image(nog_atlas, True, False)
        tx.extension = 'EXTEND'
        links.new(q_uv, tx.inputs["Vector"])
        qs = node("ShaderNodeSeparateColor", -300, yy)
        links.new(tx.outputs["Color"], qs.inputs[0])
        qv_ = node("ShaderNodeCombineXYZ", -150, yy)
        links.new(qs.outputs["Green"], qv_.inputs["X"])
        links.new(qs.outputs["Blue"], qv_.inputs["Y"])
        links.new(tx.outputs["Alpha"], qv_.inputs["Z"])
        delta = vmath('SUBTRACT', qv_.outputs[0], base_vec.outputs[0], 0, yy)
        scaled = node("ShaderNodeVectorMath", 150, yy)
        scaled.operation = 'SCALE'
        links.new(delta, scaled.inputs[0])
        links.new(w, scaled.inputs["Scale"])
        nog_sum = vmath('ADD', nog_sum, scaled.outputs["Vector"], 300, yy)
        if col_sum is not None:
            ct = node("ShaderNodeTexImage", -600, yy - 300, "Wrinkle Colour %d" % (i + 1))
            ct.image = load_image(col_atlas, False, False)
            ct.extension = 'EXTEND'
            links.new(q_uv, ct.inputs["Vector"])
            cdelta = vmath('SUBTRACT', ct.outputs["Color"], cs_node.outputs["Color"], 0, yy - 300)
            cscaled = node("ShaderNodeVectorMath", 150, yy - 300)
            cscaled.operation = 'SCALE'
            links.new(cdelta, cscaled.inputs[0])
            links.new(w, cscaled.inputs["Scale"])
            col_sum = vmath('ADD', col_sum, cscaled.outputs["Vector"], 300, yy - 300)
    out = node("ShaderNodeSeparateXYZ", 450, -650)
    links.new(nog_sum, out.inputs[0])
    rgb = node("ShaderNodeCombineColor", 600, -650, "NOG with wrinkles")
    links.new(base_sep.outputs["Red"], rgb.inputs["Red"])               # gloss stays the face's own
    links.new(out.outputs["X"], rgb.inputs["Green"])
    links.new(out.outputs["Y"], rgb.inputs["Blue"])
    links.new(rgb.outputs[0], gin["NOG Color"])
    links.new(out.outputs["Z"], gin["NOG Alpha"])
    if col_sum is not None:
        links.new(col_sum, gin["CS Color"])
    return made


def build_material(mat, slots, settings, metal_mode, hints=(), kind=None, real_name=None):
    """kind: force 'DEFAULT' / 'SKIN' / ... instead of guessing it from names and textures (map surfaces).
    real_name: the material's name from the game, when the export only had its hash."""
    if hasattr(mat, "use_nodes") and not mat.use_nodes:
        mat.use_nodes = True
    nt = mat.node_tree
    nt.nodes.clear()
    links = nt.links
    if slots["opacity"] and is_constant_white(slots["opacity"]):
        slots = dict(slots, opacity=None)
    name = real_name or mat.name
    kind = kind or classify(name, slots, hints)

    out = nt.nodes.new("ShaderNodeOutputMaterial")
    bsdf = nt.nodes.new("ShaderNodeBsdfPrincipled")
    links.new(bsdf.outputs[0], out.inputs["Surface"])

    grp = nt.nodes.new("ShaderNodeGroup")
    grp.node_tree = get_decode_group()
    grp.label = "CoD Surface Decode"
    grp.width = 260
    gin = grp.inputs

    textures = []

    def tex(path, data, packed, label):
        node = nt.nodes.new("ShaderNodeTexImage")
        node.image = load_image(path, data, packed)
        node.label = label
        node.width = 240
        textures.append(node)
        return node

    helpers = {}
    parallax = None
    if kind == 'EYE' and settings.eye_parallax:
        parallax = nt.nodes.new("ShaderNodeGroup")
        parallax.node_tree = get_eye_parallax_group()
        parallax.name = EYE_NODE_NAME
        parallax.label = "Eye Iris Depth"
        parallax.width = 200
        helpers["Eye · iris depth under the cornea"] = [parallax]

    cs_node = None
    if slots.get("cw"):
        return _build_cold_war(mat, nt, links, out, bsdf, slots, settings, kind, name, real_name,
                               tex, textures, helpers, parallax)

    if slots["cs"]:
        cs = tex(slots["cs"], False, True, "Color + Metal  (CS)")
        cs_node = cs
        links.new(cs.outputs["Color"], gin["CS Color"])
        links.new(cs.outputs["Alpha"], gin["CS Alpha"])
        if parallax:
            links.new(parallax.outputs["UV"], cs.inputs["Vector"])
    if slots["nog"]:
        nog = tex(slots["nog"], True, True, "Normal · Gloss · AO  (NOG)")
        links.new(nog.outputs["Color"], gin["NOG Color"])
        links.new(nog.outputs["Alpha"], gin["NOG Alpha"])
        if parallax:
            links.new(parallax.outputs["UV"], nog.inputs["Vector"])
        wrinkle_maps = slots.get("wrinkles") or (None, None)
        if kind == 'SKIN' and settings.skin_wrinkles and wrinkle_maps[0]:
            made = build_wrinkles(nt, links, nog, cs_node, gin, wrinkle_maps, settings,
                                  nog.location.x, nog.location.y - 600)
            helpers["Skin · wrinkle maps (2x2 expression atlas)"] = made
            if settings.wrinkle_auto:
                add_wrinkle_drive(mat, settings)
    eye_depth = None
    if kind == 'EYE' and slots["opacity"]:
        # an eyeball is not see-through: on MW4 eyes this slot (0x4a) is the iris depth - pupil lowest,
        # rising through the iris to the sclera - and used as opacity it hollowed the eye out
        eye_depth = slots["opacity"]
        slots = dict(slots)
        slots["opacity"] = None
    has_opacity = bool(slots["opacity"])
    translucent = False          # see-through all over (a window) rather than cut out (hair, foliage)
    stem = re.sub(r"\.\d{3}$", "", name).split("/")[-1]
    if (not has_opacity and cs_node is not None and kind == 'DEFAULT'
            and (TRANSPARENT_PART.search(stem)
                 or (TRANSLUCENT_PART.search(stem) and alpha_is_opacity(slots["cs"])))):
        # a magazine window or a piece of glass: its colour map's alpha is the transparency, not a
        # metalness mask (configure_decode's AUTO already declines to read a smooth alpha as metal)
        links.new(cs_node.outputs["Alpha"], gin["Opacity"])
        has_opacity = True
        translucent = True
    if slots["opacity"]:
        op = tex(slots["opacity"], True, False, "Opacity")
        opacity = op.outputs["Color"]
        if kind == 'TEARFILM' and "shadow" in name.lower() and slots["params"]:
            # the eye "mid_shadow" shell darkens the eyeball near the lids with the broad ring in 0x4e
            # alpha; 0x4a only holds the thin wet line along the lid margin
            ring = tex(slots["params"], True, True, "Eye Shadow Ring  (0x4e)")
            strength = nt.nodes.new("ShaderNodeMath")
            strength.operation = 'MULTIPLY'
            strength.name = EYE_SHADOW_NODE_NAME
            strength.label = "Lid Shadow Strength"
            links.new(ring.outputs["Alpha"], strength.inputs[0])
            strength.inputs[1].default_value = settings.eye_shadow
            both = nt.nodes.new("ShaderNodeMath")
            both.operation = 'MAXIMUM'
            both.label = "Wet Line + Shadow"
            links.new(opacity, both.inputs[0])
            links.new(strength.outputs[0], both.inputs[1])
            opacity = both.outputs[0]
            helpers["Eye · lid shadow"] = [strength, both]
        links.new(opacity, gin["Opacity"])
    if slots["emissive"]:
        em = tex(slots["emissive"], False, False, "Emission")
        links.new(em.outputs["Color"], gin["Emissive"])
        gin["Emission Gain"].default_value = emissive_gain(slots["emissive"])

    mask = configure_decode(gin, slots, settings, metal_mode, kind)

    if kind == 'SKIN' and settings.skin_sss:
        separable = settings.skin_style in ('SEPARABLE', 'INGAME')
        if separable:
            # this shader is the near lobe; the far one is its twin, added once the shader is complete
            prof = SSS_PROFILES.get(settings.sss_profile, SSS_PROFILES['PRODUCTION'])
            weight, radius = 1.0, prof["near"]
            base_cm = prof["s_mm"] * SSS_GAUSS_TO_RADIUS * settings.sss_size / 10.0
        else:
            weight, radius, base_cm = settings.sss_weight, SKIN_SSS_RADIUS, settings.sss_scale
        extra = ()
        if separable:
            # Christensen-Burley is a diffusion profile, the family the report's Gaussians are fitted to
            if 'BURLEY' in {i.identifier for i in bsdf.bl_rna.properties["subsurface_method"].enum_items}:
                bsdf.subsurface_method = 'BURLEY'
            extra = ((("Diffuse Roughness",), SKIN_DIFFUSE_ROUGHNESS),)
        else:
            # Random Walk (Skin) is Cycles' measured skin medium: it keeps the red bleed while holding on to
            # the pores and the shading in the concha of an ear, which plain random walk washes into wax
            if 'RANDOM_WALK_SKIN' in {i.identifier for i in
                                      bsdf.bl_rna.properties["subsurface_method"].enum_items}:
                bsdf.subsurface_method = 'RANDOM_WALK_SKIN'
            extra = ((("Subsurface Anisotropy",), SKIN_SSS_ANISOTROPY),
                     (("Diffuse Roughness",), SKIN_DIFFUSE_ROUGHNESS))
        for names, value in ((("Subsurface Weight", "Subsurface"), weight),
                             (("Subsurface Radius",), radius)) + extra:
            sock = _principled_input(bsdf, *names)
            if sock is not None:
                sock.default_value = value
        wsock = _principled_input(bsdf, "Subsurface Weight", "Subsurface")
        if settings.skin_style == 'INGAME' and slots.get("scatter_mask") and wsock is not None:
            # MW (2019): scatter only where the game's mask says it is skin
            mtex = tex(slots["scatter_mask"], True, False, "Scatter Mask  (MW19 0x7f)")
            masked = nt.nodes.new("ShaderNodeMath")
            masked.operation = 'MULTIPLY'
            masked.label = "Scatter x Mask"
            links.new(mtex.outputs["Color"], masked.inputs[0])
            masked.inputs[1].default_value = weight
            links.new(masked.outputs[0], wsock)
            helpers["Skin · scatter mask"] = [masked]
        scale_in = _principled_input(bsdf, "Subsurface Scale")
        if scale_in is not None:
            scale_out, sss_nodes = _sss_scale_nodes(nt, base_cm)
            links.new(scale_out, scale_in)
            helpers["Skin · SSS scale (follows object scale)"] = sss_nodes

    if kind == 'SKIN' and settings.skin_oil > 0.0:
        # A thin film of sebum over the diffuse skin. Real skin is never uniformly oily, so the film follows the
        # game's own gloss map - forehead, nose and lips read shiny, cheeks matte - and thins inside pores and
        # creases via the AO channel. A flat coat over the whole face is what makes skin look like plastic.
        #
        # The gloss LEVEL, though, is not comparable between games or even between body parts: MWII writes 0.89
        # over a hip and 0.50 over an arm of the same character, where BO7 heads sit near 0.2. Driving the film
        # off the raw value gave that hip a 30% clearcoat - wet plastic. Only the variation across one map is
        # meaningful, so the film is measured against this material's own average gloss: 1.0 is ordinary skin
        # for this texture, above it is the T-zone.
        average = nt.nodes.new("ShaderNodeMath")
        average.operation = 'DIVIDE'
        average.label = "Gloss vs This Skin's Average"
        links.new(grp.outputs["Gloss"], average.inputs[0])
        average.inputs[1].default_value = mean_gloss(slots["nog"])
        shiny = nt.nodes.new("ShaderNodeMath")
        shiny.operation = 'MULTIPLY'
        shiny.label = "Oil Where Skin Is Shiny"
        links.new(average.outputs[0], shiny.inputs[0])
        links.new(grp.outputs["Occlusion"], shiny.inputs[1])
        amount = nt.nodes.new("ShaderNodeMath")
        amount.operation = 'MULTIPLY'
        amount.name = SKIN_OIL_NODE_NAME
        amount.label = "Skin Oil"
        links.new(shiny.outputs[0], amount.inputs[0])
        amount.inputs[1].default_value = settings.skin_oil
        capped = nt.nodes.new("ShaderNodeMath")
        capped.operation = 'MINIMUM'
        capped.label = "Never A Mirror"
        links.new(amount.outputs[0], capped.inputs[0])
        capped.inputs[1].default_value = SKIN_OIL_MAX
        film = nt.nodes.new("ShaderNodeMapRange")
        film.label = "Oil Film Roughness"
        film.inputs["Value"].default_value = 0.0
        links.new(average.outputs[0], film.inputs["Value"])
        film.inputs["From Max"].default_value = 2.0
        film.inputs["To Min"].default_value, film.inputs["To Max"].default_value = SKIN_OIL_ROUGHNESS
        for name, src in (("Coat Weight", capped.outputs[0]), ("Coat Roughness", film.outputs[0])):
            sock = _principled_input(bsdf, name)
            if sock is not None:
                links.new(src, sock)
        ior = _principled_input(bsdf, "Coat IOR")
        if ior is not None:
            ior.default_value = SKIN_OIL_IOR
        helpers["Skin · oil film"] = [average, shiny, amount, capped, film]

    if kind == 'EYE':
        # wet cornea: CoD's eye techset adds this in-shader, the textures only carry the matte eyeball. The tissue
        # under it barely reflects - left at a skin-like level, its rough reflection laid a grey veil of the sky
        # over a brown iris - so the wet reflection is the coat's alone
        for names, value in ((("Coat Weight",), 1.0), (("Coat Roughness",), EYE_COAT_ROUGHNESS),
                             (("Coat IOR",), EYE_CORNEA_IOR), (("Specular IOR Level",), EYE_BASE_SPECULAR)):
            sock = _principled_input(bsdf, *names)
            if sock is not None:
                sock.default_value = value

    finish = {}
    if kind == 'DEFAULT' and settings.weapon_finish and is_weapon_material(name, slots, hints):
        wpn = nt.nodes.new("ShaderNodeGroup")
        wpn.node_tree = get_weapon_group()
        wpn.name = WEAPON_NODE_NAME
        wpn.label = "Weapon Finish"
        wpn.width = 240
        for src in ("Base Color", "Metallic", "Roughness"):
            links.new(grp.outputs[src], wpn.inputs[src])
        if slots.get("layer2") and slots.get("layer2_color") and settings.weapon_layer2:
            marble = tex(slots["layer2_color"], False, True, "Blueprint Layer Tint")
            where = tex(slots["layer2"], True, True, "Blueprint Layer Mask")
            # the mask marks the layer sitting on top of this one, so the blueprint's own layer shows
            # where it goes dark - the other way round buries the artwork on the receiver
            under = nt.nodes.new("ShaderNodeMath")
            under.operation = 'SUBTRACT'
            under.label = "Where the Layer Shows"
            under.inputs[0].default_value = 1.0
            under.use_clamp = True
            links.new(where.outputs["Color"], under.inputs[1])
            links.new(under.outputs[0], wpn.inputs["Layer Mask"])
            links.new(marble.outputs["Color"], wpn.inputs["Layer Color"])
            _set_input(wpn, "Layer Tint", tuple(settings.weapon_layer_tint) + (1.0,))
            _set_input(wpn, "Layer Amount", settings.weapon_layer_amount)
            helpers["Weapon · blueprint layer"] = [under]
        links.new(grp.outputs["Occlusion"], wpn.inputs["Occlusion"])
        wear, wear_nodes = _weapon_wear_source(nt, slots, tex)
        links.new(wear, wpn.inputs["Wear"])
        camo_finish = {}
        camo_mask, camo_color, camo_bump, camo_nodes = _weapon_camo_source(nt, slots, settings, tex, camo_finish)
        if camo_finish.get("gloss") is not None:
            _set_input(wpn, "Camo Finish", 1.0)
            _set_input(wpn, "Camo Roughness", max(0.03, 1.0 - camo_finish["gloss"]))   # BO7/MW4: 1 - gloss
        if camo_mask == 'DEFERRED':
            camo_mask = None
            mat["cod_camo_deferred"] = True
        elif "cod_camo_deferred" in mat:
            del mat["cod_camo_deferred"]
        if camo_mask is not None and not settings.weapon_camo_unmasked:
            links.new(camo_mask, wpn.inputs["Camo Mask"])
        else:
            # no mask in the export, or the user asked for the whole gun: the part is paintable all over.
            # Camo Amount is 0 by default, so this changes nothing until the slider is raised. A constant
            # stand-in mask says how much camo the part takes (0 on a BO7 magazine)
            _set_input(wpn, "Camo Mask", 1.0 if settings.weapon_camo_unmasked else slots.get("camo_const", 1.0))
        if camo_color is not None:
            links.new(camo_color, wpn.inputs["Camo Color"])
        else:
            _set_input(wpn, "Camo Color", tuple(settings.weapon_camo_color) + (1.0,))
        # normals stack: the part's own map, the blueprint's second layer where its mask sits, then a
        # camo's surface over both. Each is blended as a tangent-space colour and decoded once at the end.
        surface, layer_nodes = _weapon_layer2(nt, grp, slots, tex)
        camo_nodes += layer_nodes
        plain = grp.outputs["Normal Color"]
        if surface is None:
            surface = plain
        if camo_bump is not None and camo_mask is not None and not settings.weapon_camo_unmasked:
            blend = nt.nodes.new("ShaderNodeMix")
            blend.data_type = 'RGBA'
            blend.label = "Camo Surface"
            blend.clamp_factor = True
            links.new(camo_mask, blend.inputs[0])
            links.new(surface, blend.inputs[6])
            links.new(camo_bump, blend.inputs[7])
            camo_nodes.append(blend)
            surface = blend.outputs[2]
        finish_normal = None
        if surface is not plain:
            nmap = nt.nodes.new("ShaderNodeNormalMap")
            nmap.inputs["Strength"].default_value = settings.normal_strength * (
                WEAPON_CAMO_BUMP if camo_bump is not None else 1.0)
            links.new(surface, nmap.inputs["Color"])
            camo_nodes.append(nmap)
            finish_normal = nmap.outputs["Normal"]
        _set_input(wpn, "Wear Amount", settings.weapon_wear)
        _set_input(wpn, "Grime", settings.weapon_grime)
        _set_input(wpn, "Camo Amount", settings.weapon_camo)
        _set_input(wpn, "Roughness Bias", weapon_part(name, hints)[1])
        if slots.get("tint_mask") and settings.weapon_tint:
            regions = tex(slots["tint_mask"], True, True, "Paint Regions  (tint)")
            split = nt.nodes.new("ShaderNodeSeparateColor")
            split.label = "Region 1 / Region 2"
            links.new(regions.outputs["Color"], split.inputs[0])
            links.new(split.outputs["Red"], wpn.inputs["Tint A Mask"])
            links.new(split.outputs["Green"], wpn.inputs["Tint B Mask"])
            _set_input(wpn, "Tint A", tuple(settings.weapon_tint_a) + (1.0,))
            _set_input(wpn, "Tint B", tuple(settings.weapon_tint_b) + (1.0,))
            helpers["Weapon · blueprint paint"] = [split]
        if slots.get("aniso") and settings.weapon_aniso > 0.0:
            helpers["Weapon · brushed metal"] = _weapon_aniso(nt, bsdf, slots, settings, tex)
        finish = {src: wpn.outputs[src] for src in ("Base Color", "Metallic", "Roughness")}
        if finish_normal is not None:
            finish["Normal"] = finish_normal
        helpers["Weapon · worn paint and grime"] = wear_nodes + camo_nodes + [wpn]

    if kind == 'EYE' and settings.eye_iris_relief:
        # the user's own height map if they pointed at one, otherwise the brightness of the eye's colour
        # map: CoD paints the iris fibres into it, so it is a serviceable height field on its own
        path = bpy.path.abspath(settings.eye_iris_map or "")
        height_src, relief_nodes, relief_strength = None, [], None
        # a file, not just a path that exists: a folder picked here (the Models folder) crashed the whole shade
        if path and os.path.isfile(path):
            hmap = tex(path, True, False, "Iris Height")
            height_src = hmap.outputs["Color"]
            # an iris map is drawn edge to edge; the eye's iris is a small disc at the middle of its
            # texture, so blow the disc up to the whole map before sampling it
            centered = nt.nodes.new("ShaderNodeVectorMath")
            centered.operation = 'SUBTRACT'
            centered.label = "Iris Center"
            centered.inputs[1].default_value = (0.5, 0.5, 0.0)
            fit = nt.nodes.new("ShaderNodeMapping")
            fit.label = "Fit Map to Iris"
            fit.inputs["Location"].default_value = (0.5, 0.5, 0.0)
            zoom = 1.0 / (2.0 * EYE_IRIS_RADIUS)
            fit.inputs["Scale"].default_value = (zoom, zoom, 1.0)
            if parallax:
                links.new(parallax.outputs["UV"], centered.inputs[0])
            else:
                uvs = nt.nodes.new("ShaderNodeTexCoord")
                links.new(uvs.outputs["UV"], centered.inputs[0])
                relief_nodes.append(uvs)
            links.new(centered.outputs["Vector"], fit.inputs["Vector"])
            links.new(fit.outputs["Vector"], hmap.inputs["Vector"])
            hmap.extension = 'EXTEND'        # outside the disc the map's border, not a tiled repeat
            relief_nodes += [centered, fit]
        elif eye_depth:
            depth = tex(eye_depth, True, False, "Iris Depth  (0x4a)")
            if parallax:
                links.new(parallax.outputs["UV"], depth.inputs["Vector"])
            height_src = depth.outputs["Color"]
            relief_strength = EYE_DEPTH_RELIEF
        elif cs_node is not None:
            grey = nt.nodes.new("ShaderNodeRGBToBW")
            grey.label = "Iris Height (from colour)"
            links.new(cs_node.outputs["Color"], grey.inputs[0])
            height_src = grey.outputs[0]
            relief_nodes.append(grey)
        if height_src is not None:
            relief = nt.nodes.new("ShaderNodeGroup")
            relief.node_tree = get_eye_relief_group()
            relief.name = EYE_RELIEF_NODE_NAME
            relief.label = "Iris Relief"
            relief.width = 200
            links.new(height_src, relief.inputs["Height"])
            links.new(grp.outputs["Normal"], relief.inputs["Normal"])
            if relief_strength is not None:
                _set_input(relief, "Relief", relief_strength)
            if parallax:
                links.new(parallax.outputs["Iris Mask"], relief.inputs["Iris Mask"])
            finish["Normal"] = relief.outputs["Normal"]
            if "Displacement" in out.inputs:
                links.new(relief.outputs["Displacement"], out.inputs["Displacement"])
            # true geometry only: the bump above already shades the relief, and leaving the material on
            # Blender's default "Bump Only" would apply the same height twice
            if hasattr(mat, "displacement_method"):
                mat.displacement_method = 'DISPLACEMENT'
            relief_nodes.append(relief)
            helpers["Eye · iris relief"] = relief_nodes

    if kind == 'EYE' and settings.eye_iris_angle:
        helpers["Eye · iris by viewing angle"] = _eye_iris_angle(nt, bsdf, grp, parallax, finish)

    wiring = (
        ("Base Color", ("Base Color",)),
        ("Metallic", ("Metallic",)),
        ("Roughness", ("Roughness",)),
        ("IOR", ("IOR",)),
        ("Normal", ("Normal",)),
        ("Alpha", ("Alpha",)),
        ("Emission Color", ("Emission Color", "Emission")),
        ("Emission Strength", ("Emission Strength",)),
    )
    shader = bsdf
    card = get_hair_card_group(settings) if kind == 'HAIR' and settings.hair_shader and \
        settings.hair_style == 'CARD' and not HAIR_CARD_SHORT.search(name.lower()) else None
    if card is not None:
        hair = nt.nodes.new("ShaderNodeGroup")
        hair.node_tree = card
        hair.name = HAIR_CARD_NODE_NAME
        hair.label = "Hair Card Shader"
        hair.width = 260
        hin = hair.inputs
        for socket, value in HAIR_CARD_DEFAULTS:
            _set_input(hair, socket, value)
        if settings.hair_use_game_color and "Base Color" in hin:
            bright = nt.nodes.new("ShaderNodeMix")
            bright.data_type = 'RGBA'
            bright.blend_type = 'MULTIPLY'
            bright.name = HAIR_BRIGHT_NODE
            bright.label = "Hair Brightness"
            bright.inputs[0].default_value = 1.0
            links.new(grp.outputs["Base Color"], bright.inputs[6])
            v = settings.hair_brightness
            bright.inputs[7].default_value = (v, v, v, 1.0)
            links.new(bright.outputs[2], hin["Base Color"])
            helpers["Hair · brightness"] = [bright]
        else:
            _set_input(hair, "Base Color", tuple(settings.hair_color) + (1.0,))
        if "Alpha" in hin and has_opacity:
            links.new(grp.outputs["Alpha"], hin["Alpha"])
        if "Normal Map" in hin and slots["nog"]:
            links.new(grp.outputs["Normal Color"], hin["Normal Map"])
        _set_input(hair, "Highlight Color", tuple(settings.hair_highlight) + (1.0,))
        shader_out = hair.outputs.get("Shader") or next((o for o in hair.outputs if o.type == 'SHADER'), None)
        if shader_out is not None:
            links.new(shader_out, out.inputs["Surface"])
        thick = hair.outputs.get("Thickness")
        if thick is not None and "Thickness" in out.inputs:
            links.new(thick, out.inputs["Thickness"])
        nt.nodes.remove(bsdf)
        shader = hair
        has_opacity = True                       # the card shader cuts its own alpha: always render dithered
    elif kind == 'HAIR' and settings.hair_shader:
        hair = nt.nodes.new("ShaderNodeGroup")
        hair.node_tree = get_hair_group()
        hair.name = HAIR_NODE_NAME
        hair.label = "CoD Hair Shader"
        hair.width = 260
        hin = hair.inputs
        links.new(grp.outputs["Base Color"], hin["Color"])
        links.new(grp.outputs["Normal"], hin["Normal"])
        links.new(grp.outputs["Alpha"], hin["Alpha"])
        links.new(grp.outputs["Occlusion"], hin["Occlusion"])
        if slots["strand"]:
            strand = tex(slots["strand"], True, False, "Hair Strands  (0x4d)")
            links.new(strand.outputs["Color"], hin["Strand ID"])
        links.new(hair.outputs["Shader"], out.inputs["Surface"])
        nt.nodes.remove(bsdf)
        shader = hair
    else:
        if kind == 'DEFAULT':
            # skin, hair and eyes set their own diffuse and specular; plain surfaces take the decode's
            wiring = wiring + (("Specular Level", ("Specular IOR Level",)),
                               ("Diffuse Roughness", ("Diffuse Roughness",)))
        for src, dst_names in wiring:
            if src == "Alpha" and not has_opacity:
                continue          # no opacity map: leave Alpha at 1 rather than wiring a constant
            dst = _principled_input(bsdf, *dst_names)
            if dst is not None:
                links.new(finish.get(src) or grp.outputs[src], dst)

    if (kind == 'SKIN' and settings.skin_sss and settings.skin_style in ('SEPARABLE', 'INGAME')
            and bsdf is not None and bsdf.as_pointer() in {n.as_pointer() for n in nt.nodes}):
        far = _separable_far_lobe(nt, bsdf, settings)
        if far is not None:
            helpers["Skin · separable far scatter"] = far

    surf = out.inputs["Surface"]
    if (kind == 'SKIN' and settings.skin_sss and settings.skin_style == 'INGAME' and slots.get("translucency")
            and bsdf is not None
            and surf.is_linked and bsdf.as_pointer() in {n.as_pointer() for n in nt.nodes}):
        # MW (2019) translucency: light through ears and nostrils, deep red (albedo squared: it crossed the skin
        # twice). Translucent BSDF only takes light from behind, so a front-lit face is unchanged
        ttex = tex(slots["translucency"], True, False, "Translucency  (MW19 0x44)")
        base_in = bsdf.inputs["Base Color"]
        sq = nt.nodes.new("ShaderNodeVectorMath")
        sq.operation = 'MULTIPLY'
        if base_in.is_linked:
            links.new(base_in.links[0].from_socket, sq.inputs[0])
            links.new(base_in.links[0].from_socket, sq.inputs[1])
        else:
            sq.inputs[0].default_value = sq.inputs[1].default_value = base_in.default_value[:3]
        amount = nt.nodes.new("ShaderNodeMath")
        amount.operation = 'MULTIPLY'
        amount.label = "Translucency Strength"
        links.new(ttex.outputs["Color"], amount.inputs[0])
        amount.inputs[1].default_value = MW19_TRANSMIT
        tint = nt.nodes.new("ShaderNodeVectorMath")
        tint.operation = 'SCALE'
        links.new(sq.outputs[0], tint.inputs[0])
        links.new(amount.outputs[0], tint.inputs["Scale"])
        through = nt.nodes.new("ShaderNodeBsdfTranslucent")
        links.new(tint.outputs[0], through.inputs["Color"])
        normal_in = bsdf.inputs.get("Normal")
        if normal_in is not None and normal_in.is_linked:
            links.new(normal_in.links[0].from_socket, through.inputs["Normal"])
        both = nt.nodes.new("ShaderNodeAddShader")
        both.label = "Skin + Translucency"
        src = surf.links[0].from_socket
        links.new(src, both.inputs[0])
        links.new(through.outputs[0], both.inputs[1])
        links.new(both.outputs[0], surf)
        helpers["Skin · translucency (ears, nostrils)"] = [sq, amount, tint, through, both]

    _arrange(nt, textures, grp, shader, out, helpers)

    if has_opacity:
        # DITHERED is stochastic cut-out transparency: right for hair and foliage, where alpha is 0 or 1
        # and the dither pattern resolves against a clean edge. A window is see-through across its whole
        # face, and dithering that gives a speckled half-dissolve that reads as solid in the viewport.
        if hasattr(mat, "surface_render_method"):
            mat.surface_render_method = 'BLENDED' if translucent else 'DITHERED'
        elif hasattr(mat, "blend_method"):
            mat.blend_method = 'BLEND' if translucent else 'HASHED'
        mat.use_backface_culling = translucent
        if translucent:
            # A CoD window is two shells: one facing out (the near wall's outside) and one facing in (the
            # far wall's inside). The game culls back faces, so each wall is drawn once. Drawn double-sided,
            # the near wall stacks both shells and the light that gets through drops to a fraction - the mag
            # goes near black. Cycles ignores use_backface_culling, so the cull is done in the shader too.
            if hasattr(mat, "use_transparency_overlap"):
                mat.use_transparency_overlap = True      # the near and far walls both show
            surf = out.inputs["Surface"]
            if surf.is_linked:
                src = surf.links[0].from_socket
                geo = nt.nodes.new("ShaderNodeNewGeometry")
                clear = nt.nodes.new("ShaderNodeBsdfTransparent")
                cull = nt.nodes.new("ShaderNodeMixShader")
                cull.name = cull.label = "Cull Back Faces"
                links.new(geo.outputs["Backfacing"], cull.inputs[0])
                links.new(src, cull.inputs[1])
                links.new(clear.outputs[0], cull.inputs[2])
                links.new(cull.outputs[0], surf)
                x, y = out.location
                out.location = (x + 220, y)
                cull.location = (x, y)
                geo.location = (x - 200, y + 220)
                clear.location = (x - 200, y - 160)

    mat["cod_shaded"] = True
    mat["cod_kind"] = kind
    mat["cod_metal_mask"] = mask
    mat["cod_game"] = material_game(slots, settings)
    if real_name:
        mat["cod_name"] = real_name
    return mask


def _build_cold_war(mat, nt, links, out, bsdf, slots, settings, kind, name, real_name,
                    tex, textures, helpers, parallax):
    """Wire a Black Ops Cold War material: named, unpacked slots into the Cold War decode group."""
    grp = nt.nodes.new("ShaderNodeGroup")
    grp.node_tree = get_cw_decode_group()
    grp.name = CW_NODE_NAME
    grp.label = "Cold War Decode"
    grp.width = 260
    gin = grp.inputs

    def wire(role, socket, data, packed, label, alpha_to=None):
        path = slots.get("cw_" + role)
        if not path:
            return None
        node = tex(path, data, packed, label)
        links.new(node.outputs["Color"], gin[socket])
        if alpha_to is not None:
            links.new(node.outputs["Alpha"], gin[alpha_to])
        if parallax:
            links.new(parallax.outputs["UV"], node.inputs["Vector"])
        return node

    # the colour map's alpha is the opacity on hair cards and eyes, which carry no alphaMap
    # when the cut-out lives in the colour map's alpha, take it from that same node
    in_color = slots.get("cw_alpha_in_color")
    colour = wire("color", "Color", False, True, "Color  (colorMap)",
                  alpha_to="Opacity" if in_color else None)
    wire("normal", "Normal Map", True, True, "Normal  (normalMap)")
    wire("roughness", "Roughness Map", True, False, "Roughness  (perceptualRoughnessMap)")
    wire("ao", "Occlusion", True, False, "Occlusion  (aoMap)")
    wire("spec", "Spec Color", False, True, "Spec F0  (specColorMap)")
    if not in_color:
        wire("alpha", "Opacity", True, False, "Opacity  (alphaMap)")

    # the tiling detail normals, and the mask that says where each one goes
    detail_nodes = []
    tiling = None

    def tiled(path, socket, label):
        """A detail normal on its own tiling UVs, sharing one Mapping node with the others."""
        nonlocal tiling
        node = tex(path, True, True, label)
        links.new(node.outputs["Color"], gin[socket])
        if tiling is None:
            # Detail normals repeat many times across a garment, but the export does not carry the
            # shader constant that says how many - so this is one Mapping node, defaulted to a
            # plausible tiling and left on the graph for the user to set.
            coord = nt.nodes.new("ShaderNodeTexCoord")
            coord.label = "Detail UVs"
            tiling = nt.nodes.new("ShaderNodeMapping")
            tiling.name = CW_TILING_NODE_NAME
            tiling.label = "Detail Tiling"
            tiling.inputs["Scale"].default_value = (settings.cw_detail_tiling,) * 3
            links.new(coord.outputs["UV"], tiling.inputs["Vector"])
            detail_nodes.extend([coord, tiling])
        links.new(tiling.outputs["Vector"], node.inputs["Vector"])
        return node

    if slots.get("cw_detail"):
        tiled(slots["cw_detail"], "Detail Base", "Detail  (detailMap)")
    if slots.get("cw_detail_mask"):
        mask = tex(slots["cw_detail_mask"], True, True, "Detail Mask  (detailNormalMask)")
        links.new(mask.outputs["Color"], gin["Detail Mask"])
        if parallax:
            links.new(parallax.outputs["UV"], mask.inputs["Vector"])
        # detailNormal4 is named by 34 materials in the Cold War exports here and is the
        # $identitynormalmap placeholder in every one, and the mask has no fourth channel to drive it
        # (its alpha is flat opaque padding), so there is nothing to wire it against.
        for i in (1, 2, 3):
            if slots.get("cw_detail%d" % i):
                tiled(slots["cw_detail%d" % i], "Detail %d" % i, "Detail %d" % i)
    if detail_nodes:
        helpers["Cold War · tiling detail"] = detail_nodes

    # a Cold War eye keeps its vessel and iris relief in the colour map's alpha
    normal_out = grp.outputs["Normal"]
    if kind == 'EYE' and settings.eye_iris_relief and colour is not None:
        relief = nt.nodes.new("ShaderNodeGroup")
        relief.node_tree = get_eye_relief_group()
        relief.name = EYE_RELIEF_NODE_NAME
        relief.label = "Iris Relief"
        relief.width = 200
        links.new(colour.outputs["Alpha"], relief.inputs["Height"])
        links.new(grp.outputs["Normal"], relief.inputs["Normal"])
        # zero baseline, and no iris mask: the vessels this map carries are on the sclera
        _set_input(relief, "Midlevel", 0.0)
        _set_input(relief, "Iris Mask", 1.0)
        normal_out = relief.outputs["Normal"]
        if "Displacement" in out.inputs:
            links.new(relief.outputs["Displacement"], out.inputs["Displacement"])
        if hasattr(mat, "displacement_method"):
            mat.displacement_method = 'DISPLACEMENT'
        helpers["Eye · iris relief"] = [relief]

    _set_input(grp, "Normal Strength", settings.normal_strength)
    _set_input(grp, "Roughness Min", 0.0 if kind in ('SKIN', 'HAIR', 'EYE') else
               (surface_roughness_floor(settings) if settings.roughness_auto else settings.roughness_min))

    has_opacity = bool(slots.get("cw_alpha"))
    if kind == 'EYE':
        for names, value in ((("Coat Weight",), 1.0), (("Coat Roughness",), EYE_COAT_ROUGHNESS),
                             (("Coat IOR",), EYE_CORNEA_IOR)):
            sock = _principled_input(bsdf, *names)
            if sock is not None:
                sock.default_value = value
    if kind == 'SKIN' and settings.skin_sss:
        for names, value in ((("Subsurface Weight", "Subsurface"), settings.sss_weight),
                             (("Subsurface Radius",), SKIN_SSS_RADIUS)):
            sock = _principled_input(bsdf, *names)
            if sock is not None:
                sock.default_value = value
        if 'RANDOM_WALK_SKIN' in {i.identifier for i in
                                  bsdf.bl_rna.properties["subsurface_method"].enum_items}:
            bsdf.subsurface_method = 'RANDOM_WALK_SKIN'
        scale = _principled_input(bsdf, "Subsurface Scale")
        if scale is not None:
            scale.default_value = settings.sss_scale * 0.01

    for src, dst_names in (("Base Color", ("Base Color",)), ("Metallic", ("Metallic",)),
                           ("Roughness", ("Roughness",)),
                           ("Specular", ("Specular IOR Level", "Specular")),
                           ("Normal", ("Normal",)), ("Alpha", ("Alpha",))):
        dst = _principled_input(bsdf, *dst_names)
        if dst is not None:
            links.new(normal_out if src == "Normal" else grp.outputs[src], dst)

    _arrange(nt, textures, grp, bsdf, out, helpers)
    if has_opacity:
        if hasattr(mat, "surface_render_method"):
            mat.surface_render_method = 'DITHERED'
        elif hasattr(mat, "blend_method"):
            mat.blend_method = 'HASHED'
        mat.use_backface_culling = False
    mat["cod_shaded"] = True
    mat["cod_kind"] = kind
    mat["cod_metal_mask"] = 0.0
    mat["cod_game"] = 'CW'
    if real_name:
        mat["cod_name"] = real_name
    return 0.0


def _arrange(nt, textures, decode, shader, out, helpers):
    """Beginner-friendly layout: framed columns Maps -> Decode -> Shader -> Output, wires left to right."""
    for i, t in enumerate(textures):
        t.location = (X_TEX, Y_TOP - i * TEX_STEP)
        _hide_unused(t)
    decode.location = (X_DEC, Y_TOP)
    _hide_unused(decode, only=DECODE_MAP_INPUTS)
    _hide_unused(decode, inputs=False)
    shader.location = (X_SHADER, Y_TOP)
    out.location = (X_OUT, Y_TOP)

    # Solid viewport shading with Color = Texture cannot see through a node group, so it falls back to the
    # material's ACTIVE image node. Nothing was marking one, which left Blender picking an arbitrary map -
    # usually a normal map, which paints the whole model lavender. Point it at the colour map.
    colour = next((n for n in textures if (n.label or "").startswith("Color")), None)
    if colour is not None:
        try:
            nt.nodes.active = colour
        except (AttributeError, TypeError):
            pass

    _frame(nt, "1 · Texture maps (from Saluki)", "tex", textures)
    _frame(nt, "2 · CoD decode (tweak the Adjust sliders)", "decode", [decode])
    _frame(nt, "3 · Shader", "shader", [shader, out])

    # helper frames below the decode column; the eye depth node sits left of the maps it drives
    y = Y_TOP - 600
    for label, nodes_in in helpers.items():
        if label.startswith("Eye · iris depth"):
            nodes_in[0].location = (X_EYE, Y_TOP)
        elif label.startswith("Eye · iris relief"):
            for j, n in enumerate(nodes_in):
                n.location = (X_EYE + j * 200, Y_TOP - 420)
        else:
            for j, n in enumerate(nodes_in):
                n.location = (X_DEC + j * 190, y)
            y -= 260
        _frame(nt, label, "helper", nodes_in)

    tip = nt.nodes.new("NodeFrame")
    tip.label = "Tip: adjust the sliders on the green nodes, or use the CoD tab in the sidebar (N)"
    tip.label_size = 18
    tip.use_custom_color = True
    tip.color = FRAME_COLORS["tip"]
    tip.shrink = False
    tip.location = (X_TEX, Y_TOP + 150)
    tip.width = X_OUT + 200 - X_TEX
    tip.height = 70


# --------------------------------------------------------------------------------------------
# Sights: lens glass, collimated red-dot reticle, picture-in-picture scope (Cycles Ray Portal)
# --------------------------------------------------------------------------------------------
# Lens meshes are flat discs facing the shooter (MWII's att_lens_minireddot on tag_reflex, the scope eyepiece
# stack on tag_lense), so the sight axis is the lens normal pointing away from the eye. A collimated reticle
# depends only on the viewing ANGLE to that axis, not on where the eye ray crosses the glass, so it stays on
# the aim point when the head moves - like the game. The scope surface (ads_scope_lens*) re-shoots every eye
# ray from past the objective lens with its off-axis angle divided by the zoom: a real magnified
# picture-in-picture, framed by the game's eye-relief disc (the scope shadow) and a crosshair.

SIGHT_NODE_NAME = "CoD Sight"
SIGHT_GROUP_VERSION = 2
RETICLE_NODE_NAME = "CoD Reticle Light"
# Game lens meshes are slightly domed (the MWII scope eyepiece: 2.4 mm over 3.9 cm, face normals up to 12 deg
# off), which would bend a collimated reticle and the zoomed view. A geometry-nodes modifier after the armature
# stores each lens material's area-weighted mean normal as a face attribute: a flat axis that follows animation.
SIGHT_AXIS_ATTR = "cod_sight_axis"
SIGHT_AXIS_MODIFIER = "CoD Sight Axis"
SCOPE_PORTAL_OFFSET_CM = 40.0     # fallback; measured per scope from its objective lens when possible
SCOPE_PORTAL_MARGIN_CM = 3.0
SCOPE_CLEAR_RADIUS_CM = 15.0      # weapon parts this close to the scope axis are skipped by the magnified view
ARM_BONE_PREFIXES = ("j_wrist", "j_elbow", "j_shoulder", "j_clavicle", "j_index", "j_thumb")
LENS_IOR = 1.52
LENS_REFLECTION_NODE_NAME = "CoD Lens Reflection"
COATED_LENS_REFLECTION = 0.25     # scope optics are anti-reflection coated; bare glass reflects ~4%
DEG = 0.0174533


def _live_socket(sockets, name):
    """Sockets of type-switching nodes share a name across hidden variants; take the enabled one."""
    return next(s for s in sockets if s.name.startswith(name) and s.enabled)


def get_sight_axis_nodes():
    name = "CoD Sight Axis v1"
    ng = bpy.data.node_groups.get(name)
    if ng is not None:
        return ng
    ng = bpy.data.node_groups.new(name, "GeometryNodeTree")
    if hasattr(ng, "is_modifier"):
        ng.is_modifier = True
    ng.interface.new_socket("Geometry", in_out="INPUT", socket_type="NodeSocketGeometry")
    ng.interface.new_socket("Geometry", in_out="OUTPUT", socket_type="NodeSocketGeometry")
    nodes, link = ng.nodes, ng.links.new
    gi = nodes.new("NodeGroupInput")
    gi.location = (-800, 0)
    go = nodes.new("NodeGroupOutput")
    go.location = (400, 0)
    normal = nodes.new("GeometryNodeInputNormal")
    normal.location = (-800, -200)
    area = nodes.new("GeometryNodeInputMeshFaceArea")
    area.location = (-800, -350)
    lens_id = nodes.new("GeometryNodeInputMaterialIndex")    # one axis per lens material (islands can be split)
    lens_id.location = (-800, -450)
    weighted = nodes.new("ShaderNodeVectorMath")
    weighted.operation = 'SCALE'
    weighted.location = (-600, -250)
    link(normal.outputs.get("True Normal") or normal.outputs["Normal"], weighted.inputs[0])
    link(area.outputs["Area"], weighted.inputs[3])
    acc = nodes.new("GeometryNodeAccumulateField")
    acc.data_type = 'FLOAT_VECTOR'
    acc.domain = 'FACE'
    acc.location = (-400, -250)
    link(weighted.outputs[0], _live_socket(acc.inputs, "Value"))
    link(lens_id.outputs[0], _live_socket(acc.inputs, "Group"))
    unit = nodes.new("ShaderNodeVectorMath")
    unit.operation = 'NORMALIZE'
    unit.location = (-200, -250)
    link(_live_socket(acc.outputs, "Total"), unit.inputs[0])
    store = nodes.new("GeometryNodeStoreNamedAttribute")
    store.data_type = 'FLOAT_VECTOR'
    store.domain = 'FACE'
    store.location = (100, 0)
    store.inputs["Name"].default_value = SIGHT_AXIS_ATTR
    link(gi.outputs[0], store.inputs["Geometry"])
    link(unit.outputs[0], _live_socket(store.inputs, "Value"))
    link(store.outputs["Geometry"], go.inputs[0])
    return ng


def _add_sight_axis_modifier(mat):
    for ob, _ in _material_polygons(mat):
        mod = ob.modifiers.get(SIGHT_AXIS_MODIFIER)
        if mod is None:
            mod = ob.modifiers.new(SIGHT_AXIS_MODIFIER, 'NODES')     # appended after the armature deform
        mod.node_group = get_sight_axis_nodes()


def get_sight_group():
    name = "CoD Sight v%d" % SIGHT_GROUP_VERSION
    ng = bpy.data.node_groups.get(name)
    if ng is not None:
        return ng
    ng = bpy.data.node_groups.new(name, "ShaderNodeTree")
    iface = ng.interface
    for out_name, stype in (("Dot", "NodeSocketFloat"), ("Ring", "NodeSocketFloat"), ("Crosshair", "NodeSocketFloat"),
                            ("Eye Box", "NodeSocketFloat"), ("Portal Position", "NodeSocketVector"),
                            ("Portal Direction", "NodeSocketVector"), ("Relief UV", "NodeSocketVector")):
        _socket(iface, out_name, "OUTPUT", stype)
    ret = iface.new_panel("Reticle")
    _socket(iface, "Dot Size", "INPUT", "NodeSocketFloat", 0.15, 0.0, 5.0, "Dot radius in degrees", parent=ret)
    _socket(iface, "Ring Size", "INPUT", "NodeSocketFloat", 1.2, 0.0, 10.0,
            "Circle radius in degrees (scopes: where the thick crosshair posts start)", parent=ret)
    _socket(iface, "Line Width", "INPUT", "NodeSocketFloat", 0.08, 0.0, 2.0, "Circle / crosshair line width in degrees",
            parent=ret)
    scope = iface.new_panel("Scope")
    _socket(iface, "Zoom", "INPUT", "NodeSocketFloat", 4.0, 1.0, 40.0, "Magnification of the picture-in-picture",
            parent=scope)
    _socket(iface, "Eye Relief", "INPUT", "NodeSocketFloat", 1.5, 0.0, 20.0,
            "How fast the scope shadow closes in when the eye moves off the scope's center line", parent=scope)
    _socket(iface, "Portal Offset (cm)", "INPUT", "NodeSocketFloat", SCOPE_PORTAL_OFFSET_CM, 0.0, 500.0,
            "Where the magnified view starts: just past the objective lens (follows object scale)", parent=scope)
    _socket(iface, "Lens Center", "INPUT", "NodeSocketVector", (0.5, 0.5, 0.0), desc="Center of the lens disc in UV",
            parent=scope)
    _socket(iface, "Lens UV Scale", "INPUT", "NodeSocketFloat", 0.2, 0.0, 10.0,
            "Lens UV units per object cm (measured on the mesh)", parent=scope)
    _socket(iface, "V Sign", "INPUT", "NodeSocketFloat", 1.0, -1.0, 1.0,
            "+1 or -1: orientation of the lens UV's v axis (measured on the mesh)", parent=scope)

    b = _Builder(ng)
    nodes, link = ng.nodes, ng.links.new
    gi = nodes.new("NodeGroupInput")
    gi.location = (-1800, 0)
    go = nodes.new("NodeGroupOutput")
    go.location = (1300, 0)
    inp = gi.outputs
    geo = nodes.new("ShaderNodeNewGeometry")
    geo.location = (-1800, -500)
    tan = nodes.new("ShaderNodeTangent")
    tan.direction_type = 'UV_MAP'
    tan.location = (-1800, -800)
    tc = nodes.new("ShaderNodeTexCoord")
    tc.location = (-1800, 400)

    def dot(a, c, loc):
        n = nodes.new("ShaderNodeVectorMath")
        n.operation = 'DOT_PRODUCT'
        n.location = loc
        link(a, n.inputs[0])
        link(c, n.inputs[1])
        return n.outputs["Value"]

    I, Ng, P = geo.outputs["Incoming"], geo.outputs["True Normal"], geo.outputs["Position"]
    # lens axis from the CoD Sight Axis modifier (flat, per lens); the face normal where it is missing
    attr = nodes.new("ShaderNodeAttribute")
    attr.attribute_type = 'GEOMETRY'
    attr.attribute_name = SIGHT_AXIS_ATTR
    attr.location = (-2100, -250)
    to_world = nodes.new("ShaderNodeVectorTransform")
    to_world.vector_type = 'NORMAL'
    to_world.convert_from = 'OBJECT'
    to_world.convert_to = 'WORLD'
    to_world.location = (-1900, -250)
    link(attr.outputs["Vector"], to_world.inputs[0])
    has_axis = b.math("GREATER_THAN", b.vmath("LENGTH", attr.outputs["Vector"], loc=(-1900, -120)).node.outputs["Value"],
                      0.5, loc=(-1750, -120))
    stored = b.vmath("NORMALIZE", to_world.outputs[0], loc=(-1750, -250))
    N0 = b.vmath("ADD", Ng, b.vmath("SCALE", b.vmath("SUBTRACT", stored, Ng, loc=(-1600, -250)), scale=has_axis,
                                    loc=(-1450, -250)), loc=(-1300, -250))
    # sight axis A: the lens normal, turned to point away from the eye
    facing = b.math("SIGN", dot(N0, I, (-1600, -450)), loc=(-1450, -450))
    A = b.vmath("SCALE", N0, scale=b.math("MULTIPLY", facing, -1.0, loc=(-1300, -450)), loc=(-1150, -450))
    d = b.vmath("SCALE", I, scale=-1.0, loc=(-1600, -600))                       # eye -> lens
    # lens frame: T along UV u, B along UV v (u right / v up seen from the eye)
    T0 = tan.outputs["Tangent"]
    T = b.vmath("NORMALIZE", b.vmath("SUBTRACT", T0, b.vmath("SCALE", A, scale=dot(T0, A, (-1450, -850)),
                                                              loc=(-1300, -850)), loc=(-1150, -850)), loc=(-1000, -850))
    B = b.vmath("CROSS_PRODUCT", T, A, loc=(-850, -850))
    dz = b.math("MAXIMUM", dot(d, A, (-1000, -600)), 0.05, loc=(-850, -600))
    ax = b.math("DIVIDE", dot(d, T, (-700, -700)), dz, loc=(-550, -700))       # tan of the off-axis angle
    ay = b.math("DIVIDE", dot(d, B, (-700, -850)), dz, loc=(-550, -850))
    r = b.math("SQRT", b.math("ADD", b.math("MULTIPLY", ax, ax, loc=(-400, -700)),
                               b.math("MULTIPLY", ay, ay, loc=(-400, -850)), loc=(-250, -780)), loc=(-100, -780))

    def inside(value, edge, loc):
        """1 where value < edge, with a soft edge (anti-aliased reticle lines)"""
        mr = nodes.new("ShaderNodeMapRange")
        mr.data_type = 'FLOAT'
        mr.interpolation_type = 'SMOOTHSTEP'
        mr.location = loc
        link(value, mr.inputs[0])
        link(b.math("MULTIPLY", edge, 0.6, loc=(loc[0] - 160, loc[1] + 80)), mr.inputs[1])
        link(edge, mr.inputs[2])
        mr.inputs[3].default_value = 1.0
        mr.inputs[4].default_value = 0.0
        return mr.outputs[0]

    dot_r = b.math("MULTIPLY", inp["Dot Size"], DEG, loc=(100, -150))
    ring_r = b.math("MULTIPLY", inp["Ring Size"], DEG, loc=(100, -300))
    half_w = b.math("MULTIPLY", inp["Line Width"], DEG * 0.5, loc=(100, -450))
    link(inside(r, dot_r, (450, -150)), go.inputs["Dot"])
    ring_dist = b.math("ABSOLUTE", b.math("SUBTRACT", r, ring_r, loc=(250, -300)), loc=(400, -300))
    link(inside(ring_dist, half_w, (650, -300)), go.inputs["Ring"])
    # duplex crosshair: fine lines in the middle, 3x thicker posts past the ring radius
    posts = b.math("MULTIPLY_ADD", b.math("GREATER_THAN", r, ring_r, loc=(250, -600)), 2.0, 1.0, loc=(400, -600))
    thick = b.math("MULTIPLY", half_w, posts, loc=(550, -600))
    cx = inside(b.math("ABSOLUTE", ay, loc=(550, -700)), thick, (850, -650))
    cy = inside(b.math("ABSOLUTE", ax, loc=(550, -850)), thick, (850, -800))
    link(b.math("MAXIMUM", cx, cy, loc=(1050, -700)), go.inputs["Crosshair"])

    vt = nodes.new("ShaderNodeVectorTransform")
    vt.vector_type = 'VECTOR'
    vt.convert_from = 'OBJECT'
    vt.convert_to = 'WORLD'
    vt.inputs[0].default_value = (0.57735, 0.57735, 0.57735)
    vt.location = (-1300, 700)
    obj_scale = b.vmath("LENGTH", vt.outputs[0], loc=(-1100, 700)).node.outputs["Value"]

    # scope shadow: set by where the EYE sits relative to the scope's center line (the exit pupil), not by the
    # angle of each ray. The eye, projected along the axis onto the lens, lands at this point's UV plus the
    # sideways part of the ray times the view distance; its offset from the lens center shifts the game's
    # relief disc. A centered eye sees the whole disc at any distance - at ADS the eye is only ~2 cm away.
    cam = nodes.new("ShaderNodeCameraData")
    cam.location = (-1100, 450)
    uv_per_world = b.math("DIVIDE", inp["Lens UV Scale"], obj_scale, loc=(-900, 600))
    reach = b.math("MULTIPLY", cam.outputs["View Distance"], uv_per_world, loc=(-750, 500))
    eye = nodes.new("ShaderNodeCombineXYZ")
    eye.location = (-450, 350)
    link(b.math("MULTIPLY", dot(d, T, (-750, 350)), b.math("MULTIPLY", reach, -1.0, loc=(-600, 450)),
                loc=(-600, 350)), eye.inputs[0])
    link(b.math("MULTIPLY", b.math("MULTIPLY", dot(d, B, (-900, 200)), inp["V Sign"], loc=(-750, 200)),
                b.math("MULTIPLY", reach, -1.0, loc=(-600, 250)), loc=(-600, 200)), eye.inputs[1])
    eye_uv = b.vmath("ADD", tc.outputs["UV"], eye.outputs[0], loc=(-300, 350))
    eye_off = b.vmath("SUBTRACT", eye_uv, inp["Lens Center"], loc=(-150, 350))
    relief_uv = b.vmath("SUBTRACT", tc.outputs["UV"], b.vmath("SCALE", eye_off, scale=inp["Eye Relief"],
                                                               loc=(0, 450)), loc=(150, 400))
    link(relief_uv, go.inputs["Relief UV"])
    off_center = nodes.new("ShaderNodeVectorMath")
    off_center.operation = 'DISTANCE'
    off_center.location = (300, 300)
    link(relief_uv, off_center.inputs[0])
    link(inp["Lens Center"], off_center.inputs[1])
    box = nodes.new("ShaderNodeMapRange")
    box.data_type = 'FLOAT'
    box.interpolation_type = 'SMOOTHSTEP'
    box.location = (500, 300)
    link(off_center.outputs["Value"], box.inputs[0])
    box.inputs[1].default_value = 0.26
    box.inputs[2].default_value = 0.38
    box.inputs[3].default_value = 1.0
    box.inputs[4].default_value = 0.0
    link(box.outputs[0], go.inputs["Eye Box"])

    # picture-in-picture: start past the objective, direction = axis + (off-axis part / zoom)
    along = b.vmath("SCALE", A, scale=dz, loc=(-700, -1050))
    d_perp = b.vmath("SUBTRACT", d, along, loc=(-550, -1050))
    shrunk = b.vmath("SCALE", d_perp, scale=b.math("DIVIDE", 1.0, inp["Zoom"], loc=(-700, -1200)), loc=(-400, -1100))
    link(b.vmath("NORMALIZE", b.vmath("ADD", along, shrunk, loc=(-250, -1050)), loc=(-100, -1050)),
         go.inputs["Portal Direction"])
    offset = b.math("MULTIPLY", inp["Portal Offset (cm)"], obj_scale, loc=(-350, -1350))
    link(b.vmath("ADD", P, b.vmath("SCALE", A, scale=offset, loc=(-200, -1350)), loc=(-50, -1350)),
         go.inputs["Portal Position"])
    return ng


def sight_kind(mat_name):
    """'SCOPE' (picture-in-picture surface), 'RETICLE' (UI stencil), 'LENS' (sight / clear glass) or None."""
    name = re.sub(r"\.\d{3}$", "", mat_name).lower()
    if "reticle" in name:
        return 'RETICLE'
    if "ads_scope_lens" in name and "reflection" not in name:
        return 'SCOPE'
    if re.search(r"(^|_)(lens|lenses|glass|glasses)(_|$)", name):
        return 'LENS'
    return None


def _clear_techsets(index):
    """Techsets the game uses for see-through shells. The tear film (lacrimal fluid) is always one of them, and
    the same techset carries things like watch crystals, whose materials hold no textures at all - a 1x1 black
    colour map - so they would otherwise come out as an opaque black disc."""
    found = set()
    for info in index.by_name.values():
        if info.techset and classify(info.name, resolve_slots(info), info.image_names) == 'TEARFILM':
            found.add(info.techset)
    return found


def _is_untextured(info, slots):
    """A material whose colour map is a placeholder constant (1x1 / 4x4) carries no art of its own."""
    cs = slots.get("cs")
    if cs is None:
        return True
    width, height = _sample(cs)[1]
    return max(width, height) <= 8


def is_red_dot_lens(mat_name):
    """The eye-side lens of a reflex / holographic sight carries the reticle (the '_far' lens faces away)."""
    name = mat_name.lower()
    return bool(re.search(r"reddot|red_dot|reflex|holo|minired|eotech|(^|_)rds|(^|_)optic", name)) and "far" not in name


LENS_TINT_SLOT, LENS_DIRT_SLOT = 0x47, 0x5d       # MW4 glass: colour, smudge / scratch map


def lens_maps(info):
    """(tint, dirt) image paths for a MW4 / BO7 lens, or (None, None).

    MW4 names its slots (0x47 colour, 0x5d smudges). BO7 hashes them, so each image is judged by what it holds:
    the tint is the most coloured flat map, the dirt a neutral grey one with texture. A map whose alpha carries
    something is a colour layer, a packed NOG is a normal - neither is either.
    """
    if info is None:
        return None, None

    def real(p):
        return p if p and not _is_placeholder(p) and fs_exists(p) else None
    sem = info.by_semantic
    if LENS_TINT_SLOT in sem or LENS_DIRT_SLOT in sem:
        return real(sem.get(LENS_TINT_SLOT)), real(sem.get(LENS_DIRT_SLOT))
    tint, dirt, best = None, None, 0.06
    for p in _material_images(info):
        if "thermal" in os.path.basename(p).lower() or is_packed_nog(p):
            continue
        px = sample_rgba(p)
        if px is None or float(px[:, 3].min()) < 0.99:
            continue
        mean = px[:, :3].mean(0)
        if float(mean.max()) < 0.05:
            continue
        chroma = float(mean.max() - mean.min())
        if chroma > best:
            tint, best = p, chroma
        elif chroma < 0.03 and float(px[:, :3].std()) > 0.05 and dirt is None:
            dirt = p
    return tint, dirt


def _material_images(info):
    """Every image a _mat_info lists (lens maps are picked by their unhashed names)."""
    if info is None:
        return []
    paths = list(info.by_semantic.values()) + list(info.by_slot.values()) + info.extras + [info.albedo]
    return [p for p in paths if p and not _is_placeholder(p) and fs_exists(p)]


def _find_image(paths, *patterns):
    for p in paths:
        base = os.path.basename(p).lower()
        if any(re.search(pt, base) for pt in patterns):
            return p
    return None


def _mean_color(path, default=(1.0, 1.0, 1.0)):
    """Average color of a small tint map, sRGB -> linear. Saturated maps are techset parameters (BO7 keeps a red
    flag in that slot), not a glass tint, so they fall back to the default."""
    px = sample_rgba(path) if path else None
    if px is None:
        return default
    rgb = px[:, :3].mean(0)
    if float(rgb.max() - rgb.min()) > 0.25:
        return default
    return tuple(float(c) ** 2.2 for c in rgb)


def _material_polygons(mat):
    """[(object, [polygons])] of every mesh using the material."""
    found = []
    for ob in bpy.data.objects:
        if ob.type != 'MESH':
            continue
        idx = {i for i, s in enumerate(ob.material_slots) if s.material == mat}
        if idx:
            polys = [p for p in ob.data.polygons if p.material_index in idx]
            if polys:
                found.append((ob, polys))
    return found


def _is_arms_mesh(ob):
    return any(g.name.lower().startswith(ARM_BONE_PREFIXES) for g in ob.vertex_groups)


def _lens_uv_frame(me, polys, mw):
    """(UV units per object unit, dP/du, dP/dv in world) averaged over the lens triangles, or Nones."""
    uv_layer = me.uv_layers.active
    if uv_layer is None:
        return None, None, None
    dpdu, dpdv, lengths = Vector(), Vector(), []
    for p in polys:
        if len(p.loop_indices) < 3:
            continue
        l0, l1, l2 = p.loop_indices[:3]
        t0, t1, t2 = (uv_layer.data[li].uv for li in (l0, l1, l2))
        q0, q1, q2 = (me.vertices[me.loops[li].vertex_index].co for li in (l0, l1, l2))
        du1, dv1, du2, dv2 = t1.x - t0.x, t1.y - t0.y, t2.x - t0.x, t2.y - t0.y
        det = du1 * dv2 - du2 * dv1
        if abs(det) < 1e-12:
            continue
        e1, e2 = q1 - q0, q2 - q0
        pu, pv = (e1 * dv2 - e2 * dv1) / det, (e2 * du1 - e1 * du2) / det
        weight = abs(det)
        dpdu += pu * weight
        dpdv += pv * weight
        lengths.append((pu.length + pv.length) * 0.5)
    if not lengths or dpdu.length < 1e-9:
        return None, None, None
    lengths.sort()
    return 1.0 / lengths[len(lengths) // 2], mw.to_3x3() @ dpdu, mw.to_3x3() @ dpdv


def _scope_geometry(mat):
    """(UV center of the scope disc, portal offset in object cm, UV per object cm, v sign) measured on the rest
    mesh, or Nones. Like the game's scope camera, the magnified view starts past the weapon: the objective lens,
    barrel, muzzle and front sight near the scope axis."""
    geometry = _scope_measure(mat)
    return geometry if geometry else (None, None, None, None)


def _scope_measure(mat):
    users = _material_polygons(mat)
    if not users:
        return None
    ob, polys = users[0]
    me, mw = ob.data, ob.matrix_world
    uv_layer = me.uv_layers.active
    center_uv = None
    if uv_layer is not None:
        uvs = [uv_layer.data[li].uv for p in polys for li in p.loop_indices]
        center_uv = (0.5 * (min(u.x for u in uvs) + max(u.x for u in uvs)),
                     0.5 * (min(u.y for u in uvs) + max(u.y for u in uvs)), 0.0)
    uv_scale, dpdu, dpdv = _lens_uv_frame(me, polys, mw)
    pts = [mw @ me.vertices[v].co for p in polys for v in p.vertices]
    center = sum(pts, pts[0] * 0.0) / len(pts)
    normal = sum((mw.to_3x3() @ p.normal for p in polys), pts[0] * 0.0)
    if normal.length < 1e-6:
        return center_uv, None, uv_scale, 1.0
    normal.normalize()
    radius = max((q - center).length for q in pts)
    scale = sum(abs(v) for v in mw.to_scale()) / 3.0 or 1.0
    # forward = away from the eye: the side where the other lenses of this scope (the objective) sit
    forward, far_lens = 0.0, 0.0
    clear = SCOPE_CLEAR_RADIUS_CM * scale
    weapon = [o for o in bpy.data.objects if o.type == 'MESH' and not _is_arms_mesh(o)
              and (ob.parent is None or o.parent is ob.parent)]
    reach = []
    for other in weapon:
        lens_idx = {i for i, s in enumerate(other.material_slots)
                    if s.material is not None and sight_kind(s.material.name) == 'LENS'}
        omw = other.matrix_world
        for p in other.data.polygons:
            rel = omw @ p.center - center
            along = rel.dot(normal)
            lateral = (rel - normal * along).length
            if p.material_index in lens_idx and lateral < radius * 3.0 and abs(along) > abs(far_lens):
                far_lens = along
            if lateral < clear:
                reach.append(along)
    if abs(far_lens) <= radius:
        return center_uv, None, uv_scale, 1.0
    sign = 1.0 if far_lens > 0 else -1.0
    forward = max(abs(far_lens), max((sign * a for a in reach), default=0.0))
    # the shader's v axis is cross(normal toward the eye, u); flip it if the UVs run the other way
    v_sign = 1.0
    if dpdu is not None:
        toward_eye = normal * -sign
        v_sign = 1.0 if toward_eye.cross(dpdu).dot(dpdv) >= 0.0 else -1.0
    return center_uv, forward / scale + SCOPE_PORTAL_MARGIN_CM, uv_scale, v_sign


def build_sight_material(mat, kind, slots, info, settings):
    if hasattr(mat, "use_nodes") and not mat.use_nodes:
        mat.use_nodes = True
    nt = mat.node_tree
    nt.nodes.clear()
    links = nt.links
    new = nt.nodes.new
    images = _material_images(info)
    maps, sight_nodes, shader_nodes = [], [], []
    # columns: maps | sight | shader (three sub-columns) | output
    x_sight, x_s1, x_s2, x_s3 = X_TEX + 380, X_DEC + 180, X_SHADER + 180, X_OUT + 120
    out = new("ShaderNodeOutputMaterial")

    def at(node, x, y, bucket):
        node.location = (x, y)
        bucket.append(node)
        return node

    def tex(path, data, label):
        node = new("ShaderNodeTexImage")
        node.image = load_image(path, data, False)
        node.label = label
        node.width = 240
        return at(node, X_TEX, Y_TOP - len(maps) * TEX_STEP, maps)

    def math(op, a, b, x, y, bucket):
        node = at(new("ShaderNodeMath"), x, y, bucket)
        node.operation = op
        for i, v in enumerate((a, b)):
            if isinstance(v, bpy.types.NodeSocket):
                links.new(v, node.inputs[i])
            else:
                node.inputs[i].default_value = v
        return node.outputs[0]

    def add_sight_group():
        sight = at(new("ShaderNodeGroup"), x_sight, Y_TOP, sight_nodes)
        sight.node_tree = get_sight_group()
        sight.name = SIGHT_NODE_NAME
        sight.label = "CoD Sight  (reticle + zoom)"
        sight.width = 230
        return sight

    tip_text = "Tip: tweak the CoD Sight node, or use the CoD tab in the sidebar (N)"
    if kind == 'RETICLE':
        # the game draws the scope reticle through this stencil; the scope surface draws it here instead
        t = at(new("ShaderNodeBsdfTransparent"), x_s1, Y_TOP, shader_nodes)
        links.new(t.outputs[0], out.inputs["Surface"])
        out.location = (x_s2, Y_TOP)
        tip_text = "Reticle stencil: see-through here, the scope lens draws the crosshair"
    elif kind == 'SCOPE':
        sight = add_sight_group()
        sin = sight.inputs
        sin["Zoom"].default_value = settings.scope_zoom
        sin["Ring Size"].default_value = 3.0
        sin["Line Width"].default_value = 0.15
        center_uv, offset, uv_scale, v_sign = _scope_geometry(mat)
        if center_uv:
            sin["Lens Center"].default_value = center_uv
        if offset:
            sin["Portal Offset (cm)"].default_value = offset
        if uv_scale:
            sin["Lens UV Scale"].default_value = uv_scale
        if v_sign:
            sin["V Sign"].default_value = v_sign
        portal = at(new("ShaderNodeBsdfRayPortal"), x_s1, Y_TOP, shader_nodes)
        portal.label = "Zoomed View  (Cycles)"
        links.new(sight.outputs["Portal Position"], portal.inputs["Position"])
        links.new(sight.outputs["Portal Direction"], portal.inputs["Direction"])
        relief = _find_image(images, r"relief", r"lens_r\.", r"_r~")
        if relief:
            # the game's eye-relief disc: soft white circle with a chromatic rim = the scope shadow
            rt = tex(relief, False, "Scope Shadow  (relief)")
            rt.extension = 'CLIP'
            links.new(sight.outputs["Relief UV"], rt.inputs["Vector"])
            links.new(rt.outputs["Color"], portal.inputs["Color"])
        else:
            links.new(sight.outputs["Eye Box"], portal.inputs["Color"])
        black = at(new("ShaderNodeEmission"), x_s1, Y_TOP - 250, shader_nodes)
        black.label = "Crosshair Color"
        black.inputs["Color"].default_value = (0.0, 0.0, 0.0, 1.0)
        mix = at(new("ShaderNodeMixShader"), x_s2, Y_TOP, shader_nodes)
        mix.label = "Crosshair"
        links.new(sight.outputs["Crosshair"], mix.inputs[0])
        links.new(portal.outputs[0], mix.inputs[1])
        links.new(black.outputs[0], mix.inputs[2])
        links.new(mix.outputs[0], out.inputs["Surface"])
        out.location = (x_s3, Y_TOP)
        tip_text = "Tip: the zoomed scope view renders in Cycles - set Zoom on the CoD Sight node"
    else:
        # sight / clear glass: tinted see-through with the lens dirt map and a Fresnel reflection
        tint = slots.get("params") or _find_image(images, r"_tf?~", r"_tf?\.")
        dirt = _find_image(images, r"_tr~", r"_tr\.")
        refl_mask = _find_image(images, r"reflection_a")
        # MW4 / BO7 hash their names: the glass colour and smudge map are found by slot or by content instead
        game_tint, game_dirt = lens_maps(info)
        if game_tint or game_dirt:
            tint, dirt = None, None
            refl_mask = refl_mask or game_dirt          # smudges break up the reflection, not the view
        reticle = settings.red_dot_reticle and is_red_dot_lens(mat.name)
        y_glass = Y_TOP - 330 if reticle else Y_TOP
        color = at(new("ShaderNodeRGB"), X_DEC, y_glass, shader_nodes)
        color.label = "Glass Tint"
        color.outputs[0].default_value = _mean_color(tint, (0.95, 0.96, 0.96)) + (1.0,)
        glass_col = color.outputs[0]
        if game_tint:
            # the light the glass lets through, per channel: a coated eyepiece goes dark blue, a level vial green
            px = sample_rgba(game_tint)
            if px is not None and len(px) <= 16:          # a one-pixel colour: the constant itself
                color.outputs[0].default_value = tuple(float(v) ** 2.2 for v in px[:, :3].mean(0)) + (1.0,)
            else:
                gt = tex(game_tint, False, "Glass Tint  (game)")
                glass_col = gt.outputs["Color"]
        if dirt:
            dt = tex(dirt, False, "Lens Dirt  (_tr)")
            mul = at(new("ShaderNodeMix"), x_s1, y_glass, shader_nodes)
            mul.label = "Tint x Dirt"
            mul.data_type = 'RGBA'
            mul.blend_type = 'MULTIPLY'
            mul.inputs[0].default_value = 1.0
            links.new(glass_col, mul.inputs[6])
            links.new(dt.outputs["Color"], mul.inputs[7])
            glass_col = mul.outputs[2]
        inside = None
        if game_tint:
            # the tint is how the glass looks from outside. From inside the tube - the scope view's portal rays
            # going out through the objective - it must not darken anything: the game draws that view
            # separately, and MW4's objective is tinted black
            geo = at(new("ShaderNodeNewGeometry"), X_DEC, y_glass + 200, shader_nodes)
            inside = geo.outputs["Backfacing"]
            seen = at(new("ShaderNodeMix"), x_s1, y_glass + 120, shader_nodes)
            seen.label = "Tint only from outside"
            seen.data_type = 'RGBA'
            links.new(inside, seen.inputs[0])
            links.new(glass_col, seen.inputs[6])
            seen.inputs[7].default_value = (1.0, 1.0, 1.0, 1.0)
            glass_col = seen.outputs[2]
        clear = at(new("ShaderNodeBsdfTransparent"), x_s2, y_glass, shader_nodes)
        links.new(glass_col, clear.inputs["Color"])
        glossy = at(new("ShaderNodeBsdfGlossy"), x_s2, y_glass - 120, shader_nodes)
        glossy.inputs["Roughness"].default_value = 0.03
        fresnel = at(new("ShaderNodeFresnel"), X_DEC, y_glass - 230, shader_nodes)
        fresnel.inputs["IOR"].default_value = LENS_IOR
        amount = at(new("ShaderNodeValue"), X_DEC, y_glass - 350, shader_nodes)
        amount.name = LENS_REFLECTION_NODE_NAME
        amount.label = "Lens Reflection"
        amount.outputs[0].default_value = COATED_LENS_REFLECTION if "scope" in mat.name.lower() else 1.0
        fac = math('MULTIPLY', fresnel.outputs[0], amount.outputs[0], x_s1, y_glass - 250, shader_nodes)
        if refl_mask:
            mt = tex(refl_mask, True, "Reflection Mask")
            fac = math('MULTIPLY', fac, mt.outputs["Color"], x_s1, y_glass - 420, shader_nodes)
        if inside is not None:
            outside = math('SUBTRACT', 1.0, inside, x_s1, y_glass - 560, shader_nodes)
            fac = math('MULTIPLY', fac, outside, x_s1, y_glass - 700, shader_nodes)     # no reflection inside
        glass = at(new("ShaderNodeMixShader"), x_s3, y_glass, shader_nodes)
        glass.label = "Glass"
        links.new(fac, glass.inputs[0])
        links.new(clear.outputs[0], glass.inputs[1])
        links.new(glossy.outputs[0], glass.inputs[2])
        surface = glass.outputs[0]
        out.location = (x_s3 + 220, Y_TOP)
        if reticle:
            sight = add_sight_group()
            sight.inputs["Ring Size"].default_value = settings.reticle_size
            style = settings.reticle_style
            if style == 'DOT':
                mask = sight.outputs["Dot"]
            elif style == 'CROSS':
                mask = sight.outputs["Crosshair"]
            else:
                mask = math('MAXIMUM', sight.outputs["Dot"], sight.outputs["Ring"], X_DEC, Y_TOP, sight_nodes)
            # camera rays only: a projected reticle is seen by the eye, it is not reflected by the far lens
            path = at(new("ShaderNodeLightPath"), x_sight, Y_TOP - 330, sight_nodes)
            mask = math('MULTIPLY', mask, path.outputs["Is Camera Ray"], X_DEC, Y_TOP - 170, sight_nodes)
            light = at(new("ShaderNodeEmission"), x_s1, Y_TOP, shader_nodes)
            light.name = RETICLE_NODE_NAME
            light.label = "Reticle Light"
            light.inputs["Color"].default_value = tuple(settings.reticle_color) + (1.0,)
            light.inputs["Strength"].default_value = settings.reticle_brightness
            glow = at(new("ShaderNodeMixShader"), x_s2, Y_TOP, shader_nodes)   # empty input 1: mask * light
            glow.label = "Reticle"
            links.new(mask, glow.inputs[0])
            links.new(light.outputs[0], glow.inputs[2])
            add = at(new("ShaderNodeAddShader"), x_s3, Y_TOP, shader_nodes)
            add.label = "Glass + Reticle"
            links.new(surface, add.inputs[0])
            links.new(glow.outputs[0], add.inputs[1])
            surface = add.outputs[0]
        links.new(surface, out.inputs["Surface"])
        tip_text = ("Tip: set the reticle color and size in the CoD tab (N) or on the Reticle Light node"
                    if reticle else "Tip: Lens Reflection sets how mirror-like the glass is")

    for node in maps + sight_nodes + shader_nodes:
        _hide_unused(node, inputs=node.type not in ('GROUP', 'RGB', 'VALUE', 'EMISSION', 'BSDF_GLOSSY'))
    shader_nodes.append(out)
    if maps:
        _frame(nt, "1 · Lens maps (from Saluki)", "tex", maps)
    if sight_nodes:
        _frame(nt, "2 · Sight (reticle + zoom)", "decode", sight_nodes)
    _frame(nt, "3 · Shader", "shader", shader_nodes)
    tip = new("NodeFrame")
    tip.label = tip_text
    tip.label_size = 18
    tip.use_custom_color = True
    tip.color = FRAME_COLORS["tip"]
    tip.shrink = False
    tip.location = (X_TEX, Y_TOP + 150)
    tip.width = out.location.x + 200 - X_TEX
    tip.height = 70

    if kind != 'RETICLE' and nt.nodes.get(SIGHT_NODE_NAME) is not None:
        _add_sight_axis_modifier(mat)
    overlay = kind == 'LENS' and ("ads_scope_lens_reflection" in mat.name.lower() or mat.get("cod_scope_reflection"))
    if overlay or kind == 'RETICLE':
        # the game's fake-reflection overlay and the reticle UI stencil lie exactly on the scope picture; coincident
        # layers black the picture out (Cycles skips the portal, EEVEE draws them over it), so they stay out of
        # camera rays - the real eyepiece glass in front already reflects, and the stencil is a UI mask
        for ob, _ in _material_polygons(mat):
            if not any(s.material is not None and sight_kind(s.material.name) == 'SCOPE' for s in ob.material_slots):
                ob.visible_camera = False
        mat["cod_eevee_clear"] = True
    if hasattr(mat, "surface_render_method"):
        mat.surface_render_method = 'BLENDED'
    elif hasattr(mat, "blend_method"):
        mat.blend_method = 'BLEND'
    mat.use_backface_culling = False
    mat["cod_shaded"] = True
    mat["cod_kind"] = kind
    mat["cod_metal_mask"] = 0.0


def _material_image_paths(mat):
    if not mat.node_tree:
        return
    for node in mat.node_tree.nodes:
        if node.type == 'TEX_IMAGE' and node.image and node.image.filepath:
            yield os.path.normpath(bpy.path.abspath(node.image.filepath))


def _model_dir_for(path):
    p = os.path.dirname(path)
    for _ in range(8):
        if os.path.isdir(os.path.join(p, "_mat_info")):
            return p
        parent = os.path.dirname(p)
        if parent == p:
            break
        p = parent
    return None


def find_info(mat, index):
    paths = list(_material_image_paths(mat))
    for p in paths:
        d = _model_dir_for(p)
        if d:
            index.add_model_dir(d)
    info = index.by_name.get(_norm_name(mat.name))
    if info is None:
        for p in paths:
            info = index.by_albedo.get(os.path.basename(p).lower())
            if info:
                break
    return info


def _rig_materials(mat):
    """Materials on the same rig as `mat`: texture-less lens materials find their export folder through them."""
    parents = {ob.parent for ob, _ in _material_polygons(mat) if ob.parent is not None}
    return {s.material for ob in bpy.data.objects if ob.parent in parents
            for s in getattr(ob, "material_slots", ()) if s.material is not None and s.material != mat}


# --------------------------------------------------------------------------------------------
# Texture paths: what each material got, and why it did not
# --------------------------------------------------------------------------------------------

REPORT_ROLES = ("cs", "nog", "emissive", "opacity", "strand", "params", "camo", "damage", "aniso",
                "layer2", "layer2_normal", "layer2_color", "tint_mask")
ROLE_LABELS = {"cs": "Color + Metal (CS)", "nog": "Normal/Gloss/AO (NOG)", "emissive": "Emissive",
               "opacity": "Opacity", "strand": "Hair strands", "params": "Params", "camo": "Camo mask",
               "damage": "Damage", "aniso": "Anisotropy", "layer2": "Blueprint layer mask",
               "layer2_normal": "Blueprint layer normal", "layer2_color": "Blueprint layer tint",
               "tint_mask": "Blueprint paint regions"}


def slot_reason(info, role):
    """Why a role is empty: no row in the _mat_info, a stand-in image, or a file that is not there.

    The distinction is the whole point of the report. "no row" means the export never had it; "stand-in"
    means the game itself had nothing; "file missing" means the texture exists in the _mat_info and not on
    this disk, which is what a moved or half-copied export looks like."""
    mapping = (info.by_semantic or info.by_slot) if info is not None else None
    if not mapping:
        return "no _mat_info rows"
    bo7 = SEM_CS in mapping or SEM_NOG in mapping
    table = dict(BO7_SLOTS if bo7 else MW2_SLOTS)
    table.update({"camo": MW4_CAMO_SLOTS[0] if bo7 else MW2_CAMO_SLOT,
                  "damage": MW4_DAMAGE_SLOT if bo7 else MW2_DAMAGE_SLOT,
                  "aniso": MW2_ANISO_SLOT, "layer2": MW2_LAYER2_MASK,
                  "layer2_normal": MW2_LAYER2_NORMAL, "layer2_color": MW2_LAYER2_COLOR,
                  "tint_mask": MW2_TINT_MASK})
    if role not in table:
        return "not used by this game"
    raw = mapping.get(table[role])
    if raw is None:
        return "no row in the _mat_info"
    if _is_placeholder(raw):
        return "stand-in (%s)" % os.path.basename(str(raw))
    if not fs_exists(raw):
        return "FILE MISSING: %s" % raw
    return "not used"


def texture_report(mats, settings, model_dirs=()):
    """The report as text: every material, every texture path, and the reason for every gap."""
    index = ModelIndex()
    root = bpy.path.abspath(settings.search_folder or "")
    if root and os.path.isdir(root):
        index.add_root(root)
    for d in model_dirs:
        if os.path.isdir(os.path.join(d, "_mat_info")):
            index.add_model_dir(d)
    for mat in mats:
        if mat is None or mat.library is not None:
            continue
        for path in _material_image_paths(mat):
            d = _model_dir_for(path)
            if d:
                index.add_model_dir(d)

    lines = ["CoD AutoShader texture report",
             "Blender %s on %s" % (bpy.app.version_string, os.name),
             "Export Folder setting: %s" % (root or "(empty)"),
             "Model folders indexed: %d, holding %d _mat_info entries"
             % (len(index._dirs), len(index.by_name)),
             ""]
    missing_colour, normal_only, total = 0, 0, 0
    for mat in sorted([m for m in mats if m is not None and m.library is None], key=lambda m: m.name):
        info = find_info(mat, index)
        total += 1
        kind = mat.get("cod_kind") or (classify(mat.name, resolve_slots(info), info.image_names)
                                       if info is not None else "?")
        lines.append("%s   [%s]" % (mat.name, kind))
        if info is None:
            lines.append("    no _mat_info match - the export folder holding this model was not found")
            lines.append("")
            missing_colour += 1
            continue
        lines.append("    _mat_info: %s" % (getattr(info, "model_dir", "") or "?"))
        slots = resolve_slots(info)
        if not slots.get("cs"):
            missing_colour += 1
            normal_only += bool(slots.get("nog"))
        for role in REPORT_ROLES:
            value = slots.get(role)
            if value:
                lines.append("    %-24s %s" % (ROLE_LABELS.get(role, role) + ":", value))
            elif role in ("cs", "nog"):
                lines.append("    %-24s %s" % (ROLE_LABELS[role] + ":", slot_reason(info, role)))
        lines.append("")
    head = ["%d material(s), %d without a colour map (%d of those kept a normal map)"
            % (total, missing_colour, normal_only), ""]
    if normal_only:
        head += ["Normal map but no colour map: the textures were almost certainly not found rather than not",
                 "exported. The normal map is the one map this add-on can recognise by its pixels alone, so it",
                 "survives when the rest of the lookup fails. Check the Export Folder above, and that each",
                 "model folder still has its _mat_info and _images folders beside the .cast.", ""]
    elif missing_colour:
        head += ["Nothing was resolved for these materials. Set the Export Folder above to the folder Saluki",
                 "exported into - the one holding the model folders, each with its own _mat_info and _images -",
                 "then Shade All again. A .blend sent from another machine keeps the material names but not",
                 "that folder, which is the usual reason.", ""]
    return "\n".join(lines[:4] + head + lines[4:])


class COD_OT_texture_report(bpy.types.Operator):
    bl_idname = "cod.texture_report"
    bl_label = "Texture Paths"
    bl_description = ("List the texture file each material is using, and the reason for any that are "
                      "missing. Written to a text block called 'CoD Texture Report' (Scripting tab) and "
                      "to the system console, so it can be saved and sent on")
    bl_options = {'REGISTER'}

    selected_only: BoolProperty(name="Selected Objects Only", default=False)

    def execute(self, context):
        settings = context.scene.cod_autoshader
        if self.selected_only:
            mats = [s.material for ob in context.selected_objects
                    for s in getattr(ob, "material_slots", ()) if s.material]
        else:
            mats = list(bpy.data.materials)
        report = texture_report(list(dict.fromkeys(mats)), settings)
        name = "CoD Texture Report"
        block = bpy.data.texts.get(name) or bpy.data.texts.new(name)
        block.clear()
        block.write(report)
        print(report)
        self.report({'INFO'}, "CoD AutoShader: texture report written to the '%s' text block" % name)
        return {'FINISHED'}


EEVEE_OUTPUT_NAME = "EEVEE Output"
EEVEE_HAIR_ALPHA = (0.06, 0.45)      # alpha below the first is gone, above the second solid, smooth between


def _eevee_output(nt, out, surface):
    """Send `surface` to EEVEE only, keeping `out` for Cycles. Returns the EEVEE output node."""
    old = nt.nodes.get(EEVEE_OUTPUT_NAME)
    if old is not None:
        nt.nodes.remove(old)
    out.target = 'CYCLES'
    ee = nt.nodes.new("ShaderNodeOutputMaterial")
    ee.name = ee.label = EEVEE_OUTPUT_NAME
    ee.target = 'EEVEE'
    ee.location = (out.location.x, out.location.y - 260)
    nt.links.new(surface, ee.inputs["Surface"])
    for name in ("Displacement",):
        if out.inputs[name].is_linked:
            nt.links.new(out.inputs[name].links[0].from_socket, ee.inputs[name])
    ee.is_active_output = False
    out.is_active_output = True
    return ee


def _world_environment(world):
    """(environment image, background strength) the world lights with, or (None, 1.0)."""
    if world is None or not world.use_nodes:
        return None, 1.0
    env = next((n for n in world.node_tree.nodes if n.type == 'TEX_ENVIRONMENT' and n.image), None)
    bg = next((n for n in world.node_tree.nodes if n.type == 'BACKGROUND'), None)
    strength = bg.inputs["Strength"].default_value if bg is not None and not bg.inputs["Strength"].is_linked else 1.0
    return (env.image if env else None), strength


def add_eevee_branch(mat):
    """Give the materials EEVEE cannot render as Cycles does their own EEVEE wiring. Returns True if one was added."""
    nt = getattr(mat, "node_tree", None)
    if nt is None:
        return False
    kind = mat.get("cod_kind")
    out = next((n for n in nt.nodes if n.type == 'OUTPUT_MATERIAL' and n.name != EEVEE_OUTPUT_NAME
                and n.inputs["Surface"].is_linked), None)
    if out is None:
        return False
    if kind == 'HAIR':
        hair = out.inputs["Surface"].links[0].from_node
        if hair.type != 'GROUP' or "Alpha" not in hair.inputs or not hair.inputs["Alpha"].is_linked:
            return False
        twin = nt.nodes.new("ShaderNodeGroup")
        twin.node_tree = hair.node_tree
        twin.label = "Hair (EEVEE)"
        twin.location = (hair.location.x, hair.location.y - 420)
        for i, sock in enumerate(hair.inputs):
            if sock.is_linked:
                nt.links.new(sock.links[0].from_socket, twin.inputs[i])
            elif hasattr(sock, "default_value"):
                try:
                    twin.inputs[i].default_value = sock.default_value
                except (TypeError, AttributeError):
                    pass
        firm = nt.nodes.new("ShaderNodeMapRange")
        firm.label = "Firmer Alpha (EEVEE)"
        firm.interpolation_type = 'SMOOTHSTEP'
        firm.inputs["From Min"].default_value, firm.inputs["From Max"].default_value = EEVEE_HAIR_ALPHA
        firm.location = (twin.location.x - 220, twin.location.y)
        nt.links.new(hair.inputs["Alpha"].links[0].from_socket, firm.inputs["Value"])
        nt.links.new(firm.outputs["Result"], twin.inputs["Alpha"])
        _eevee_output(nt, out, twin.outputs[0])
        return True
    if mat.get("cod_eevee_clear"):
        clear = nt.nodes.new("ShaderNodeBsdfTransparent")
        clear.label = "Out of the way (EEVEE)"
        clear.location = (out.location.x - 220, out.location.y - 260)
        _eevee_output(nt, out, clear.outputs[0])
        return True
    if kind == 'SCOPE':
        portal = next((n for n in nt.nodes if n.bl_idname == "ShaderNodeBsdfRayPortal"), None)
        mix = next((l.to_node for l in portal.outputs[0].links if l.to_node.type == 'MIX_SHADER'), None) if portal else None
        if mix is None or not portal.inputs["Direction"].is_linked:
            return False
        x, y = mix.location.x, mix.location.y - 300
        env_image, strength = _world_environment(bpy.context.scene.world)
        if env_image is not None:
            env = nt.nodes.new("ShaderNodeTexEnvironment")
            env.image = env_image
            nt.links.new(portal.inputs["Direction"].links[0].from_socket, env.inputs["Vector"])
        else:
            # no HDRI to look into: the world's own colour (a Sky Texture has no direction input in Blender 5)
            env = nt.nodes.new("ShaderNodeRGB")
            env.outputs[0].default_value = _world_backdrop(bpy.context.scene.world)
        env.label = "Zoomed World (EEVEE)"
        env.location = (x - 460, y)
        colour = env.outputs[0]
        if portal.inputs["Color"].is_linked:
            mask = nt.nodes.new("ShaderNodeMix")
            mask.data_type = 'RGBA'
            mask.blend_type = 'MULTIPLY'
            mask.inputs[0].default_value = 1.0
            mask.label = "Eye Box"
            mask.location = (x - 240, y)
            nt.links.new(colour, mask.inputs[6])
            nt.links.new(portal.inputs["Color"].links[0].from_socket, mask.inputs[7])
            colour = mask.outputs[2]
        light = nt.nodes.new("ShaderNodeEmission")
        light.label = "Scope Picture (EEVEE)"
        light.location = (x - 40, y)
        light.inputs["Strength"].default_value = strength
        nt.links.new(colour, light.inputs["Color"])
        twin = nt.nodes.new("ShaderNodeMixShader")
        twin.label = "Sight (EEVEE)"
        twin.location = (x + 180, y)
        for i, sock in enumerate(mix.inputs):
            if not sock.is_linked:
                if i == 0:
                    twin.inputs[0].default_value = sock.default_value
                continue
            src = sock.links[0].from_socket
            nt.links.new(light.outputs[0] if src.node == portal else src, twin.inputs[i])
        _eevee_output(nt, out, twin.outputs[0])
        return True
    return False


def shade_materials(mats, settings, report, model_dirs=()):
    """model_dirs: export folders the materials came from (the imported .cast files' folders)."""
    scene = bpy.context.scene
    if scene is not None and VRAM_APPLIED not in scene:
        apply_vram_budget(scene, getattr(settings, "vram_budget", 'BALANCED'))
    index = ModelIndex()
    if settings.search_folder:
        root = bpy.path.abspath(settings.search_folder)
        if os.path.isdir(root):
            index.add_root(root)
    # index every model folder first: materials without image nodes (scope lenses, reticle stencils) are then
    # found by name, whatever order they come in
    for d in model_dirs:
        if os.path.isdir(os.path.join(d, "_mat_info")):
            index.add_model_dir(d)
    for mat in mats:
        if mat is None or mat.library is not None:
            continue
        paths = list(_material_image_paths(mat))
        if not paths and sight_kind(mat.name):
            paths = [q for m in _rig_materials(mat) for q in _material_image_paths(m)]
        for path in paths:
            d = _model_dir_for(path)
            if d:
                index.add_model_dir(d)
    done, hair, missing, named = 0, 0, [], 0
    db = hash_db_folder(settings) if getattr(settings, "hash_names", False) else ""
    if db:
        # one pass over the tables for the whole model, not one per material
        ids = set()
        for mat in mats:
            if mat is not None and mat.library is None:
                ids |= material_asset_ids(find_info(mat, index), mat.name)
        resolve_asset_ids(ids, db)
    clear_techsets = _clear_techsets(index) if settings.sight_shader else set()
    for mat in mats:
        if mat is None or mat.library is not None:
            continue
        info = find_info(mat, index)
        real_name, extra_hints = asset_names(info, mat.name, db) if db else (None, [])
        named += bool(real_name)
        stem = re.sub(r"\.\d{3}$", "", real_name or mat.name).split("/")[-1].lower()
        if stem in ("nodraw", "no_draw", "$nodraw") or stem.startswith("nodraw_"):
            build_c2m_hidden(mat)                   # the engine never draws these shells
            mat["cod_kind"] = 'NODRAW'
            done += 1
            continue
        sight = sight_kind(real_name or mat.name) if settings.sight_shader else None
        if (sight is None and settings.sight_shader and info is not None
                and any("ads_scope_lens_reflection" in n.lower() for n in info.image_names)):
            # the fake reflection overlay over a scope picture, under a hashed name: its maps still say what it is
            sight = 'LENS'
            mat["cod_scope_reflection"] = True
        if (sight is None and info is not None and info.techset in clear_techsets
                and classify(info.name, resolve_slots(info), info.image_names) != 'TEARFILM'
                and _is_untextured(info, resolve_slots(info))):
            sight = 'LENS'          # a see-through shell with no art of its own: watch crystal, visor, cover
        if sight:
            # lenses, scope surfaces and reticle stencils shade by name; the stencil has no textures at all
            slots = resolve_slots(info) if info else {}
            build_sight_material(mat, sight, slots, info, settings)
            done += 1
            continue
        if info is None:
            missing.append(mat.name)
            continue
        slots = resolve_slots(info)
        if not slots["cs"] and not slots["nog"] and not slots.get("cw"):
            missing.append(mat.name)
            continue
        if (slots.get("strand") and is_c2m_glass(slots)
                and classify(info.name, slots, info.image_names) == 'DEFAULT'):
            # a glass techset on a model: black colour (all the look is reflection) plus the 0x4d clearness map -
            # the same signature map glass has. MW4 hashes some of these names (the Spier9 mag's inner window
            # wall is material_3fe90caa6fbbfbaa), so the slots decide, not the name. Shaded opaque, it is the
            # black mass seen through the window
            build_c2m_glass(mat, slots, settings, settings.metal_mode)
            if hasattr(mat, "surface_render_method"):
                mat.surface_render_method = 'BLENDED'         # see-through all over: blend, do not dither
            done += 1
            continue
        build_material(mat, slots, settings, settings.metal_mode,
                       list(info.image_names) + extra_hints, real_name=real_name)
        done += 1
        if mat.get("cod_kind") == 'HAIR':
            hair += 1
    cycles = getattr(bpy.context.scene, "cycles", None)
    if hair and cycles is not None and cycles.transparent_max_bounces < HAIR_TRANSPARENT_BOUNCES:
        # layered alpha cards go black past the transparent bounce limit (default 8)
        cycles.transparent_max_bounces = HAIR_TRANSPARENT_BOUNCES
        report({'INFO'}, "CoD AutoShader: raised Cycles transparent bounces to %d for hair cards"
               % HAIR_TRANSPARENT_BOUNCES)
    if hair and settings.hair_shader and settings.hair_style == 'CARD' and _hair_card_error[0]:
        report({'WARNING'}, "CoD AutoShader: hair used the CoD hair shader - " + _hair_card_error[0])
    if missing:
        # say what to do about it: nearly every report of "only the normal map loaded" is this warning
        # going unread on a machine where the export folder was never set
        advice = "" if settings.search_folder else             " - set the Export Folder in the CoD panel to your Saluki export and shade again"
        report({'WARNING'}, "CoD AutoShader: no _mat_info match for %d material(s): %s%s%s" % (
            len(missing), ", ".join(missing[:5]), " ..." if len(missing) > 5 else "", advice))
    if named:
        report({'INFO'}, "CoD AutoShader: named %d hashed material(s) from the asset name tables" % named)
    for m in mats:
        if m is not None and m.get("cod_shaded"):
            try:
                add_eevee_branch(m)
            except Exception as e:                  # an EEVEE nicety must never cost the Cycles material
                report({'WARNING'}, "CoD AutoShader: EEVEE branch skipped on %s (%s)" % (m.name, e))
    bad = broken_textures(mats)
    if bad:
        longest = max(len(p) for p, _why in bad)
        advice = (" - the paths are long (%d characters): Windows' built-in zip extractor drops or empties files past "
                  "260, so re-extract the download with 7-Zip to a short folder such as C:\\CoD" % longest
                  if longest >= 240 else " - re-download or re-export those models")
        report({'WARNING'}, "CoD AutoShader: %d texture(s) are missing or damaged on disk and render magenta/purple, "
                            "e.g. %s (%s)%s" % (len(bad), os.path.basename(bad[0][0]), bad[0][1], advice))
    report({'INFO'}, "CoD AutoShader: shaded %d material(s)" % done)
    return done


IMAGE_MAGIC = (b"\x89PNG", b"DDS ", b"\xff\xd8", b"II*\x00", b"MM\x00*", b"\x76\x2f\x31\x01")


def broken_textures(mats):
    """[(path, why)] for every texture the shaded materials use that cannot be a readable image."""
    seen, bad = set(), []
    for m in mats:
        nt = getattr(m, "node_tree", None) if m is not None else None
        for n in (nt.nodes if nt else ()):
            img = getattr(n, "image", None) if n.type == 'TEX_IMAGE' else None
            if img is None or img.packed_file is not None or img.source != 'FILE':
                continue
            path = bpy.path.abspath(img.filepath)
            if not path or path in seen:
                continue
            seen.add(path)
            real = fs_path(path[len(LONG_PREFIX):] if path.startswith(LONG_PREFIX) else path)
            try:
                size = os.path.getsize(real)
                with open(real, "rb") as f:
                    head = f.read(4)
            except OSError:
                bad.append((path, "missing"))
                continue
            if size == 0:
                bad.append((path, "empty file"))
            elif not path.lower().endswith(".tga") and not any(head.startswith(mg) for mg in IMAGE_MAGIC):
                bad.append((path, "not an image"))
    return bad


# --------------------------------------------------------------------------------------------
# C2M maps
# --------------------------------------------------------------------------------------------
# C2M (the CoD map exporter) writes the whole map to one .c2m file and its images, named by hash (ximage_1A2B...),
# to exported_images/<game>/. The .c2m material table lists each material's textures by semantic: colorMap /
# nogMap / emissiveMap / opacityMap for the base layer, and colorMap1 / nogMap1 / opacityMap1 / revealMap1 ... for
# up to three layers blended on top. They are the same packed CS and NOG textures Saluki exports, so the same
# decode applies. Checked on BO7 mp_sat_rm_express: a material with k extra layers always comes with k + 1 UV sets
# (layer k reads UV<k>), and layers 1 / 2 / 3 are painted in with vertex colour G / B / A (R is always white).

C2M_ROLES = {"colorMap": "cs", "nogMap": "nog", "emissiveMap": "emissive", "opacityMap": "opacity",
             "revealMap": "reveal", "proxyColorMap": "proxy"}
# Impostor cards: flat stand-ins the game draws far away instead of the real buildings and trees (their textures
# are proxyColorMap / proxyNogMap). The real models are in the map too, and C2M doesn't export the proxy images,
# so in Blender they are just blank slabs through the city.
C2M_EXTRA_ROLES = {"unk_semantic_0x4D": "strand", "unk_semantic_0x4E": "params"}
C2M_PAINT = ("G", "B", "A")            # vertex colour channel painting in layer 1, 2, 3
C2M_COLOR_ATTR = "Color"               # the C2M importer's vertex colour layer
C2M_REVEAL_SOFTNESS = 0.15
C2M_WEIGHT_GROUP = "CoD Layer Weight"
C2M_WEIGHT_VERSION = 1
C2M_LAYER_STEP = 1100
C2M_IMAGE_EXTS = (".tga", ".png", ".tif", ".tiff", ".dds", ".jpg", ".exr")


def _c2m_str(buf, p):
    """A .c2m string: u8 length (counting the trailing NUL), then the bytes."""
    n = buf[p]
    return buf[p + 1:p + 1 + n].split(b"\0", 1)[0].decode("ascii", "replace"), p + 1 + n


def read_c2m_materials(path):
    """{material name: {layer index: {role: image name}}} from a .c2m file. Only the material table is read,
    not the geometry, so this is quick even on a several-hundred-MB map."""
    with open(path, "rb") as f:
        head = f.read(65536)
        if head[:3] != b"C2M":
            raise ValueError("%s is not a .c2m file" % os.path.basename(path))
        _, p = _c2m_str(head, 5)           # map name
        _, p = _c2m_str(head, p)           # skybox
        (_, obj_off, _, _, inst_off, _, img_off, n_mat, mat_off, _, light_off,
         ents_off) = struct.unpack_from("<IQIIQIQIQIQQ", head, p)
        f.seek(0, 2)
        size = f.tell()
        end = min([o for o in (obj_off, inst_off, img_off, light_off, ents_off) if o > mat_off] or [size])
        f.seek(mat_off)
        buf = f.read(end - mat_off)
    mats = {}
    p = 0
    for _ in range(n_mat):
        name, p = _c2m_str(buf, p)
        _, p = _c2m_str(buf, p)            # techset
        _, p = _c2m_str(buf, p)            # surface type
        n_tex, n_const = buf[p + 2], buf[p + 3]
        p += 4
        layers = {}
        for _ in range(n_tex):
            image, p = _c2m_str(buf, p)
            semantic, p = _c2m_str(buf, p)
            m = re.fullmatch(r"([A-Za-z]+?)(\d?)", semantic)
            role = C2M_ROLES.get(m.group(1)) if m else None
            layer = int(m.group(2) or 0) if m else 0
            if role is None:
                role, layer = C2M_EXTRA_ROLES.get(semantic), 0
            if role and image and not image.startswith("$"):
                layers.setdefault(layer, {}).setdefault(role, image)
        for _ in range(n_const):           # name, hash u32, type u8, value 4 x f32
            _, p = _c2m_str(buf, p)
            p += 21
        mats[name] = layers
    return mats


def c2m_image_dir(c2m_path):
    """exported_maps/<game>/<map>/<map>.c2m -> exported_images/<game> (where C2M puts the images)."""
    map_dir = os.path.dirname(c2m_path)
    game_dir = os.path.dirname(map_dir)
    root = os.path.dirname(os.path.dirname(game_dir))
    for cand in (os.path.join(root, "exported_images", os.path.basename(game_dir)),
                 os.path.join(root, "exported_images", os.path.basename(map_dir)),
                 os.path.join(map_dir, "_images"), map_dir):
        if os.path.isdir(cand):
            return cand
    return None


def _c2m_image_index(folder):
    index = {}
    for dirpath, _, files in os.walk(folder):
        for fn in files:
            stem, ext = os.path.splitext(fn)
            if ext.lower() in C2M_IMAGE_EXTS:
                index.setdefault(stem.lower(), os.path.join(dirpath, fn))
    return index


def get_layer_weight_group():
    """How strongly a layer shows: its vertex paint, sharpened by the reveal map (the layer comes through where
    the reveal map is bright first, like wear eating into paint), times the layer's opacity mask."""
    name = "%s v%d" % (C2M_WEIGHT_GROUP, C2M_WEIGHT_VERSION)
    ng = bpy.data.node_groups.get(name)
    if ng is not None and ng.get("cod_version") == C2M_WEIGHT_VERSION:
        return ng
    ng = bpy.data.node_groups.new(name, "ShaderNodeTree")
    ng["cod_version"] = C2M_WEIGHT_VERSION
    iface = ng.interface
    _socket(iface, "Weight", "OUTPUT", "NodeSocketFloat")
    _socket(iface, "Paint", "INPUT", "NodeSocketFloat", 0.0, 0.0, 1.0, "vertex paint for this layer (colour G / B / A)")
    _socket(iface, "Reveal", "INPUT", "NodeSocketFloat", 1.0, 0.0, 1.0, "the layer's reveal map")
    _socket(iface, "Use Reveal", "INPUT", "NodeSocketFloat", 0.0, 0.0, 1.0, "1 when the layer has a reveal map")
    _socket(iface, "Mask", "INPUT", "NodeSocketFloat", 1.0, 0.0, 1.0, "the layer's opacity map")
    _socket(iface, "Reveal Softness", "INPUT", "NodeSocketFloat", C2M_REVEAL_SOFTNESS, 0.01, 1.0,
            "how soft the edge between layers is")
    b = _Builder(ng)
    gi = ng.nodes.new("NodeGroupInput")
    gi.location = (-700, 0)
    go = ng.nodes.new("NodeGroupOutput")
    go.location = (500, 0)
    lo = b.math('SUBTRACT', 1.0, gi.outputs["Paint"], loc=(-450, -150))
    hi = b.math('ADD', lo, gi.outputs["Reveal Softness"], loc=(-250, -250))
    ramp = ng.nodes.new("ShaderNodeMapRange")
    ramp.interpolation_type = 'SMOOTHSTEP'
    ramp.clamp = True
    ramp.location = (-50, -100)
    ng.links.new(gi.outputs["Reveal"], ramp.inputs["Value"])
    ng.links.new(lo, ramp.inputs["From Min"])
    ng.links.new(hi, ramp.inputs["From Max"])
    pick = ng.nodes.new("ShaderNodeMix")
    pick.data_type = 'FLOAT'
    pick.location = (150, 50)
    ng.links.new(gi.outputs["Use Reveal"], pick.inputs[0])
    ng.links.new(gi.outputs["Paint"], pick.inputs[2])
    ng.links.new(ramp.outputs["Result"], pick.inputs[3])
    w = b.math('MULTIPLY', pick.outputs[0], gi.outputs["Mask"], clamp=True, loc=(330, 0))
    ng.links.new(w, go.inputs["Weight"])
    return ng


C2M_MIXED = (("Base Color", 'RGBA'), ("Metallic", 'FLOAT'), ("Roughness", 'FLOAT'), ("IOR", 'FLOAT'),
             ("Normal", 'VECTOR'), ("Emission Color", 'RGBA'))
_MIX_SOCKETS = {'FLOAT': (2, 3, 0), 'VECTOR': (4, 5, 1), 'RGBA': (6, 7, 2)}   # A input, B input, output


def build_c2m_layered(mat, layers, settings, metal_mode):
    """A layered map material: every layer is decoded like a normal CoD surface from its own UV map, then painted
    over the layers below it by vertex colour."""
    if hasattr(mat, "use_nodes") and not mat.use_nodes:
        mat.use_nodes = True
    nt = mat.node_tree
    nt.nodes.clear()
    nodes, links = nt.nodes, nt.links
    x_mix = X_SHADER + 60
    out = nodes.new("ShaderNodeOutputMaterial")
    out.location = (x_mix + 900, Y_TOP)
    bsdf = nodes.new("ShaderNodeBsdfPrincipled")
    bsdf.location = (x_mix + 520, Y_TOP)
    links.new(bsdf.outputs[0], out.inputs["Surface"])

    vcol = nodes.new("ShaderNodeVertexColor")
    vcol.layer_name = C2M_COLOR_ATTR
    vcol.label = "Layer Paint (vertex colour)"
    vcol.location = (X_TEX - 700, Y_TOP - C2M_LAYER_STEP)
    split = nodes.new("ShaderNodeSeparateColor")
    split.location = (X_TEX - 480, Y_TOP - C2M_LAYER_STEP)
    links.new(vcol.outputs["Color"], split.inputs[0])
    paint = {"G": split.outputs[1], "B": split.outputs[2], "A": vcol.outputs["Alpha"]}

    acc, base, has_opacity, mask = None, None, False, 0.0
    for k in sorted(layers):
        roles = layers[k]
        y = Y_TOP - k * C2M_LAYER_STEP
        uv = nodes.new("ShaderNodeUVMap")
        uv.uv_map = "UV%d" % k
        uv.location = (X_TEX - 250, y)
        in_layer = [uv]

        def tex(role, data, packed, label, i):
            node = nodes.new("ShaderNodeTexImage")
            node.image = load_image(roles[role], data, packed)
            node.label = "L%d  %s" % (k, label)
            node.width = 240
            node.location = (X_TEX, y - i * 260)
            links.new(uv.outputs["UV"], node.inputs["Vector"])
            _hide_unused(node)
            in_layer.append(node)
            return node

        grp = nodes.new("ShaderNodeGroup")
        grp.node_tree = get_decode_group()
        grp.label = "CoD Surface Decode  (layer %d)" % k
        grp.width = 260
        grp.location = (X_DEC, y)
        in_layer.append(grp)
        gin = grp.inputs
        i = 0
        if roles.get("cs"):
            cs = tex("cs", False, True, "Color + Metal  (CS)", i)
            links.new(cs.outputs["Color"], gin["CS Color"])
            links.new(cs.outputs["Alpha"], gin["CS Alpha"])
            i += 1
        if roles.get("nog"):
            nog = tex("nog", True, True, "Normal · Gloss · AO  (NOG)", i)
            links.new(nog.outputs["Color"], gin["NOG Color"])
            links.new(nog.outputs["Alpha"], gin["NOG Alpha"])
            i += 1
        if roles.get("emissive"):
            em = tex("emissive", False, False, "Emission", i)
            links.new(em.outputs["Color"], gin["Emissive"])
            gin["Emission Gain"].default_value = emissive_gain(roles["emissive"])
            i += 1
        layer_mask = configure_decode(gin, {"cs": roles.get("cs")}, settings, metal_mode, 'DEFAULT')
        mask = max(mask, layer_mask)
        _hide_unused(grp, only=DECODE_MAP_INPUTS)
        _hide_unused(grp, inputs=False)

        if acc is None:
            # the bottom layer: its opacity map cuts the whole surface (decals, foliage cards)
            if roles.get("opacity") and not is_constant_white(roles["opacity"]):
                op = tex("opacity", True, False, "Opacity", i)
                links.new(op.outputs["Color"], gin["Opacity"])
                has_opacity = True
            acc = {name: grp.outputs[name] for name, _ in C2M_MIXED}
            base = grp
            _frame(nt, "Layer 0 · base (UV0)", "tex", in_layer)
            continue

        weight = nodes.new("ShaderNodeGroup")
        weight.node_tree = get_layer_weight_group()
        weight.label = "Layer %d Weight" % k
        weight.location = (X_DEC + 320, y - 380)
        in_layer.append(weight)
        channel = C2M_PAINT[min(k, len(C2M_PAINT)) - 1]
        links.new(paint[channel], weight.inputs["Paint"])
        if roles.get("reveal"):
            rv = tex("reveal", True, False, "Reveal", i)
            links.new(rv.outputs["Color"], weight.inputs["Reveal"])
            weight.inputs["Use Reveal"].default_value = 1.0
            i += 1
        if roles.get("opacity"):
            op = tex("opacity", True, False, "Layer Mask", i)
            links.new(op.outputs["Color"], weight.inputs["Mask"])

        mixed = {}
        for j, (name, dtype) in enumerate(C2M_MIXED):
            mix = nodes.new("ShaderNodeMix")
            mix.data_type = dtype
            mix.label = "L%d %s" % (k, name)
            mix.location = (x_mix, y - j * 60)
            mix.hide = True
            a, b_in, o = _MIX_SOCKETS[dtype]
            links.new(weight.outputs["Weight"], mix.inputs[0])
            links.new(acc[name], mix.inputs[a])
            links.new(grp.outputs[name], mix.inputs[b_in])
            result = mix.outputs[o]
            in_layer.append(mix)
            if name == "Normal":
                norm = nodes.new("ShaderNodeVectorMath")
                norm.operation = 'NORMALIZE'
                norm.location = (x_mix + 200, y - j * 60)
                norm.hide = True
                links.new(result, norm.inputs[0])
                result = norm.outputs[0]
                in_layer.append(norm)
            mixed[name] = result
        acc = mixed
        _frame(nt, "Layer %d · UV%d, painted by vertex colour %s" % (k, k, channel), "decode", in_layer)

    for name, _ in C2M_MIXED:
        dst = _principled_input(bsdf, name, "Emission" if name == "Emission Color" else name)
        if dst is not None:
            links.new(acc[name], dst)
    for name in ("Alpha", "Emission Strength"):
        dst = _principled_input(bsdf, name)
        if dst is not None:
            links.new(base.outputs[name], dst)
    _frame(nt, "Shader", "shader", [bsdf, out])

    if has_opacity:
        if hasattr(mat, "surface_render_method"):
            mat.surface_render_method = 'DITHERED'
        elif hasattr(mat, "blend_method"):
            mat.blend_method = 'HASHED'
        mat.use_backface_culling = False
    mat["cod_shaded"] = True
    mat["cod_kind"] = 'DEFAULT'
    mat["cod_metal_mask"] = mask
    mat["cod_c2m_layers"] = len(layers)
    return mask


C2M_GLASS_IOR = 1.5


def is_c2m_glass(slots):
    """Clear glass (windows, screen covers, bottles): an all-black colour map - the look is all reflection - plus
    the glass techsets' 0x4d map, a grey level for how clear it is (1.0 clean glass, ~0.85 tinted, ~0.5 screen
    covers). Black colour maps without it are just black surfaces (plastic, paint). Checked on mp_sat_rm_express."""
    if not slots.get("cs") or not slots.get("strand"):
        return False
    px = sample_rgba(slots["cs"])
    return px is not None and float(px[:, :3].max()) < 0.02


def build_c2m_glass(mat, slots, settings, metal_mode):
    """The normal CoD surface - black, so only its smudged reflections show - plus light passing straight
    through, as much as the 0x4d clearness map lets. Built as Transparent + reflections rather than refraction,
    so it looks right in Eevee without ray tracing as well as in Cycles."""
    build_material(mat, slots, settings, metal_mode, kind='DEFAULT')
    nt = mat.node_tree
    bsdf = next((n for n in nt.nodes if n.type == 'BSDF_PRINCIPLED'), None)
    out = next((n for n in nt.nodes if n.type == 'OUTPUT_MATERIAL'), None)
    if bsdf is None or out is None:
        return
    for names, value in ((("Metallic",), 0.0), (("IOR",), C2M_GLASS_IOR)):
        sock = _principled_input(bsdf, *names)
        if sock is not None:
            for link in list(sock.links):
                nt.links.remove(link)
            sock.default_value = value
    x, y = bsdf.location
    clear = nt.nodes.new("ShaderNodeTexImage")
    clear.image = load_image(slots["strand"], True, False)
    clear.label = "Clearness  (0x4d)"
    clear.width = 240
    clear.location = (x - 320, y - 700)
    through = nt.nodes.new("ShaderNodeBsdfTransparent")
    through.label = "See-through"
    through.location = (x, y - 700)
    nt.links.new(clear.outputs["Color"], through.inputs["Color"])
    add = nt.nodes.new("ShaderNodeAddShader")
    add.label = "Glass = reflections + see-through"
    add.location = (x + 300, y - 200)
    nt.links.new(bsdf.outputs[0], add.inputs[0])
    nt.links.new(through.outputs[0], add.inputs[1])
    nt.links.new(add.outputs[0], out.inputs["Surface"])
    _frame(nt, "Glass", "helper", [clear, through, add])
    if hasattr(mat, "surface_render_method"):
        mat.surface_render_method = 'DITHERED'
    elif hasattr(mat, "blend_method"):
        mat.blend_method = 'HASHED'
    mat.use_backface_culling = False
    mat["cod_kind"] = 'GLASS'


def build_c2m_hidden(mat):
    """A fully transparent material, for impostor cards (see C2M_ROLES)."""
    if hasattr(mat, "use_nodes") and not mat.use_nodes:
        mat.use_nodes = True
    nt = mat.node_tree
    nt.nodes.clear()
    out = nt.nodes.new("ShaderNodeOutputMaterial")
    out.location = (300, 0)
    clear = nt.nodes.new("ShaderNodeBsdfTransparent")
    clear.label = "Impostor card - hidden (Maps > Hide Impostor Cards)"
    nt.links.new(clear.outputs[0], out.inputs["Surface"])
    if hasattr(mat, "surface_render_method"):
        mat.surface_render_method = 'DITHERED'
    elif hasattr(mat, "blend_method"):
        mat.blend_method = 'CLIP'
    mat.diffuse_color = (1.0, 1.0, 1.0, 0.0)       # see-through in the viewport's Solid mode too
    mat["cod_shaded"] = True
    mat["cod_kind"] = 'PROXY'


def shade_c2m(mats, c2m_path, image_dir, settings, report, progress=None):
    """Rebuild every material in `mats` that the .c2m lists. Returns the number shaded."""
    table = read_c2m_materials(c2m_path)
    by_name = {n.lower(): layers for n, layers in table.items()}
    image_dir = image_dir or c2m_image_dir(c2m_path)
    if not image_dir or not os.path.isdir(image_dir):
        report({'ERROR'}, "CoD AutoShader: can't find the C2M images folder - set it under Maps")
        return 0
    files = _c2m_image_index(image_dir)
    todo = []
    for mat in mats:
        if mat is None or mat.library is not None:
            continue
        layers = by_name.get(re.sub(r"\.\d{3}$", "", mat.name).lower())
        if layers is not None:
            todo.append((mat, layers))
    done, missing, hidden, glass = 0, 0, 0, 0
    for n, (mat, layers) in enumerate(todo):
        if any("proxy" in r for r in layers.values()) and not any(r.get("cs") or r.get("nog")
                                                                    for r in layers.values()):
            if settings.c2m_hide_proxies:
                build_c2m_hidden(mat)
                hidden += 1
            continue
        paths = {}
        for k, roles in layers.items():
            found = {role: files.get(img.lower()) for role, img in roles.items()}
            found = {role: p for role, p in found.items() if p}
            if found.get("cs") or found.get("nog"):
                paths[k] = found
        if 0 not in paths:
            missing += 1
            continue
        if len(paths) > 1 and settings.c2m_layers:
            build_c2m_layered(mat, paths, settings, settings.metal_mode)
        else:
            base = paths[0]
            slots = {role: base.get(role) for role in SLOT_ROLES}
            slots["skin_marker"] = False
            if is_c2m_glass(slots):
                build_c2m_glass(mat, slots, settings, settings.metal_mode)
                glass += 1
            else:
                build_material(mat, slots, settings, settings.metal_mode, kind='DEFAULT')
        done += 1
        if progress is not None:
            progress(n + 1, len(todo))
    if missing:
        report({'WARNING'}, "CoD AutoShader: %d C2M material(s) had no textures in %s" % (missing, image_dir))
    report({'INFO'}, "CoD AutoShader: shaded %d C2M material(s)%s%s" % (
        done, " (%d glass)" % glass if glass else "",
        ", hid %d impostor card material(s)" % hidden if hidden else ""))
    return done


def _c2m_file(context, s):
    if s.c2m_file:
        return bpy.path.abspath(s.c2m_file)
    c2m = getattr(context.scene, "c2m_v2", None)          # the C2M Import v2 panel's file, if that add-on is on
    path = getattr(c2m, "filepath", "") if c2m is not None else ""
    return bpy.path.abspath(path) if path else ""


def _c2m_importer_ready():
    try:
        bpy.ops.import_scene.c2m_v2.get_rna_type()
        return True
    except (AttributeError, KeyError):
        return False


class COD_OT_import_c2m(bpy.types.Operator, ImportHelper):
    bl_idname = "cod.import_c2m"
    bl_label = "Import & Shade Map"
    bl_description = ("Import a C2M .c2m map with the C2M Import v2 add-on (its own shaders skipped, which is much "
                      "faster), then shade it with the CoD decode")
    bl_options = {'REGISTER', 'UNDO'}

    filename_ext = ".c2m"
    filter_glob: StringProperty(default="*.c2m", options={'HIDDEN'})

    def execute(self, context):
        if not _c2m_importer_ready():
            self.report({'ERROR'}, "Turn on the C2M Import v2 add-on (Preferences > Add-ons) to import .c2m maps")
            return {'CANCELLED'}
        s = _settings(context)
        path = bpy.path.abspath(self.filepath)
        folder = bpy.path.abspath(s.c2m_images) if s.c2m_images else (c2m_image_dir(path) or "")
        # empty named materials only: shade_c2m fills them in
        result = bpy.ops.import_scene.c2m_v2(filepath=path, import_materials=True, advanced_shading=False,
                                             texture_dir=folder)
        if 'FINISHED' not in result:
            return {'CANCELLED'}
        s.c2m_file = path
        wm = context.window_manager
        wm.progress_begin(0, 100)
        try:
            shade_c2m(list(bpy.data.materials), path, folder, s, self.report,
                      progress=lambda i, n: wm.progress_update(int(100 * i / max(n, 1))))
        except (OSError, ValueError, struct.error) as e:
            self.report({'ERROR'}, "CoD AutoShader: couldn't read %s (%s)" % (os.path.basename(path), e))
            return {'CANCELLED'}
        finally:
            wm.progress_end()
        return {'FINISHED'}


class COD_OT_shade_c2m(bpy.types.Operator):
    bl_idname = "cod.shade_c2m"
    bl_label = "Shade C2M Map"
    bl_description = ("Rebuild the materials of a map imported with C2M with the CoD decode (packed colour + metal "
                      "and normal / gloss / AO), including layered ground blends")
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        s = _settings(context)
        path = _c2m_file(context, s)
        if not path or not os.path.isfile(path):
            self.report({'ERROR'}, "Pick the map's .c2m file under Maps")
            return {'CANCELLED'}
        mats = _selected_materials(context) if s.c2m_selected_only else list(bpy.data.materials)
        folder = bpy.path.abspath(s.c2m_images) if s.c2m_images else ""
        wm = context.window_manager
        wm.progress_begin(0, 100)
        try:
            shade_c2m(mats, path, folder, s, self.report,
                      progress=lambda i, n: wm.progress_update(int(100 * i / max(n, 1))))
        except (OSError, ValueError, struct.error) as e:
            self.report({'ERROR'}, "CoD AutoShader: couldn't read %s (%s)" % (os.path.basename(path), e))
            return {'CANCELLED'}
        finally:
            wm.progress_end()
        return {'FINISHED'}


# --------------------------------------------------------------------------------------------
# Bodycam look (compositor)
# --------------------------------------------------------------------------------------------
# Bodycam-style footage: a wide lens with barrel distortion, rainbow fringes and smeared edges; blown-out
# auto exposure with bloom; a flat, warm grade; digital sharpening and sensor noise. Built as one compositor
# node group inserted before the output, so every slider stays live (Blender 5.0+ node-group compositor).

BODYCAM_GROUP_NAME = "CoD Bodycam Look"
BODYCAM_GROUP_VERSION = 1
BODYCAM_NODE_NAME = "CoD Bodycam"
# (socket, panel, default, min, max, tooltip)
BODYCAM_PARAMS = (
    ("Fisheye", "Lens", 0.6, 0.0, 1.0, "Wide-angle fisheye: straight lines bow outward, the center is magnified"),
    ("Chromatic Aberration", "Lens", 0.6, 0.0, 1.0, "Rainbow color fringes toward the edges"),
    ("Edge Blur", "Lens", 0.5, 0.0, 1.0, "Soft, smeared edges around a sharp center"),
    ("Vignette", "Lens", 0.45, 0.0, 1.0, "Darker corners"),
    ("Exposure", "Light", 0.2, -3.0, 3.0, "Brighter, blown-out auto exposure (in stops)"),
    ("Bloom", "Light", 0.4, 0.0, 1.0, "Glow around lights, windows and sky"),
    ("Contrast", "Color", 0.3, -1.0, 1.0, "Harder (+) or flatter (-) image"),
    ("Saturation", "Color", 0.75, 0.0, 2.0, "Washed-out (< 1) or punchy (> 1) color"),
    ("Warmth", "Color", 0.1, -1.0, 1.0, "Warm (+) or cool (-) camera white balance"),
    ("Sharpen", "Camera", 0.35, 0.0, 1.0, "The digital sharpening of cheap body cameras"),
    ("Grain", "Camera", 0.3, 0.0, 1.0, "Animated sensor noise, strongest in the dark"),
)
BODYCAM_PRESETS = {
    'DAY': {p[0]: p[2] for p in BODYCAM_PARAMS},
    'NIGHT': dict({p[0]: p[2] for p in BODYCAM_PARAMS}, Exposure=1.0, Bloom=0.8, Contrast=0.3, Saturation=0.45,
                  Warmth=-0.1, Sharpen=0.2, Grain=0.75),
}


def _menu(node, socket, *values):
    """Set a menu socket (Blender 5 compositor) to the first value it accepts."""
    for v in values:
        try:
            node.inputs[socket].default_value = v
            return
        except (TypeError, KeyError):
            continue


def get_bodycam_group():
    name = "%s v%d" % (BODYCAM_GROUP_NAME, BODYCAM_GROUP_VERSION)
    ng = bpy.data.node_groups.get(name)
    if ng is not None:
        return ng
    ng = bpy.data.node_groups.new(name, "CompositorNodeTree")
    iface = ng.interface
    _socket(iface, "Image", "OUTPUT", "NodeSocketColor")
    _socket(iface, "Image", "INPUT", "NodeSocketColor")
    panels = {}
    for sock, panel, default, lo, hi, desc in BODYCAM_PARAMS:
        if panel not in panels:
            panels[panel] = iface.new_panel(panel)
        _socket(iface, sock, "INPUT", "NodeSocketFloat", default, lo, hi, desc, parent=panels[panel])

    b = _Builder(ng)
    nodes, link = ng.nodes, ng.links.new
    gi = nodes.new("NodeGroupInput")
    gi.location = (-1400, 0)
    go = nodes.new("NodeGroupOutput")
    go.location = (5100, 0)
    inp = gi.outputs

    def node(tid, loc, **values):
        n = nodes.new(tid)
        n.location = loc
        for key, v in values.items():
            b._feed(n.inputs[key.replace("_", " ")], v)
        return n

    def mix(blend, fac, a, c, loc):
        m = nodes.new("ShaderNodeMix")
        m.data_type = 'RGBA'
        m.blend_type = blend
        m.location = loc
        b._feed(m.inputs[0], fac)
        b._feed(m.inputs[6], a)
        b._feed(m.inputs[7], c)
        return m.outputs[2]

    def smooth(value, lo, hi, loc):
        mr = nodes.new("ShaderNodeMapRange")
        mr.interpolation_type = 'SMOOTHSTEP'
        mr.location = loc
        link(value, mr.inputs[0])
        mr.inputs[1].default_value = lo
        mr.inputs[2].default_value = hi
        return mr.outputs[0]

    # sensor: auto exposure pushed into the highlights, then bloom
    exposure = node("CompositorNodeExposure", (-1100, 0), Image=inp["Image"], Exposure=inp["Exposure"])
    glare = node("CompositorNodeGlare", (-850, 0), Image=exposure.outputs[0], Threshold=1.0, Smoothness=0.4,
                 Strength=b.math("MULTIPLY", inp["Bloom"], 0.6, loc=(-1100, -250)), Size=0.55)
    _menu(glare, "Type", "Bloom", "Fog Glow")
    _menu(glare, "Quality", "Medium")

    # lens: rectilinear -> fisheye remap. Corners stay put, the center is magnified and the edges squeezed
    # (radius r maps to tan(k r) / (k r)); red and blue sample at slightly different scales for color fringes
    # that grow toward the edges. Then blur toward the edges and a vignette.
    src = glare.outputs["Image"]
    coords = node("CompositorNodeImageCoordinates", (-550, -350), Image=src)
    info = node("CompositorNodeImageInfo", (-550, -550), Image=src)
    size = nodes.new("ShaderNodeSeparateXYZ")
    size.location = (-350, -550)
    link(info.outputs["Resolution"], size.inputs[0])
    aspect = b.math("DIVIDE", b.math("MINIMUM", size.outputs[0], size.outputs[1], loc=(-200, -520)),
                    b.math("MAXIMUM", size.outputs[0], size.outputs[1], loc=(-200, -620)), loc=(-50, -560))
    corner = b.math("SQRT", b.math("MULTIPLY_ADD", aspect, aspect, 1.0, loc=(100, -560)), loc=(250, -560))
    radius = b.vmath("LENGTH", coords.outputs["Uniform"], loc=(-350, -350)).node.outputs["Value"]
    k_corner = b.math("MAXIMUM", b.math("MULTIPLY", inp["Fisheye"], 1.3, loc=(-350, -750)), 1e-4, loc=(-200, -750))
    k = b.math("DIVIDE", k_corner, corner, loc=(400, -700))
    x = b.math("MAXIMUM", b.math("MULTIPLY", k, radius, loc=(550, -650)), 1e-4, loc=(700, -650))
    tan_ratio = b.math("DIVIDE", b.math("TANGENT", x, loc=(850, -600)), x, loc=(1000, -650))
    corner_ratio = b.math("DIVIDE", b.math("TANGENT", k_corner, loc=(850, -800)), k_corner, loc=(1000, -800))
    scale = b.math("DIVIDE", tan_ratio, corner_ratio, loc=(1150, -700))
    fringe = b.math("MULTIPLY", b.math("MULTIPLY", radius, radius, loc=(1000, -950)),
                    b.math("MULTIPLY", inp["Chromatic Aberration"], 0.012, loc=(1000, -1100)), loc=(1150, -1000))
    centered = b.vmath("SUBTRACT", coords.outputs["Normalized"], (0.5, 0.5, 0.0), loc=(1150, -400))
    channels = []
    for i, sign in enumerate((1.0, 0.0, -1.0)):          # red outward, green on the lens, blue inward
        channel_scale = b.math("MULTIPLY", scale, b.math("MULTIPLY_ADD", fringe, sign, 1.0, loc=(1300, -700 - i * 150)),
                               loc=(1450, -700 - i * 150))
        uv = b.vmath("ADD", b.vmath("SCALE", centered, scale=channel_scale, loc=(1600, -400 - i * 200)),
                     (0.5, 0.5, 1.0), loc=(1750, -400 - i * 200))           # Map UV reads z as the mask
        remap = node("CompositorNodeMapUV", (1900, -300 - i * 250), Image=src, UV=uv)
        _menu(remap, "Extension X", "Extend")
        _menu(remap, "Extension Y", "Extend")
        split = nodes.new("CompositorNodeSeparateColor")
        split.location = (2100, -300 - i * 250)
        link(remap.outputs[0], split.inputs[0])
        channels.append(split)
    lens = nodes.new("CompositorNodeCombineColor")
    lens.location = (2300, -500)
    for i, split in enumerate(channels):
        link(split.outputs[i], lens.inputs[i])
    link(channels[1].outputs[3], lens.inputs[3])
    blur_size = node("CompositorNodeRelativeToPixel", (2300, -150), Image=lens.outputs[0])
    blur_size.data_type = 'VECTOR'
    blur_size.reference_dimension = 'Greater'
    rel = b.math("MULTIPLY", inp["Edge Blur"], 0.012, loc=(2100, -50))
    link(b.vmath("SCALE", (1.0, 1.0, 0.0), scale=rel, loc=(2200, -100)), _live_socket(blur_size.inputs, "Value"))
    blur = node("CompositorNodeBlur", (2500, -150), Image=lens.outputs[0],
                Size=_live_socket(blur_size.outputs, "Value"))
    _menu(blur, "Type", "Fast Gaussian", "Gaussian")
    soft = mix('MIX', smooth(radius, 0.3, 1.05, (2500, -400)), lens.outputs[0], blur.outputs[0], (2750, 0))
    dark = b.math("MULTIPLY", smooth(radius, 0.5, 1.2, (2750, -400)), inp["Vignette"], loc=(2950, -400))
    vignetted = mix('MULTIPLY', 1.0, soft, b.math("SUBTRACT", 1.0, dark, loc=(3100, -400)), (3150, 0))

    # grade: flat, washed-out, warm
    huesat = node("CompositorNodeHueSat", (3400, 0), Image=vignetted, Saturation=inp["Saturation"])
    contrast = node("CompositorNodeBrightContrast", (3600, 0), Image=huesat.outputs[0],
                    Contrast=b.math("MULTIPLY", inp["Contrast"], 40.0, loc=(3400, -250)))
    balance = node("CompositorNodeCombineColor", (3600, -300),
                   Red=b.math("MULTIPLY_ADD", inp["Warmth"], 0.12, 1.0, loc=(3400, -400)),
                   Green=b.math("MULTIPLY_ADD", inp["Warmth"], 0.03, 1.0, loc=(3400, -550)),
                   Blue=b.math("MULTIPLY_ADD", inp["Warmth"], -0.15, 1.0, loc=(3400, -700)))
    warm = mix('MULTIPLY', 1.0, contrast.outputs[0], balance.outputs[0], (3800, 0))

    # camera: digital sharpening and animated sensor noise, stronger in the shadows
    sharpen = node("CompositorNodeFilter", (4050, 0), Image=warm,
                   Factor=b.math("MULTIPLY", inp["Sharpen"], 0.6, loc=(3850, -250)))
    _menu(sharpen, "Type", "Diamond Sharpen", "Box Sharpen")
    pixel = node("CompositorNodeImageCoordinates", (4050, -350), Image=sharpen.outputs[0])
    frame = nodes.new("CompositorNodeSceneTime")
    frame.location = (4050, -550)
    noise = nodes.new("ShaderNodeTexWhiteNoise")
    noise.noise_dimensions = '4D'
    noise.location = (4250, -350)
    link(pixel.outputs["Pixel"], noise.inputs["Vector"])
    link(frame.outputs["Frame"], noise.inputs["W"])
    luma = node("CompositorNodeRGBToBW", (4250, -150), Image=sharpen.outputs[0])
    shadows = b.math("SUBTRACT", 1.0, b.math("MULTIPLY", luma.outputs[0], 0.6, clamp=True, loc=(4450, -150)),
                     loc=(4600, -150))
    grain = b.math("MULTIPLY", b.math("SUBTRACT", noise.outputs["Value"], 0.5, loc=(4450, -350)),
                   b.math("MULTIPLY", inp["Grain"], shadows, loc=(4600, -300)), loc=(4750, -350))
    link(mix('ADD', 0.16, sharpen.outputs[0], grain, (4850, 0)), go.inputs["Image"])
    return ng


def _compositor_tree(scene, create=False):
    """The scene's compositing node group (Blender 5.0+), created with Render Layers -> Output if asked."""
    if not hasattr(scene, "compositing_node_group"):
        return None
    tree = scene.compositing_node_group
    if tree is None and create:
        tree = bpy.data.node_groups.new("Compositing", "CompositorNodeTree")
        tree.interface.new_socket("Image", in_out="OUTPUT", socket_type="NodeSocketColor")
        layers = tree.nodes.new("CompositorNodeRLayers")
        layers.location = (-400, 0)
        out = tree.nodes.new("NodeGroupOutput")
        out.location = (400, 0)
        tree.links.new(layers.outputs["Image"], out.inputs[0])
        scene.compositing_node_group = tree
    return tree


def bodycam_node(scene):
    tree = _compositor_tree(scene)
    return tree.nodes.get(BODYCAM_NODE_NAME) if tree is not None else None


def set_bodycam(scene, enable):
    """Insert (or un-mute) the Bodycam Look group before the compositor output; disabling mutes it so the
    sliders are kept."""
    node = bodycam_node(scene)
    if not enable:
        if node is not None:
            node.mute = True
        return
    if node is None:
        tree = _compositor_tree(scene, create=True)
        if tree is None:            # Blender 4.x compositor: not supported
            return
        out = next((n for n in tree.nodes if n.bl_idname == 'NodeGroupOutput' and n.is_active_output),
                   next((n for n in tree.nodes if n.bl_idname == 'NodeGroupOutput'), None))
        if out is None:
            if not tree.interface.items_tree:
                tree.interface.new_socket("Image", in_out="OUTPUT", socket_type="NodeSocketColor")
            out = tree.nodes.new("NodeGroupOutput")
        target = out.inputs[0]
        if target.is_linked:
            source = target.links[0].from_socket
        else:
            layers = next((n for n in tree.nodes if n.bl_idname == 'CompositorNodeRLayers'), None)
            if layers is None:
                layers = tree.nodes.new("CompositorNodeRLayers")
                layers.location = (out.location.x - 800, out.location.y)
            source = layers.outputs["Image"]
        node = tree.nodes.new("CompositorNodeGroup")
        node.node_tree = get_bodycam_group()
        node.name = BODYCAM_NODE_NAME
        node.label = "CoD Bodycam Look"
        node.width = 220
        node.location = (out.location.x, out.location.y)
        out.location.x += 320
        tree.links.new(source, node.inputs["Image"])
        tree.links.new(node.outputs["Image"], target)
    node.mute = False
    scene.render.use_compositing = True


def apply_bodycam_preset(scene, preset):
    node = bodycam_node(scene)
    if node is None:
        return
    for sock, value in BODYCAM_PRESETS[preset].items():
        if sock in node.inputs:
            node.inputs[sock].default_value = value


def _anim_play_get(self):
    rig = _anim_target(bpy.context)
    return rig is None or rig.data.pose_position == 'POSE'


def _anim_play_set(self, value):
    rig = _anim_target(bpy.context)
    if rig is not None:
        rig.data.pose_position = 'POSE' if value else 'REST'


def _bodycam_get(self):
    node = bodycam_node(self.id_data)
    return node is not None and not node.mute


def _bodycam_set(self, value):
    set_bodycam(self.id_data, value)


# --------------------------------------------------------------------------------------------
# UI / operators
# --------------------------------------------------------------------------------------------

def surface_roughness_floor(settings, game=None):
    if settings.roughness_auto:
        return GAME_ROUGHNESS_FLOOR.get(game or settings.game, 0.0)
    return settings.roughness_min


def material_game(slots, settings):
    """The game whose rules shade this material: the one its model was detected from while the lock is on,
    the Game buttons otherwise (or when nothing in the names says)."""
    if getattr(settings, "game_auto", False) and slots and slots.get("game"):
        return slots["game"]
    return settings.game


def _weapon_update(self, context):
    """Push the weapon sliders into every gun material already shaded. The camo image is not live: it is a
    texture node, so changing it needs a reshade - the panel says so."""
    for m in bpy.data.materials:
        if m.library is not None or m.node_tree is None:
            continue
        node = m.node_tree.nodes.get(WEAPON_NODE_NAME)
        if node is None:
            continue
        on = self.weapon_finish
        _set_input(node, "Wear Amount", self.weapon_wear if on else 0.0)
        _set_input(node, "Grime", self.weapon_grime if on else 0.0)
        _set_input(node, "Camo Amount", self.weapon_camo if on else 0.0)
        _set_input(node, "Layer Tint", tuple(self.weapon_layer_tint) + (1.0,))
        _set_input(node, "Tint A", tuple(self.weapon_tint_a) + (1.0,))
        _set_input(node, "Tint B", tuple(self.weapon_tint_b) + (1.0,))
        _set_input(node, "Layer Amount", self.weapon_layer_amount if (on and self.weapon_layer2) else 0.0)
        if not node.inputs["Camo Color"].is_linked:
            _set_input(node, "Camo Color", tuple(self.weapon_camo_color) + (1.0,))
    if self.weapon_finish and self.weapon_camo > 0.0:
        # gun parts shaded at Camo 0 were built without their camo mask (VRAM): load it now
        pending = [m for m in bpy.data.materials if m.get("cod_camo_deferred") and m.library is None]
        if pending:
            shade_materials(pending, self, lambda level, msg: None)


def _roughness_update(self, context):
    """Apply the surface roughness floor to every shaded surface material right away."""
    for m in bpy.data.materials:
        if m.library is not None or m.get("cod_kind") != 'DEFAULT' or m.node_tree is None:
            continue
        floor = surface_roughness_floor(self, m.get("cod_game") if self.game_auto else None)
        for n in m.node_tree.nodes:
            if n.type == 'GROUP' and n.node_tree and n.node_tree.name.startswith(GROUP_NAME):
                sock = n.inputs.get("Roughness Min")
                if sock is not None:
                    sock.default_value = floor


def _reshade_hair(self, context):
    """Hair settings apply right away: rebuild the hair materials already shaded."""
    mats = [m for m in bpy.data.materials if m.library is None and m.get("cod_kind") == 'HAIR']
    if mats:
        shade_materials(mats, self, lambda *a: None)


def _hair_colors(self, context):
    """Colour tweaks go straight into the hair card nodes (no rebuild while dragging the picker)."""
    for m in bpy.data.materials:
        node = m.node_tree.nodes.get(HAIR_CARD_NODE_NAME) if m.node_tree is not None else None
        if node is None:
            continue
        if not self.hair_use_game_color:
            _set_input(node, "Base Color", tuple(self.hair_color) + (1.0,))
        _set_input(node, "Highlight Color", tuple(self.hair_highlight) + (1.0,))
        bright = m.node_tree.nodes.get(HAIR_BRIGHT_NODE)
        if bright is not None:
            v = self.hair_brightness
            bright.inputs[7].default_value = (v, v, v, 1.0)


# "HDR in Call of Duty" (Paul Malin, Activision 2018): from WWII on, exposure -> grade -> a tone curve "very close to
# the ACES RRT" -> display mapping -> BT.1886. Blender ships exactly that tone curve and transfer as its ACES 1.3 view.
COD_LOOK_VIEW = "ACES 1.3"
COD_LOOK_SAVED = "cod_look_saved"


def _cod_look_update(self, context):
    scene = context.scene
    vs, ds = scene.view_settings, scene.display_settings
    if self.cod_look:
        if COD_LOOK_SAVED not in scene:
            scene[COD_LOOK_SAVED] = {"display": ds.display_device, "view": vs.view_transform, "look": vs.look,
                                     "exposure": vs.exposure, "gamma": vs.gamma}
        try:
            ds.display_device = 'sRGB'
            vs.view_transform = COD_LOOK_VIEW
            vs.look = 'None'
            vs.exposure = self.cod_look_exposure
            vs.gamma = 1.0
        except TypeError:
            pass                                      # an OCIO config without ACES: leave the view alone
    else:
        saved = scene.get(COD_LOOK_SAVED)
        if saved:
            try:
                ds.display_device = saved["display"]
                vs.view_transform = saved["view"]
                vs.look = saved["look"]
                vs.exposure = saved["exposure"]
                vs.gamma = saved["gamma"]
            except (TypeError, KeyError):
                pass
            del scene[COD_LOOK_SAVED]


# (viewport + EEVEE texture size, Cycles final-render texture size, EEVEE shadow pool MB)
VRAM_BUDGETS = {
    'FULL': ('OFF', 'OFF', None),
    'BALANCED': ('2048', 'OFF', None),
    'LOW': ('1024', '2048', '256'),
}
VRAM_APPLIED = "cod_vram_applied"


def apply_vram_budget(scene, budget):
    """Cap texture sizes on the GPU. Blender scales the maps down as it uploads them; the files and the
    materials are untouched, so going back to Full brings every map back at full size."""
    view, render, pool = VRAM_BUDGETS.get(budget, VRAM_BUDGETS['BALANCED'])
    try:
        scene.cycles.texture_limit = view
        scene.cycles.texture_limit_render = render
    except AttributeError:
        pass                                          # Cycles disabled
    try:
        # EEVEE and the Material Preview viewport read Blender's own GPU texture limit (a preference)
        bpy.context.preferences.system.gl_texture_limit = 'CLAMP_OFF' if view == 'OFF' else 'CLAMP_' + view
    except (AttributeError, TypeError):
        pass
    try:
        scene.eevee.shadow_pool_size = pool or '512'
    except (AttributeError, TypeError):
        pass
    scene[VRAM_APPLIED] = budget


def _vram_update(self, context):
    apply_vram_budget(context.scene, self.vram_budget)


def _cod_look_exposure_update(self, context):
    if self.cod_look:
        context.scene.view_settings.exposure = self.cod_look_exposure


# --------------------------------------------------------------------------------------------
# TinyEye eyes
# --------------------------------------------------------------------------------------------
# The CoD eyeballs are hidden and a TinyEye eye sits in each one, parented to its j_eyeball joint (so it follows
# the eye animation, the look-at control and the face board), sized to it, and tinted to the CoD iris and sclera.

TINY_EYE_TAG = "cod_tiny_eye"              # on the TinyEye objects: the rig they were made for
TINY_EYE_HIDDEN = "cod_tiny_eye_hidden"    # on the CoD eye meshes hidden for them
# display-sRGB iris colour of TinyEye's natural presets, measured off its own preset icons
TINY_EYE_IRIS = {
    "Blue Light": (0.565, 0.639, 0.647), "Blue": (0.388, 0.42, 0.459), "Brown Amber": (0.412, 0.227, 0.145),
    "Brown Dark": (0.306, 0.208, 0.161), "Brown Honey": (0.541, 0.365, 0.247), "Default": (0.639, 0.357, 0.192),
    "Green": (0.424, 0.373, 0.196), "Green Deep": (0.204, 0.325, 0.267), "Hazel": (0.439, 0.4, 0.357),
    "Grey": (0.341, 0.337, 0.329),
}
TINY_EYE_ONLY = {"Grey": ("Simple",)}      # presets that exist in one style only
TINY_EYE_LIT = 1.8      # the icons are lit renders, a CoD colour map is bare albedo: about this much brighter


def tiny_eye_library():
    """The TinyEye library .blend from the user's install (enabled or not), or None."""
    import glob
    try:
        import addon_utils
        for mod in addon_utils.modules():
            if "tiny_eye" in mod.__name__.lower() and getattr(mod, "__file__", None):
                hits = glob.glob(os.path.join(os.path.dirname(mod.__file__), "assets", "*.blend"))
                if hits:
                    return hits[0]
    except Exception:
        pass
    try:
        base = bpy.utils.user_resource('EXTENSIONS')
    except (TypeError, ValueError):
        base = ""
    hits = glob.glob(os.path.join(base, "*", "tiny_eye*", "assets", "*.blend")) if base else []
    return hits[0] if hits else None


def _srgb_to_linear(c):
    return c / 12.92 if c <= 0.04045 else ((c + 0.055) / 1.055) ** 2.4


def _eye_joint(ob, rig):
    """The eyeball joint a CoD eye mesh hangs on: the eye bone carrying most of its weight."""
    totals = {}
    names = {g.index: g.name for g in ob.vertex_groups}
    for v in ob.data.vertices:
        for g in v.groups:
            n = names.get(g.group, "")
            low = n.lower()
            if n in rig.data.bones and "eye" in low and not any(k in low for k in ("lid", "lash", "brow", "bulge")):
                totals[n] = totals.get(n, 0.0) + g.weight
    return max(totals, key=totals.get) if totals else None


def cod_eye_meshes(rig):
    """[(mesh object, eyeball joint)] for the CoD eyes of a rig."""
    out = []
    for ob in bpy.data.objects:
        if ob.type != 'MESH' or ob.parent is not rig or ob.get(TINY_EYE_TAG):
            continue
        mats = [s.material for s in ob.material_slots if s.material is not None]
        if mats and all(m.get("cod_kind") == 'EYE' for m in mats):
            joint = _eye_joint(ob, rig)
            if joint:
                out.append((ob, joint))
    return out


def _head_frame(rig, eyes):
    """(forward, up) of the head in the rig's rest space."""
    bones = rig.data.bones
    up = Vector((0.0, 0.0, 1.0))
    head, neck = bones.get("j_head"), bones.get("j_neck")
    if head is not None and neck is not None:
        rise = head.head_local - neck.head_local
        if rise.length > 1e-6 and rise.normalized().dot(up) < 0.5:
            up = rise.normalized()
    mid = sum((bones[j].head_local for _o, j in eyes), Vector()) / len(eyes)
    f = mid - (head.head_local if head is not None else mid - Vector((1.0, 0.0, 0.0)))
    f -= up * f.dot(up)
    return (f.normalized() if f.length > 1e-6 else Vector((1.0, 0.0, 0.0))), up


def cod_eye_colours(ob, rig, center, fwd):
    """(iris, sclera) display-sRGB colours read off the CoD eye's colour map: where the eyeball looks straight
    ahead is the iris, its sides are the sclera."""
    mat = next((s.material for s in ob.material_slots if s.material is not None), None)
    img = None
    if mat is not None and mat.node_tree is not None:
        imgs = [n for n in mat.node_tree.nodes if n.type == 'TEX_IMAGE' and n.image is not None]
        img = next((n.image for n in imgs if (n.label or "").startswith("Color")), None)
        if img is None and imgs:
            img = max((n.image for n in imgs), key=lambda i: i.size[0] * i.size[1])
    if img is None or min(img.size) < 8 or not ob.data.uv_layers:
        return None, None
    w, h = img.size
    px = np.empty(w * h * 4, np.float32)
    img.pixels.foreach_get(px)
    px = px.reshape(h, w, 4)
    to_rig = rig.matrix_world.inverted() @ ob.matrix_world
    me, uv = ob.data, ob.data.uv_layers.active.data
    iris, sclera = [], []
    for loop in me.loops:
        p = to_rig @ me.vertices[loop.vertex_index].co - center
        if p.length < 1e-6:
            continue
        a = math.degrees(p.angle(fwd))
        if 15.0 < a < 24.0 or 50.0 < a < 75.0:
            u, v = uv[loop.index].uv
            c = px[int(v % 1.0 * (h - 1)), int(u % 1.0 * (w - 1)), :3]
            (iris if a < 30.0 else sclera).append(c)
    med = lambda cs: tuple(float(x) for x in np.median(np.array(cs), axis=0)) if cs else None
    return med(iris), med(sclera)


def _tiny_eye_preset(iris, style):
    """The natural TinyEye preset nearest the iris colour, in the chosen style where it exists."""
    import colorsys
    if iris is None:
        name = "Brown Dark"
    else:
        h, s, v = colorsys.rgb_to_hsv(*iris)

        def dist(base):
            h0, s0, v0 = colorsys.rgb_to_hsv(*base)
            dh = min(abs(h - h0), 1.0 - abs(h - h0)) * min(s, s0) * 4.0     # hue counts only where both have colour
            return dh * dh + (s - s0) ** 2 + (v * TINY_EYE_LIT - v0) ** 2
        # only colours that come in the chosen style (Grey is Simple-only: no realistic veins)
        pool = [n for n in TINY_EYE_IRIS if style.title() in TINY_EYE_ONLY.get(n, (style.title(),))] or list(TINY_EYE_IRIS)
        name = min(pool, key=lambda n: dist(TINY_EYE_IRIS[n]))
    styles = TINY_EYE_ONLY.get(name, (style.title(),))
    return name, "%s %s" % (name, style.title() if style.title() in styles else styles[0])


def _group_inputs(node):
    """{(panel, name): socket} for a group node, the panel being the interface panel (iris) or the colour that
    opens the run of settings (sclera: Sclera / Shadow / Blood / Veins)."""
    panels = {}
    for it in node.node_tree.interface.items_tree:
        if getattr(it, "item_type", "") == 'SOCKET' and it.in_out == 'INPUT':
            parent = it.parent.name if getattr(it, "parent", None) is not None else ""
            panels[it.identifier] = parent
    out, run = {}, ""
    for sock in node.inputs:
        if sock.type == 'RGBA':
            run = sock.name
        out.setdefault((panels.get(sock.identifier) or run, sock.name), sock)
    return out


def _set(socks, key, value):
    sock = socks.get(key)
    if sock is not None and not sock.is_linked:
        sock.default_value = value


# TinyEye's iris Colour is authored dark ("keep the value low"): the Blue preset's 0.006 renders as sRGB 0.42
TINY_EYE_IRIS_GAIN = 0.12


def _tune_tiny_eye(materials, preset, iris, sclera, veins, shadow=0.5):
    """Colour the iris and sclera like the CoD maps and set TinyEye up for a realistic eye: a dark limbal ring,
    the upper lid's shadow, a sclera that is wet but not a mirror, a little redness in the corners, veins."""
    for mat in materials:
        if mat is None or mat.node_tree is None:
            continue
        for n in mat.node_tree.nodes:
            if n.type != 'GROUP' or n.node_tree is None:
                continue
            gname = n.node_tree.name
            s = _group_inputs(n)
            if gname.startswith("Tiny Iris"):
                if iris is not None:
                    lin = [_srgb_to_linear(c) * TINY_EYE_IRIS_GAIN for c in iris]
                    _set(s, ("", "Colour"), tuple(lin) + (1.0,))
                    import colorsys
                    base = TINY_EYE_IRIS.get(preset)
                    sat = 1.0
                    if base is not None:
                        sat = colorsys.rgb_to_hsv(*iris)[1] / max(colorsys.rgb_to_hsv(*base)[1], 1e-3)
                    for panel in ("Ciliary Zone", "Ciliary Edge"):
                        _set(s, (panel, "Hue"), 0.5)          # the zone round the pupil keeps the iris hue
                        _set(s, (panel, "Sat"), max(0.2, min(1.0, sat)))     # ...and its saturation
                _set(s, ("", "Contrast"), 1.0)
                realistic = s.get(("", "Realistic"))
                if realistic is not None and realistic.default_value > 0.0:
                    _set(s, ("", "Realistic"), 1.6)           # stronger fibres
                    _set(s, ("", "Ciliary Zone"), 1.0)
                _set(s, ("Dark Ring", "Grow"), 0.1)           # the limbal ring every real iris has
                _set(s, ("Dark Ring", "Feather"), 0.6)
                _set(s, ("Dark Ring", "Opacity"), 0.75)
                _set(s, ("Misc", "Top shadow"), shadow)
                _set(s, ("Misc", "Bottom glow"), 0.1)         # a stylised gradient: barely
            elif gname.startswith("Tiny Sclera"):
                if sclera is not None:
                    lin = [_srgb_to_linear(c) for c in sclera]
                    grey = sum(lin) / 3.0
                    lin = [grey + (c - grey) * 0.4 for c in lin]     # its tint, not its baked warmth
                    peak = max(max(lin), 1e-3)
                    ref = s.get(("Sclera", "Sclera"))
                    ref = max(ref.default_value[:3]) if ref is not None else 0.5
                    _set(s, ("Sclera", "Sclera"), tuple(c / peak * ref for c in lin) + (1.0,))
                _set(s, ("Sclera", "Roughness (Sclera)"), 0.18)       # wet, not chrome
                _set(s, ("Sclera", "Roughness (Cornea)"), 0.02)
                _set(s, ("Shadow", "Grow"), 0.6)                      # the lid's shadow across the top
                _set(s, ("Shadow", "Feather"), 0.85)
                _set(s, ("Shadow", "Opacity"), shadow)
                _set(s, ("Blood", "Opacity"), 0.55)
                _set(s, ("Veins", "Grow"), 0.8)                       # TinyEye ships its vein pattern at
                _set(s, ("Veins", "Scale"), 0.6)                      # scale 0: none show until it has a size
                _set(s, ("Veins", "Opacity"), veins)


def apply_tiny_eyes(rig, settings, report=None):
    """Swap the rig's CoD eyeballs for TinyEye eyes. Returns how many."""
    lib = tiny_eye_library()
    if lib is None:
        if report:
            report({'WARNING'}, "CoD AutoShader: TinyEye is not installed - nothing to swap the eyes for")
        return 0
    remove_tiny_eyes(rig)
    eyes = cod_eye_meshes(rig)
    if not eyes:
        return 0
    fwd, up = _head_frame(rig, eyes)
    first = eyes[0]
    center0 = rig.data.bones[first[1]].head_local
    iris, sclera = cod_eye_colours(first[0], rig, center0, fwd)
    family, preset = _tiny_eye_preset(iris, settings.tiny_eye_style)
    with bpy.data.libraries.load(lib, link=False) as (src, dst):
        dst.objects = [preset] if preset in src.objects else []
    if not dst.objects or dst.objects[0] is None:
        if report:
            report({'WARNING'}, "CoD AutoShader: TinyEye has no '%s' eye" % preset)
        return 0
    proto = dst.objects[0]
    mesh = proto.data
    mats = [s.material for s in proto.material_slots]
    _tune_tiny_eye(mats, family, iris, sclera, settings.tiny_eye_veins,
                   min(1.0, 0.3 + getattr(settings, "eye_shadow", 0.5)))
    # its own forward axis and size: the iris faces sit in front of the centre
    iris_polys = [p for p in mesh.polygons if p.material_index == 0]
    look = sum((p.center for p in iris_polys), Vector()) if iris_polys else Vector((0.0, -1.0, 0.0))
    look = look.normalized() if look.length > 1e-9 else Vector((0.0, -1.0, 0.0))
    # sizes are matched on the back of the eyeball: TinyEye's cornea bulges ~1.5 mm past its sphere
    back = sorted(v.co.length for v in mesh.vertices if v.co.dot(look) < -0.3 * v.co.length)
    r_tiny = back[len(back) // 2] if back else sum(v.co.length for v in mesh.vertices) / max(len(mesh.vertices), 1)
    side = Vector((0.0, 0.0, 1.0)) if abs(look.z) < 0.9 else Vector((1.0, 0.0, 0.0))
    side = (side - look * side.dot(look)).normalized()
    src_basis = Matrix((look, side, look.cross(side))).transposed()
    made = 0
    for i, (ob, joint) in enumerate(eyes):
        bone = rig.data.bones[joint]
        center = bone.head_local
        to_rig = rig.matrix_world.inverted() @ ob.matrix_world
        pts = [to_rig @ v.co - center for v in ob.data.vertices]
        dists = sorted(p.length for p in pts if p.dot(fwd) < -0.3 * p.length) or sorted(p.length for p in pts)
        r_cod = dists[len(dists) // 2] if dists else r_tiny
        u = (up - fwd * up.dot(fwd)).normalized()
        dst_basis = Matrix((fwd, u, fwd.cross(u))).transposed()
        rest = Matrix.Translation(center) @ (dst_basis @ src_basis.inverted()).to_4x4() @ \
            Matrix.Scale(r_cod / max(r_tiny, 1e-9), 4)
        eye = proto if i == 0 else proto.copy()
        eye.name = "TinyEye %s %s" % (preset, "L" if joint.lower().endswith(("_le", ".l", "_l")) else "R")
        for coll in ob.users_collection:
            if eye.name not in coll.objects:
                coll.objects.link(eye)
        if not eye.users_collection:
            bpy.context.scene.collection.objects.link(eye)
        eye.parent = rig
        eye.parent_type = 'BONE'
        eye.parent_bone = joint
        bpy.context.view_layer.update()
        pb = rig.pose.bones[joint]
        eye.matrix_world = rig.matrix_world @ pb.matrix @ bone.matrix_local.inverted() @ rest
        eye[TINY_EYE_TAG] = rig.name
        ob[TINY_EYE_HIDDEN] = 1
        ob.hide_viewport = ob.hide_render = True
        made += 1
    rig["cod_tiny_eye_preset"] = preset
    if report:
        report({'INFO'}, "CoD AutoShader: TinyEye '%s' eyes on %s (iris %s)" % (
            preset, rig.name, "#%02x%02x%02x" % tuple(int(c * 255) for c in iris) if iris else "unknown"))
    return made


def remove_tiny_eyes(rig):
    for ob in list(bpy.data.objects):
        if ob.get(TINY_EYE_TAG) == rig.name:
            bpy.data.objects.remove(ob)
        elif ob.type == 'MESH' and ob.parent is rig and ob.get(TINY_EYE_HIDDEN):
            ob.hide_viewport = ob.hide_render = False
            del ob[TINY_EYE_HIDDEN]
    if "cod_tiny_eye_preset" in rig.keys():
        del rig["cod_tiny_eye_preset"]


def _eye_rigs():
    return [o for o in bpy.data.objects if o.type == 'ARMATURE' and o.library is None and
            (cod_eye_meshes(o) or any(c.get(TINY_EYE_HIDDEN) for c in o.children))]


def _tiny_eye_update(self, context):
    for rig in _eye_rigs():
        if self.tiny_eye:
            apply_tiny_eyes(rig, self)
        else:
            remove_tiny_eyes(rig)


def _tiny_eye_veins_update(self, context):
    for ob in bpy.data.objects:
        if ob.get(TINY_EYE_TAG):
            for s in ob.material_slots:
                if s.material is not None and s.material.node_tree is not None:
                    for n in s.material.node_tree.nodes:
                        if n.type == 'GROUP' and n.node_tree and n.node_tree.name.startswith("Tiny Sclera"):
                            section = ""
                            for sock in n.inputs:
                                if sock.type == 'RGBA':
                                    section = sock.name
                                elif sock.name == "Opacity" and section == "Veins" and not sock.is_linked:
                                    sock.default_value = self.tiny_eye_veins


class CoDSettings(bpy.types.PropertyGroup):
    hash_names: BoolProperty(
        name="Asset Names", default=True,
        description="BO7 and MW4 export materials and textures by hash. Read the real names back out of a "
                    "hash-to-name table, so skin, hair and eyes are recognised by what they are called "
                    "rather than only by what their pixels look like")
    hash_names_folder: StringProperty(
        name="Name Tables", subtype='DIR_PATH',
        description="Folder of hash-to-name CSVs (cod-name-db/csv from the hash-slinging-slasher project). "
                    "Empty looks for it next to your home folder")
    search_folder: StringProperty(
        name="Models Folder", subtype='DIR_PATH',
        description="Your exported CoD models folder - the one holding the per-model folders. Import & "
                    "Shade opens here, so the path is set once rather than browsed to every time. "
                    "Shading also searches it for a model's _mat_info, which is what rescues a material "
                    "whose own texture paths do not resolve - a .blend opened on another machine, or an "
                    "export that has since moved")
    c2m_file: StringProperty(
        name="C2M File", subtype='FILE_PATH',
        description="The map's .c2m file. Empty uses the file picked in the C2M Import v2 panel")
    c2m_images: StringProperty(
        name="Images Folder", subtype='DIR_PATH',
        description="Only needed if textures aren't found: C2M's images folder (default: "
                    "exported_images/<game> next to exported_maps)")
    c2m_layers: BoolProperty(
        name="Layered Blends", default=True,
        description="Build every layer of blended map materials (ground, walls with dirt or wear) and paint them "
                    "in by vertex colour; off shades only the base layer")
    c2m_hide_proxies: BoolProperty(
        name="Hide Impostor Cards", default=True,
        description="Make the flat far-distance stand-ins for buildings and trees invisible. C2M doesn't export "
                    "their images and the real models are in the map, so otherwise they show as blank slabs")
    c2m_selected_only: BoolProperty(
        name="Selected Only", default=False,
        description="Only reshade materials on the selected objects instead of the whole map")
    metal_mode: EnumProperty(
        name="Metal Mask",
        items=(('AUTO', "Auto", "Use CS alpha as metalness only when it is a bimodal mask "
                                "(BO7 stores 1.0 or other data when unused); never on skin, hair or eyes"),
               ('ON', "Always", "Always decode CS alpha as the IW metalness mask"),
               ('OFF', "Never", "Treat every material as dielectric")),
        default='AUTO')
    game: EnumProperty(
        name="Game",
        items=[(g[0], g[1], g[2] + (" - checked against your exports" if g[4] else "") +
                ". Sets the game's gloss-to-roughness curve; texture slots are detected from the export")
               for g in GAMES],
        default='BO7', update=_roughness_update)
    cod_look: BoolProperty(
        name="CoD Look", default=False, update=_cod_look_update,
        description="Show the scene the way Call of Duty grades it: the ACES tone curve and BT.1886 output the "
                    "games use from WWII on (Activision, 'HDR in Call of Duty'). Turning it off restores your "
                    "previous colour settings")
    cod_look_exposure: FloatProperty(
        name="Exposure", default=0.0, min=-5.0, max=5.0, update=_cod_look_exposure_update,
        description="The game sets exposure per scene; ACES reads darker than AgX at the same exposure, so "
                    "raise this for a bright daytime look")
    vram_budget: EnumProperty(
        name="VRAM",
        items=(('FULL', "Full", "Every map at the size the game ships it (4K on most guns and characters). "
                                "Needs a big graphics card for a full character and weapon"),
               ('BALANCED', "Balanced", "Viewport and EEVEE textures capped at 2K - a quarter of the memory - "
                                        "while Cycles final renders keep full-size maps"),
               ('LOW', "Low", "Viewport and EEVEE at 1K, Cycles renders at 2K and a smaller EEVEE shadow "
                              "pool, for cards with 4-6 GB")),
        default='BALANCED', update=_vram_update,
        description="How much graphics memory the textures may take. Blender shrinks the maps as it loads them "
                    "onto the card; the files and materials stay as they are")
    bake_size: EnumProperty(
        name="Bake Size", default='2048',
        items=(('1024', "1K", "1024 px - lightest"), ('2048', "2K", "2048 px"), ('4096', "4K", "4096 px - "
                                                                                      "the CoD maps' own size")),
        description="Largest baked texture; a material whose own maps are smaller bakes at their size")
    bake_hair: BoolProperty(
        name="Include Hair", default=False,
        description="Bake hair, beards and lashes too. Off keeps their strand shading live")
    clean_hidden_eyes: BoolProperty(
        name="Delete Hidden CoD Eyes", default=False,
        description="Clean Up also deletes the CoD eyeballs TinyEye hid. Turning TinyEye off then has no CoD "
                    "eyes to bring back")
    tiny_eye: BoolProperty(
        name="TinyEye Eyes", default=False, update=_tiny_eye_update,
        description="Swap the CoD eyeballs for your TinyEye eyes (needs the TinyEye add-on installed): the nearest "
                    "TinyEye colour, shifted to the CoD iris and tinted to the CoD sclera, following the eye joints")
    tiny_eye_style: EnumProperty(
        name="TinyEye Style", default='REALISTIC', update=_tiny_eye_update,
        items=(('REALISTIC', "Realistic", "TinyEye's realistic eyes"), ('SIMPLE', "Simple", "TinyEye's simple eyes"),
               ('STYLISED', "Stylised", "TinyEye's stylised eyes")))
    tiny_eye_veins: FloatProperty(
        name="Veins", default=0.9, min=0.0, max=1.0, update=_tiny_eye_veins_update,
        description="How strongly the TinyEye sclera shows its veins")
    face_board: BoolProperty(
        name="Face Board", default=True,
        description="Build a face board beside the head when rigging: sliders and joysticks for brows, eyes, "
                    "nose, mouth, cheeks, jaw and tongue (ARKit-style channels), mixed from the face's joints. "
                    "Rebuild the rig after changing it")
    game_auto: BoolProperty(
        name="Auto-detect Game", default=True, update=_roughness_update,
        description="Read each model's game from its own names (rex_ = MW4, sat_ = BO7, jup_ = MWIII, iw9 = MWII, "
                    "iw8 = MW2019, t9 = Cold War, s4 = Vanguard, s2 = WWII, iw7 = IW, s1 = AW) and lock its "
                    "materials to that game's rules, so a gun and a character from different games can share a "
                    "scene. The Game buttons apply only where the names say nothing")
    gloss_curve: EnumProperty(
        name="Gloss Curve",
        items=(('GAME', "From Game", "Use the curve of the selected game"),
               ('WWII', "CoD WWII", "alpha = sqrt(2 / (1 + 2^(18 gloss))) - Material Advances in CoD: WWII"),
               ('AW', "CoD Advanced Warfare", "alpha = sqrt(2 / (2 + 2^(16 gloss)))"),
               ('IW8', "CoD MW (2019)", "alpha = sqrt(2 / (2 + 2^(20 (1 - sqrt(1 - gloss))))) - from the game's shaders"),
               ('LINEAR', "Linear", "roughness = 1 - gloss")),
        default='GAME')
    roughness_auto: BoolProperty(
        name="Auto Shine", default=True, update=_roughness_update,
        description="Use the game's roughness floor for surfaces (MWII-era cloth and gear read too glossy without "
                    "one); off uses the Min Roughness slider")
    roughness_min: FloatProperty(
        name="Min Roughness", default=0.3, min=0.0, max=1.0, update=_roughness_update,
        description="Nothing but skin, hair and eyes gets shinier than this: raise it if clothes or gear look wet")
    weapon_finish: BoolProperty(
        name="Weapon Finish", default=True, update=_weapon_update,
        description="Shade gun parts with the weapon-only maps the games ship: worn paint where the damage "
                    "map and the model's edges say the finish is knocked off, grime in the corners, and the "
                    "camo regions. Off shades weapons like any other surface")
    weapon_wear: FloatProperty(
        name="Wear", default=0.3, min=0.0, max=1.0, update=_weapon_update,
        description="How far the paint is worn through to bare metal. The game's damage map says where; "
                    "on a game that ships none, the edges of the model do")
    weapon_grime: FloatProperty(
        name="Grime", default=0.2, min=0.0, max=1.0, update=_weapon_update,
        description="Carbon and oil gathering in the corners of the gun, where its baked occlusion is dark")
    weapon_layer2: BoolProperty(
        name="Blueprint Layer", default=True,
        description="Paint the second layer a blueprint carries - its own colour, its own surface - wherever "
                    "its mask says it sits. Off shades only the base layer. Reshade after changing it")
    weapon_tint: BoolProperty(
        name="Blueprint Paint", default=True,
        description="Colour the regions a blueprint paints. The parts that take it are authored grey, "
                    "because in the game the colour comes with the blueprint rather than the model. "
                    "Reshade after turning it on")
    weapon_tint_a: FloatVectorProperty(
        name="Paint 1", subtype='COLOR', size=3, min=0.0, max=1.0, default=(1.0, 1.0, 1.0),
        update=_weapon_update, description="Colour for the blueprint's first painted region")
    weapon_tint_b: FloatVectorProperty(
        name="Paint 2", subtype='COLOR', size=3, min=0.0, max=1.0, default=(1.0, 1.0, 1.0),
        update=_weapon_update, description="Colour for its second painted region")
    weapon_layer_tint: FloatVectorProperty(
        name="Layer Tint", subtype='COLOR', size=3, min=0.0, max=1.0, default=(1.0, 1.0, 1.0),
        update=_weapon_update,
        description="Colours the blueprint's second layer. The game paints it from an asset a model export "
                    "does not carry, so parts that rely on it export grey: set the colour here")
    weapon_layer_amount: FloatProperty(
        name="Layer Amount", default=1.0, min=0.0, max=1.0, update=_weapon_update,
        description="How strongly the blueprint's second layer shows over the paint")
    weapon_aniso: FloatProperty(
        name="Brushed Metal", default=1.0, min=0.0, max=1.0,
        description="Follow the anisotropy map MWII blueprints ship: the highlight stretches along the way "
                    "the metal was machined instead of pooling in a spot. Reshade after changing it")
    weapon_camo: FloatProperty(
        name="Camo", default=0.0, min=0.0, max=1.0, update=_weapon_update,
        description="Repaint the regions the game's camo mask marks. The paint keeps the colour map's own "
                    "shading, stencils and machining, so it looks painted on rather than pasted over")
    weapon_camo_unmasked: BoolProperty(
        name="Whole Gun", default=False, update=_weapon_update,
        description="Paint the camo over the whole part instead of only the regions the game's camo mask "
                    "marks. Parts the export ships without a mask are painted whole either way")
    weapon_camo_color: FloatVectorProperty(
        name="Camo Color", subtype='COLOR', size=3, min=0.0, max=1.0, default=WEAPON_CAMO_COLOR,
        update=_weapon_update, description="The paint colour, used when no camo image is picked")
    weapon_camo_folder: StringProperty(
        name="Camo", subtype='DIR_PATH',
        description="A camo exported from Saluki (its own folder under exported_files\\<game>\\camos, e.g. "
                    "cer_camo_comp_04_zm for Genesis). Its colour and its surface are painted into the "
                    "regions the weapon's camo mask marks. Reshade after picking one")
    weapon_camo_image: StringProperty(
        name="Camo Image", subtype='FILE_PATH',
        description="A camo pattern to paint into the masked regions instead of a flat colour. Reshade after "
                    "picking one")
    weapon_camo_region: EnumProperty(
        name="Region",
        items=(('ANY', "Whole Gun", "Paint every region the camo mask marks"),
               ('R', "Region 1", "Only the mask's red region"),
               ('G', "Region 2", "Only the mask's green region"),
               ('B', "Region 3", "Only the mask's blue region"),
               ('LAYER', "Under the Artwork", "Paint only where the blueprint's own artwork does not "
                                              "cover, which is what the game paints a camo into")),
        default='ANY',
        description="A weapon's camo mask holds a region per colour channel and different parts use "
                    "different ones. Reshade after changing it")
    weapon_camo_scale: FloatProperty(
        name="Camo Scale", default=4.0, min=0.1, max=64.0,
        description="How many times the camo image tiles across the weapon's UVs. Reshade after changing it")
    weapon_camo_animate: BoolProperty(
        name="Animate BO7 Camo", default=True, update=_camo_animation_update,
        description="Move supported BO7 camo colour layers during playback and rendering. "
                    "Reshade once after selecting the folder; this switch then updates live")
    weapon_camo_speed: FloatProperty(
        name="Animation Speed", default=1.0, min=-10.0, max=10.0, update=_camo_animation_update,
        description="Camo playback multiplier; zero freezes, negative reverses. Updates live")
    weapon_camo_phase: FloatProperty(
        name="Time Offset", default=0.0, min=-10000.0, max=10000.0, update=_camo_animation_update,
        description="Offset in camo seconds at the scene's start frame. Updates live")
    normal_strength: FloatProperty(name="Normal Strength", default=1.0, min=0.0, max=4.0,
                                   description="Bumpiness of the decoded normal maps")
    ao_strength: FloatProperty(name="AO Strength", default=1.0, min=0.0, max=1.0,
                               description="How much the baked ambient occlusion darkens the surface")
    emission_strength: FloatProperty(name="Emission Strength", default=1.0, min=0.0, max=100.0,
                                     description="Glow strength of emissive parts (lights, screens, reticles). "
                                                 "Each map is first scaled so its brightest pixel glows")
    emission_color: FloatVectorProperty(name="Emission Color", subtype='COLOR', size=3, min=0.0, max=1.0,
                                        default=(1.0, 1.0, 1.0),
                                        description="Tints the glow; white keeps the colour of the game's map")
    skin_sss: BoolProperty(name="Skin Subsurface", default=True,
                           description="Enable subsurface scattering on detected skin materials")
    sss_weight: FloatProperty(name="SSS Weight", default=0.55, min=0.0, max=1.0,
                              description="How much of the light landing on skin scatters under it instead "
                                          "of bouncing straight off. Physically skin is nearly all scatter, "
                                          "but at 1.0 a close-up face goes soft and loses its pores, so the "
                                          "default sits lower and keeps the skin detail. Raise it toward 1 "
                                          "for more warmth through ears and a softer terminator")
    sss_scale: FloatProperty(name="SSS Scale (cm)", default=0.12, min=0.0, max=10.0,
                             description="Scatter distance in centimeters of the imported model; "
                                         "follows the object's scale, so a rig scaled to 0.01 stays correct")
    hair_shader: BoolProperty(name="Hair Shader", default=True,
                              description="Shade hair cards with anisotropic R/TRT/TT hair lobes instead of Principled "
                                          "(anisotropic highlights render in Cycles)")
    rig_backend: EnumProperty(
        name="Control Rig",
        items=(('CLOUDRIG', "CloudRig", "Build the control rig with CloudRig (extensions.blender.org): IK/FK "
                                        "limbs, a spine with IK, finger chains"),
               ('RIGIFY', "Rigify", "Build it with Rigify, the add-on shipped with Blender")),
        default='CLOUDRIG',
        description="Which rigging add-on builds the control rig the CoD skeleton then follows")
    hair_style: EnumProperty(
        name="Hair Style",
        items=(('COD', "CoD Hair", "The add-on's own strand shader (R / TRT / TT highlights, best in Cycles)"),
               ('CARD', "Hair Card Shader", "The Eevee Hair Card Shader node group from its .blend: soft "
                                           "anisotropic highlights, translucency and sheen. Written for "
                                           "Eevee and renders in Cycles too. Falls back to the CoD hair "
                                           "shader, with a warning, when the .blend is not on this machine")),
        default='CARD', update=_reshade_hair)
    hair_card_file: StringProperty(
        name="Hair Card .blend", subtype='FILE_PATH',
        description="The .blend that holds the Eevee Hair Card Shader node group (e.g. "
                    "'00 - Eevee - Hair Card Shader (4.4+).blend'); it is appended once and reused. Left empty, "
                    "the add-on looks for it in Downloads, Documents and Desktop", update=_reshade_hair)
    hair_use_game_color: BoolProperty(
        name="Game Hair Color", default=True,
        description="Feed the game's hair color map into the shader; off uses the Hair Color below",
        update=_reshade_hair)
    hair_color: FloatVectorProperty(name="Hair Color", subtype='COLOR', size=3, min=0.0, max=1.0,
                                    default=(0.05, 0.036, 0.025), description="Base color when the game color is off",
                                    update=_hair_colors)
    hair_brightness: FloatProperty(name="Hair Brightness", default=0.45, min=0.0, max=2.0,
                                   description="Darken (< 1) or lighten (> 1) the game's hair colour in the Hair Card "
                                               "Shader", update=_hair_colors)
    hair_highlight: FloatVectorProperty(name="Highlight Color", subtype='COLOR', size=3, min=0.0, max=1.0,
                                        default=(1.0, 1.0, 1.0), description="Hair Card Shader highlight tint",
                                        update=_hair_colors)
    skin_style: EnumProperty(
        name="Skin Style",
        items=(('SEPARABLE', "Separable (Activision)",
                "Activision's separable subsurface scattering: a tight near scatter that keeps pores and "
                "bumps, blended with a wide far scatter for the soft red glow, using the skin kernels from "
                "their technical report"),
               ('COD', "CoD", "One scatter lobe with the weight and scale from the settings below"),
               ('INGAME', "In-game", "Separable scattering plus the skin maps the game itself ships: the scatter "
                "mask (no glow on brows, scalp or covered neck) and the translucency map (ears and nostrils "
                "light up red when lit from behind). MW (2019) heads carry these maps; other heads shade as "
                "Separable")),
        default='SEPARABLE')
    skin_wrinkles: BoolProperty(
        name="Wrinkles", default=True,
        description="Use the wrinkle maps some heads ship (a 2x2 atlas of expression normals and colour): creases "
                    "appear on the forehead, between the brows and round the eyes as the face animates")
    wrinkle_auto: BoolProperty(
        name="Drive From Animation", default=True,
        description="Wrinkles appear where the face's skin is squashed by its animation, measured from the mesh "
                    "itself. Off, each of the four wrinkle maps has its own value on the material (Wrinkle 1-4) "
                    "to key by hand")
    wrinkle_strength: FloatProperty(name="Wrinkle Strength", default=1.0, min=0.0, max=3.0)
    wrinkle_sensitivity: FloatProperty(
        name="Sensitivity", default=5.0, min=0.0, max=50.0,
        description="How little squash it takes for a crease to show fully")
    sss_profile: EnumProperty(
        name="Profile",
        items=(('PRODUCTION', "Production", "The kernel an Activision artist tuned for their shipped faces: "
                                             "more near scatter, a pink fill in the bumps"),
               ('MULTI', "Multi-layer Fit", "Fitted to a measured multi-layer skin model - a little cooler, "
                                            "more evenly split between near and far"),
               ('SINGLE', "Single-layer Fit", "Fitted to a Monte Carlo simulation of single-layer skin - the "
                                              "widest green and blue bleed")),
        default='PRODUCTION')
    sss_size: FloatProperty(
        name="Scatter Size", default=1.0, min=0.1, max=4.0,
        description="Scales how far light travels under the skin. 1.0 is real skin as the report measures it; "
                    "raise it for a softer, glowier look, lower it for crisper skin")
    eye_parallax: BoolProperty(name="Eye Iris Depth", default=True,
                               description="Parallax the iris under the cornea like CoD's eye shader")
    cw_detail_tiling: FloatProperty(
        name="Detail Tiling", default=CW_DETAIL_TILING, min=0.0, max=64.0,
        description="Black Ops Cold War repeats its detail normals (weave, grain, filaments) across "
                    "a garment. The export does not say how many times, so this is the starting "
                    "number; reshade after changing it, or set it on the Detail Tiling node")
    eye_iris_angle: BoolProperty(
        name="Iris by Viewing Angle", default=True,
        description="The iris seen through the cornea darkens as you look at it more obliquely (light travels "
                    "further through the eye's fluid) and its fibres catch the light with a soft sheen - "
                    "after Activision's multilayered materials talk")
    eye_iris_relief: BoolProperty(
        name="Iris Relief", default=True,
        description="Raise the iris fibres off the iris with a height map, so the stroma catches light "
                    "instead of reading as a printed disc. Uses the map below, or the brightness of the "
                    "eye's own colour map when none is set")
    eye_iris_map: StringProperty(
        name="Iris Height", subtype='FILE_PATH',
        description="A greyscale iris height map: white = raised fibres, mid grey = flat, the pupil black. "
                    "Left empty, the eye's colour map stands in. Reshade after picking one")
    eye_shadow: FloatProperty(name="Eye Lid Shadow", default=0.6, min=0.0, max=1.0,
                              description="Darkening of the eyeball near the lids from the eye mid-shadow shell")
    skin_oil: FloatProperty(name="Skin Oil", default=0.15, min=0.0, max=1.0,
                            description="Thin film of natural skin oil over the skin: a soft sheen that follows the "
                                        "game's gloss map, so the forehead, nose and lips catch light and the "
                                        "cheeks stay matte. 0 = dry skin, 1 = sweaty")
    skin_roughness_min: FloatProperty(name="Skin Roughness Min", default=0.35, min=0.0, max=1.0,
                                      description="Remaps skin roughness into [min, 1]; Principled has no "
                                                  "dual-lobe skin specular, so raw CoD skin gloss looks wet")
    cloth_fabric: EnumProperty(
        name="Fabric",
        items=(('CANVAS', "Canvas / Webbing", "Heavy: a flight suit tied at the waist, a plate carrier flap"),
               ('COTTON', "Cotton", "A shirt, hoodie or trouser leg"),
               ('DRAPE', "Light Drape", "A scarf, flag or thin cape"),
               ('LEATHER', "Leather", "A stiff holster flap or coat panel")),
        default='CANVAS',
        description="How the garment hangs and folds")
    cloth_pin: FloatProperty(name="Stitched Band", default=0.22, min=0.0, max=1.0,
                             description="Fraction of the garment, from its top down, that is stitched to the "
                                         "body and held in place")
    cloth_hem_hold: FloatProperty(name="Hem Hold", default=0.25, min=0.0, max=1.0,
                                  description="How strongly the loose end still follows its animated shape. "
                                              "0 lets it drape from scratch, which usually loses the look the "
                                              "artist authored")
    cloth_thickness: FloatProperty(name="Cloth Thickness (cm)", default=0.5, min=0.01, max=10.0,
                                   description="Gap the sim keeps between the cloth and the body")
    cloth_self_collide: BoolProperty(name="Self Collision", default=False,
                                     description="Stop the garment passing through itself. Slower, and rarely "
                                                 "needed on a garment that mostly holds its authored shape")
    cloth_collide_skin: BoolProperty(name="Collide With Skin Only", default=True,
                                     description="Collide against the character's skin rather than every piece "
                                                 "of gear, which keeps the sim fast")
    sight_shader: BoolProperty(name="Sights", default=True,
                               description="Shade lenses as glass, red dots with a collimated reticle and scopes as "
                                           "a magnified picture-in-picture (Cycles)")
    red_dot_reticle: BoolProperty(name="Red Dot Reticle", default=True,
                                  description="Draw a reticle on red dot / holographic lenses that stays on the aim "
                                              "point when the head moves, like in game")
    reticle_style: EnumProperty(
        name="Reticle",
        items=(('CIRCLE_DOT', "Circle Dot", "Holographic circle with a center dot"),
               ('DOT', "Dot", "Single red dot"),
               ('CROSS', "Cross", "Fine crosshair")),
        default='CIRCLE_DOT')
    reticle_color: FloatVectorProperty(name="Reticle Color", subtype='COLOR', size=3, min=0.0, max=1.0,
                                       default=(1.0, 0.06, 0.2), description="Color of the red dot reticle")
    reticle_brightness: FloatProperty(name="Reticle Brightness", default=12.0, min=0.0, max=200.0,
                                      description="Emission strength of the red dot reticle")
    reticle_size: FloatProperty(name="Circle Size", default=1.2, min=0.1, max=10.0,
                                description="Radius of the reticle circle in degrees of view")
    scope_zoom: FloatProperty(name="Scope Zoom", default=4.0, min=1.0, max=40.0,
                              description="Magnification of the scope picture-in-picture (renders in Cycles)")
    anim_align_sight: BoolProperty(name="Line Up Sight", default=True,
                                   description="ADS clips put the mounted scope / red dot in the middle of the view, "
                                               "like the game does for each optic")
    anim_folder: StringProperty(name="Animations Folder", subtype='DIR_PATH',
                                description="Only needed if the weapon's animations aren't found: the Saluki "
                                            "animations folder")
    anim_play: BoolProperty(name="Animations", get=_anim_play_get, set=_anim_play_set,
                            description="Play the rig's animations; off shows its rest pose without deleting anything")
    ammo_rounds: IntProperty(
        name="Rounds", default=0, min=0, max=200,
        description="How many rounds to load. 0 fills every j_ammo bone of the magazine in the gun")
    ammo_model: StringProperty(
        name="Ammo Model", subtype='FILE_PATH',
        description="The round model to use. Left empty, the magazine's calibre is read from its material "
                    "name and the matching rex_ammo_unspent_<calibre> is looked for in the Models Folder")
    anim_sounds: BoolProperty(
        name="Sounds", default=True,
        description="Put the game's sounds on the timeline when an animation is imported - the inspect's "
                    "bolt, mag and rattle foley at the frames the animation calls for them. Needs the "
                    "export's SoundBanks and Sounds folders; a clip with no sound cues is unaffected")
    sound_folder: StringProperty(
        name="Sounds Folder", subtype='DIR_PATH',
        description="Where the exported sound files are. Left empty, the Sounds folder next to the "
                    "export's SoundBanks is used")
    anim_face: BoolProperty(name="Face Animation", default=True,
                            description="Also add the matching facial clip (facial_idle / facial_aim / "
                                        "facial_angry ...) from the export, on its own Face layer")
    fire_shake: FloatProperty(
        name="Camera Shake", default=1.0, min=0.0, max=5.0,
        description="Punch the view on every shot, as the game does - the clips carry no camera motion for "
                    "firing, so this is made up: a hard upward kick with a twist that snaps back, less when "
                    "aimed, more for heavy guns. 0 = off")
    fire_shake_camera_only: BoolProperty(
        name="Camera Only", default=False,
        description="Shake only the camera, so the gun jolts on screen. Off, the camera and arms shake "
                    "together like in game - the world moves and the gun holds still, which only shows "
                    "against a background or HDRI")
    anim_recoil: FloatProperty(name="Fire Recoil", default=1.0, min=0.0, max=3.0,
                               description="Procedural gun kick added to fire clips (the game adds it on top of the "
                                           "fire animation); 0 = off")
    bodycam: BoolProperty(name="Bodycam Look", get=_bodycam_get, set=_bodycam_set,
                          description="Bodycam-game camera look in the compositor: fisheye lens, color fringes, "
                                      "blown-out exposure, bloom, sharpening and sensor noise")


class COD_OT_bodycam_preset(bpy.types.Operator):
    bl_idname = "cod.bodycam_preset"
    bl_label = "Bodycam Preset"
    bl_description = "Add the Bodycam look to the compositor (if needed) and load a preset"
    bl_options = {'REGISTER', 'UNDO'}

    preset: EnumProperty(items=(('DAY', "Day", "Bright, blown-out daylight footage"),
                                ('NIGHT', "Night", "Dark, noisy night footage")), default='DAY')

    @classmethod
    def poll(cls, context):
        return hasattr(context.scene, "compositing_node_group")

    def execute(self, context):
        set_bodycam(context.scene, True)
        apply_bodycam_preset(context.scene, self.preset)
        return {'FINISHED'}


def _selected_materials(context):
    mats = []
    for ob in context.selected_objects:
        for slot in getattr(ob, "material_slots", []):
            if slot.material and slot.material not in mats:
                mats.append(slot.material)
    return mats


class COD_OT_shade_selected(bpy.types.Operator):
    bl_idname = "cod.shade_selected"
    bl_label = "Shade Selected"
    bl_description = "Build CoD materials for every material on the selected objects"
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        mats = _selected_materials(context)
        if not mats:
            self.report({'WARNING'}, "Select the imported meshes first")
            return {'CANCELLED'}
        shade_materials(mats, context.scene.cod_autoshader, self.report)
        return {'FINISHED'}


class COD_OT_shade_all(bpy.types.Operator):
    bl_idname = "cod.shade_all"
    bl_label = "Shade All"
    bl_description = "Build CoD materials for every material in the file that has a Saluki _mat_info"
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        shade_materials(list(bpy.data.materials), context.scene.cod_autoshader, self.report)
        return {'FINISHED'}


class COD_OT_import_cast(bpy.types.Operator, ImportHelper):
    bl_idname = "cod.import_cast"
    bl_label = "Import Cast + Shade"
    bl_description = "Import .cast models with the Cast importer, then build CoD materials"
    bl_options = {'REGISTER', 'UNDO'}

    filename_ext = ".cast"
    filter_glob: StringProperty(default="*.cast", options={'HIDDEN'})
    files: CollectionProperty(type=bpy.types.OperatorFileListElement, options={'HIDDEN', 'SKIP_SAVE'})
    directory: StringProperty(subtype='DIR_PATH', options={'HIDDEN', 'SKIP_SAVE'})
    merge: BoolProperty(name="Merge Into Selected Rig", default=False,
                        description="Join what you import into the armature that is selected, reusing the bones "
                                    "they share (heads, hair, gear, attachments) - like the Cast importer's "
                                    "Import Merge. Heads find their body on their own either way")

    def invoke(self, context, event):
        # start in the Models Folder, so setting the path once is all it takes
        root = bpy.path.abspath(_settings(context).search_folder or "")
        if root and os.path.isdir(root) and not self.filepath:
            self.directory = root + os.sep
        return super().invoke(context, event)

    def execute(self, context):
        if not _cast_importer_ready():
            self.report({'ERROR'}, "Cast importer (io_scene_cast) is not enabled")
            return {'CANCELLED'}
        paths = [os.path.join(self.directory, f.name) for f in self.files if f.name] or [self.filepath]
        learned = remember_models_root(_settings(context), paths)
        target = _selected_rig(context) if self.merge else None
        before = set(bpy.data.materials)
        before_objs = set(bpy.data.objects)
        for p in paths:
            bpy.ops.import_scene.cast(filepath=p)
        fresh = [o for o in bpy.data.objects if o not in before_objs and o.type == 'ARMATURE']
        fresh_names = [o.name for o in fresh]       # a head merged into its body is deleted on the way
        if fresh:
            if context.object is not None and context.object.mode != 'OBJECT':
                bpy.ops.object.mode_set(mode='OBJECT')
            if target is not None and target.name in bpy.data.objects:
                merge_into_rig(target, fresh, self.report)
            else:
                if self.merge:
                    self.report({'WARNING'}, "CoD AutoShader: select the rig to merge into first")
                attach_heads([o for o in context.view_layer.objects if o.type == 'ARMATURE'], self.report)
        for name in fresh_names:
            add_procedural_bones(bpy.data.objects.get(name))
        new = [m for m in bpy.data.materials if m not in before]
        shade_materials(new, context.scene.cod_autoshader, self.report,
                        model_dirs=[os.path.dirname(p) for p in paths])
        if context.scene.cod_autoshader.tiny_eye:
            for rig in {o.parent for o in bpy.data.objects if o not in before_objs and o.parent is not None
                        and o.parent.type == 'ARMATURE'}:
                if cod_eye_meshes(rig):
                    apply_tiny_eyes(rig, context.scene.cod_autoshader, self.report)
        if learned:
            self.report({'INFO'}, "CoD AutoShader: Models Folder set to %s - textures will be found "
                                  "from here on" % learned)
        return {'FINISHED'}


# --------------------------------------------------------------------------------------------
# Viewmodel assembly (arms + weapon parts in one rig)
# --------------------------------------------------------------------------------------------
# Verified on BO7's sat_vm_sn_aden_reload: with the receiver root j_gun pinned to the arms'
# tag_weapon (zero offset) and the anim's own j_gun keys ignored (they duplicate tag_weapon_right),
# the left hand stays on the gun's tag_ik_loc_le within 0.5 cm for the whole reload and the right
# hand returns exactly to tag_ik_loc_ri. Attachments root on same-named receiver tags
# (tag_barrel_attach, tag_mag_attach, tag_scope, ...).

VM_GUN_ROOT = "j_gun"
VM_ANCHORS = ("tag_weapon", "tag_weapon_right")      # first one found on the arms wins
VM_CONSTRAINT = "CoD: gun follows " + VM_ANCHORS[0]


def _root_bone(arm):
    return next((b for b in arm.data.bones if b.parent is None), None)


def _is_arms(arm):
    bones = arm.data.bones
    # viewmodel arms carry the eye (tag_view); third-person bodies share tag_weapon_right and wrists but have
    # legs and no view bone
    return (any(a in bones for a in VM_ANCHORS) and ("j_wrist_ri" in bones or "j_wrist_le" in bones)
            and ("tag_view" in bones or "j_knee_le" not in bones))


def _edit_mode(obj):
    for o in list(bpy.context.view_layer.objects):
        if o is not None:                   # entries can be stale right after objects are removed
            o.select_set(False)
    obj.hide_set(False)
    obj.select_set(True)
    bpy.context.view_layer.objects.active = obj
    bpy.ops.object.mode_set(mode='EDIT')
    return obj.data.edit_bones


def _merge_armature(target, source, attach_to=None):
    """Move source's bones and meshes into target. The source root reuses a same-named target bone,
    or is created under attach_to with zero offset. Works in native Cast units (armature space), like
    the Cast importer's own merge, so a rig scaled to meters still takes a centimeter weapon."""
    src_root = _root_bone(source)
    src_rest = {b.name: b.matrix_local.copy() for b in source.data.bones}
    src_parent = {b.name: (b.parent.name if b.parent else None) for b in source.data.bones}
    meshes = [c for c in source.children if c.type == 'MESH']
    mesh_world = {m.name: m.matrix_world.copy() for m in meshes}
    src_inv = source.matrix_world.inverted()

    eb = _edit_mode(target)
    if src_root.name not in eb:
        if attach_to is None or attach_to not in eb:
            bpy.ops.object.mode_set(mode='OBJECT')
            return False
        eb.new(src_root.name)
        new = eb[src_root.name]             # re-fetch: edit bone references go stale after .new()
        new.tail = (0.0, 0.0025, 0.0)
        new.parent = eb[attach_to]
        new.matrix = eb[attach_to].matrix.copy()
    T = eb[src_root.name].matrix @ src_rest[src_root.name].inverted()

    pending = [n for n in src_rest if n != src_root.name]
    while pending:
        progressed = False
        for name in list(pending):
            parent = src_parent[name]
            if parent is not None and parent not in eb:
                continue
            if name not in eb:
                eb.new(name)
                bone = eb[name]
                bone.tail = (0.0, 0.0025, 0.0)
                bone.parent = eb[parent] if parent else None
                bone.matrix = T @ src_rest[name]
            pending.remove(name)
            progressed = True
        if not progressed:
            break
    bpy.ops.object.mode_set(mode='OBJECT')

    home = target.users_collection[0] if target.users_collection else bpy.context.scene.collection
    for m in meshes:
        m.data.transform(T @ src_inv @ mesh_world[m.name])
        m.parent = target
        m.matrix_parent_inverse.identity()
        m.matrix_world = target.matrix_world.copy()
        for mod in m.modifiers:
            if mod.type == 'ARMATURE':
                mod.object = target
        for col in list(m.users_collection):
            col.objects.unlink(m)
        home.objects.link(m)

    old_cols = list(source.users_collection)
    bpy.data.objects.remove(source, do_unlink=True)
    for col in old_cols:
        if col is not bpy.context.scene.collection and not col.objects and not col.children:
            bpy.data.collections.remove(col)
    bpy.context.view_layer.update()
    return True


# ---- third person: heads ride on bodies --------------------------------------------------------------------
# A CoD character is a body model plus a separate head model. The head's skeleton starts at j_spine4 and the
# engine bolts it onto the body's j_spine4, so imported on its own it sits at the origin (on the floor) and does
# not follow the body's animation. Merging it into the body reuses the shared neck / head bones.

def _is_body(arm):
    bones = arm.data.bones
    return "j_mainroot" in bones and "j_spine4" in bones and not _is_arms(arm)


def _is_head(arm):
    bones = arm.data.bones
    root = _root_bone(arm)
    return ("j_head" in bones and "j_mainroot" not in bones and root is not None and root.name in bones
            and not _is_arms(arm))


def _model_key(name):
    name = re.sub(r"(_lod\d+)?(\.\d{3})?$", "", name.lower())
    return re.sub(r"^(head|body)_", "", name)


def _selected_rig(context):
    """The armature the user has selected (or the one a selected mesh belongs to)."""
    for ob in [context.object] + list(context.selected_objects):
        if ob is None:
            continue
        if ob.type == 'ARMATURE':
            return ob
        if ob.parent is not None and ob.parent.type == 'ARMATURE':
            return ob.parent
    return None


def merge_into_rig(target, armatures, report):
    """Join imported rigs into `target`: shared bones are reused, the rest are added under their parent (or the
    target's root if the model starts somewhere else). Returns the number merged."""
    merged = 0
    root = _root_bone(target)
    for rig in armatures:
        if rig is target or rig.name not in bpy.data.objects:
            continue
        source_root = _root_bone(rig)
        if source_root is None:
            continue
        name = rig.name
        attach = None if source_root.name in target.data.bones else (root.name if root else None)
        if _merge_armature(target, rig, attach_to=attach):
            merged += 1
            report({'INFO'}, "CoD AutoShader: merged %s into %s" % (name, target.name))
        else:
            report({'WARNING'}, "CoD AutoShader: %s has no bone in common with %s" % (name, target.name))
    if merged:
        for ob in bpy.context.view_layer.objects:
            ob.select_set(ob == target)
        bpy.context.view_layer.objects.active = target
    return merged


def attach_heads(armatures, report):
    """Merge every head rig into the body it belongs to (best name match). Returns the number attached."""
    bodies = [a for a in armatures if _is_body(a)]
    heads = [a for a in armatures if _is_head(a)]
    attached = 0
    for head in heads:
        key = _model_key(head.name)

        def match(body):
            other = _model_key(body.name)
            n = 0
            while n < min(len(key), len(other)) and key[-1 - n] == other[-1 - n]:
                n += 1
            return n
        body = max(bodies, key=match, default=None)
        if body is None or _root_bone(head).name not in body.data.bones:
            continue
        name = head.name
        if _merge_armature(body, head):
            attached += 1
            report({'INFO'}, "CoD AutoShader: attached %s to %s" % (name, body.name))
    return attached


def _pin_gun(arms, anchor):
    """j_gun follows the anchor tag no matter what the animation keys on j_gun."""
    pb = arms.pose.bones.get(VM_GUN_ROOT)
    if pb is None:
        return
    for c in list(pb.constraints):
        if c.name.startswith("CoD: gun follows"):
            pb.constraints.remove(c)
    con = pb.constraints.new('COPY_TRANSFORMS')
    con.name = "CoD: gun follows " + anchor
    con.target = arms
    con.subtarget = anchor
    con.target_space = 'WORLD'
    con.owner_space = 'WORLD'


def assemble_viewmodel(armatures, report):
    """Arms + receiver + attachments -> one rig. Returns the rig."""
    armatures = [a for a in armatures if a is not None and a.type == 'ARMATURE']
    arms = next((a for a in armatures if _is_arms(a)), None)
    receiver = next((a for a in armatures if a is not arms and _root_bone(a) and _root_bone(a).name == VM_GUN_ROOT), None)
    if arms is None and receiver is None:
        report({'WARNING'}, "CoD AutoShader: select the VM arms and/or the weapon receiver (root bone j_gun)")
        return None
    # third person: a character body takes the gun on its own j_gun (right hand), which its animations drive
    body = next((a for a in armatures if _is_body(a)), None) if arms is None else None
    rig = arms or body or receiver
    if bpy.context.object is not None and bpy.context.object.mode != 'OBJECT':
        bpy.ops.object.mode_set(mode='OBJECT')

    anchor = None
    if arms is not None:
        anchor = next(a for a in VM_ANCHORS if a in arms.data.bones)
        eb = _edit_mode(arms)
        if VM_GUN_ROOT in eb:
            # the arms carry a j_gun placeholder under the shoulder; the game drives the gun from tag_weapon
            eb[VM_GUN_ROOT].parent = eb[anchor]
            eb[VM_GUN_ROOT].matrix = eb[anchor].matrix.copy()
        bpy.ops.object.mode_set(mode='OBJECT')
        if receiver is not None:
            _merge_armature(arms, receiver, attach_to=anchor)
    elif body is not None and receiver is not None:
        for key in ("cod_weapon", "cod_weapon_pnum", "cod_weapon_family", "cod_anim_dir"):
            if receiver.get(key) is not None:
                body[key] = receiver[key]
        _rig_folder_cache.pop(body.name, None)
        _merge_armature(body, receiver, attach_to="tag_weapon_right")

    merged = []
    rest = [a for a in armatures if a is not rig and a is not receiver]
    while rest:
        progressed = False
        for att in list(rest):
            root = _root_bone(att)
            if root is not None and root.name in rig.data.bones:
                name = att.name
                if _merge_armature(rig, att):
                    merged.append(name)
                rest.remove(att)
                progressed = True
        if not progressed:
            break

    if arms is not None and VM_GUN_ROOT in arms.data.bones:
        _pin_gun(arms, anchor)
    for o in bpy.context.view_layer.objects:
        o.select_set(False)
    rig.select_set(True)
    bpy.context.view_layer.objects.active = rig

    msg = "CoD AutoShader: assembled %s (%s%d attachment%s)" % (
        "character" if body is not None else "viewmodel",
        "arms + gun, " if arms and receiver else "body + gun, " if body is not None and receiver else "",
        len(merged), "" if len(merged) == 1 else "s")
    if rest:
        msg += "; no matching tag for: " + ", ".join(a.name for a in rest)
        report({'WARNING'}, msg)
    else:
        report({'INFO'}, msg)
    return rig


class COD_OT_assemble_vm(bpy.types.Operator):
    bl_idname = "cod.assemble_vm"
    bl_label = "Assemble Viewmodel"
    bl_description = ("Join selected VM arms, weapon receiver and attachments into one rig: the gun is pinned to the "
                      "arms' tag_weapon and attachments snap to their receiver tags, so animations keep it in the "
                      "hands. A selected third-person head is attached to its body")
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        return any(o.type == 'ARMATURE' for o in context.selected_objects)

    def execute(self, context):
        selected = [o for o in context.selected_objects if o.type == 'ARMATURE']
        if context.object is not None and context.object.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
        names = [o.name for o in selected]
        heads = attach_heads(selected, self.report)
        remaining = [bpy.data.objects[n] for n in names if n in bpy.data.objects]    # merged heads are gone
        if heads and not any(_is_arms(o) or (_root_bone(o) and _root_bone(o).name == VM_GUN_ROOT) for o in remaining):
            return {'FINISHED'}
        rig = assemble_viewmodel(remaining, self.report)
        return {'FINISHED'} if rig or heads else {'CANCELLED'}


def _weapon_part_paths(path, ext=".cast"):
    """Saluki puts each weapon part in its own folder (sat_vm_sn_aden_rec, sat_vm_sn_aden_bar, ...).
    From one part, find its siblings sharing the name prefix, LOD0 only. `ext` so the same search works
    for an .fbx export."""
    folder = os.path.dirname(path)
    base = os.path.basename(folder)
    # MWII-era part folders end in a variant tag: att_vm_p21_sn_mromeo_rec_v0, ..._mag_v35
    variant = re.search(r"_v\d+$", base)
    stem = base[:variant.start()] if variant else base
    if "_" not in stem:
        return [path]
    prefix = stem.rsplit("_", 1)[0] + "_"
    parts = {}                                   # part name -> {variant: cast}
    for sib in sorted(glob.glob(os.path.join(os.path.dirname(folder), glob.escape(prefix) + "*"))):
        if not os.path.isdir(sib):
            continue
        casts = (sorted(glob.glob(os.path.join(sib, "*_LOD0" + ext)))
                 or sorted(glob.glob(os.path.join(sib, "*" + ext))))
        if not casts:
            continue
        name = os.path.basename(sib)
        v = re.search(r"_v\d+$", name)
        parts.setdefault(name[:v.start()] if v else name, {})[v.group(0) if v else ""] = casts[0]
    want = variant.group(0) if variant else ""
    found = [variants.get(want) or variants[sorted(variants)[0]] for _, variants in sorted(parts.items())]
    return found or [path]


class COD_OT_import_vm(bpy.types.Operator, ImportHelper):
    bl_idname = "cod.import_vm"
    bl_label = "Import Viewmodel"
    bl_description = ("Pick the weapon's receiver .cast (e.g. ..._rec_LOD0.cast): its other parts are found in the "
                      "neighbouring folders, imported, assembled onto the VM arms in the scene and shaded")
    bl_options = {'REGISTER', 'UNDO'}

    filename_ext = ".cast"
    filter_glob: StringProperty(default="*.cast", options={'HIDDEN'})
    files: CollectionProperty(type=bpy.types.OperatorFileListElement, options={'HIDDEN', 'SKIP_SAVE'})
    directory: StringProperty(subtype='DIR_PATH', options={'HIDDEN', 'SKIP_SAVE'})
    find_parts: BoolProperty(name="Find all weapon parts", default=True,
                             description="Also import the weapon's other parts from neighbouring folders with the "
                                         "same name prefix (barrel, mag, scope, stock, ...)")

    def execute(self, context):
        if not _cast_importer_ready():
            self.report({'ERROR'}, "Cast importer (io_scene_cast) is not enabled")
            return {'CANCELLED'}
        chosen = [os.path.join(self.directory, f.name) for f in self.files if f.name] or [self.filepath]
        paths = []
        for p in chosen:
            for q in (_weapon_part_paths(p) if self.find_parts else [p]):
                if os.path.normcase(q) not in {os.path.normcase(x) for x in paths}:
                    paths.append(q)
        # VM arms already in the scene (selected first) receive the gun
        scene_arms = [o for o in context.selected_objects if o.type == 'ARMATURE' and _is_arms(o)] or \
                     [o for o in context.view_layer.objects if o.type == 'ARMATURE' and _is_arms(o)]
        before_objs, before_mats = set(bpy.data.objects), set(bpy.data.materials)
        failed = []
        for p in paths:
            if context.object is not None and context.object.mode != 'OBJECT':
                bpy.ops.object.mode_set(mode='OBJECT')
            for o in context.view_layer.objects:
                o.select_set(False)
            context.view_layer.objects.active = None     # never let the Cast importer merge into a selection
            try:
                bpy.ops.import_scene.cast(filepath=p)
            except RuntimeError:
                failed.append(os.path.basename(p))
        if failed:
            self.report({'WARNING'}, "CoD AutoShader: could not import " + ", ".join(failed))
        new = [o for o in bpy.data.objects if o not in before_objs]
        armatures = [o for o in new if o.type == 'ARMATURE']
        if scene_arms and not any(_is_arms(a) for a in armatures):
            armatures.insert(0, scene_arms[0])
        self.report({'INFO'}, "CoD AutoShader: imported %d weapon part(s)" % len(paths))
        rig = assemble_viewmodel(armatures, self.report)
        add_procedural_bones(rig)
        weapon = _weapon_token(chosen[0], ("vm",))
        if rig is not None and weapon:
            rig["cod_weapon"], rig["cod_weapon_pnum"], rig["cod_weapon_family"] = weapon[:3]
            rig["cod_anim_dir"] = _find_anim_dir(chosen[0])
            _rig_folder_cache.pop(rig.name, None)
        shade_materials([m for m in bpy.data.materials if m not in before_mats], context.scene.cod_autoshader, self.report,
                        model_dirs=[os.path.dirname(p) for p in paths])
        return {'FINISHED'} if rig else {'CANCELLED'}


# --------------------------------------------------------------------------------------------
# Animation layers
# --------------------------------------------------------------------------------------------
# CoD viewmodel animations are pieces of the game's state machine: full-body clips (idle, fire, reload, ...)
# plus the ADS transition, which only moves tag_ads - the parent of the whole viewmodel under tag_view - to
# slide the gun up to the eye (MWII ads_up: 12 cm back, 7 cm to the center, 2 cm up). The Cast importer
# replaces the current action and resets every bone, so ads_up alone snaps the arms back to the bind pose.
# Here each clip becomes an NLA strip instead: full-body clips on the Base track, tag_ads clips on the ADS
# track above it (holding their last frame, so the gun stays up until ads_down), and truly additive clips
# (Cast curve mode "additive") on an Additive track in Combine mode.

ANIM_TRACK_BASE, ANIM_TRACK_UPPER = "CoD Base", "CoD Upper"
ANIM_TRACK_ADS, ANIM_TRACK_ADD, ANIM_TRACK_FACE = "CoD ADS", "CoD Additive", "CoD Face"
ANIM_TRACK_EMPTY = "CoD Empty"          # the gun's empty pose (slide / bolt locked back), held between shots
ANIM_TRACK_ORDER = (ANIM_TRACK_BASE, ANIM_TRACK_UPPER, ANIM_TRACK_ADS, ANIM_TRACK_ADD, ANIM_TRACK_EMPTY,
                    ANIM_TRACK_FACE)
ADS_BONES = {"tag_ads"}
LEG_BONES = ("j_knee", "j_ankle", "j_ball", "j_hip", "j_mainroot", "j_toe")
FACE_BONES = ("j_brow", "j_jaw", "j_eye", "j_lip", "j_cheek", "j_nose", "j_chin", "j_mouth", "j_teeth",
              "j_tongue", "j_uppercheek", "j_smile", "j_frown", "j_nostril", "j_forehead", "j_temple")
# which facial_* clip goes with an action clip (the game runs a face layer alongside the body)
FACE_FOR_ACTION = ((r"melee|execution|finish", "angry"), (r"fire|shoot|recoil", "angry"),
                   (r"ads|aim|scope", "aim"), (r"sprint|run", "run"), (r"death|die", "death"),
                   (r"pain|hit|flinch", "pain"), (r"", "idle"))
EYE_BONES = ("tag_camera", "tag_cambone", "tag_view")
VM_CAMERA_NAME = "CoD Viewmodel Camera"
VM_CAMERA_LENS = 24.0            # ~74 deg horizontal, close to CoD's default viewmodel field of view


def _cast_importer_ready():
    """bpy.ops attributes always exist; only the registered operator has an RNA type."""
    try:
        bpy.ops.import_scene.cast.get_rna_type()
        return True
    except (AttributeError, KeyError):
        return False


def _cast_module():
    """The Cast importer's file reader, wherever the add-on is installed (legacy add-on or extension)."""
    import addon_utils
    import importlib
    for mod in addon_utils.modules():
        if mod.__name__.split(".")[-1] == "io_scene_cast":
            try:
                return importlib.import_module(mod.__name__ + ".cast")
            except ImportError:
                continue
    return None


OFFSET_KEY_MAX_DEG = 20.0    # a clip whose rotations (OFFSET_SHARE of its bones) stay this close to identity...
OFFSET_SHARE = 0.85          # (the trigger finger of a fire clip curls further)
OFFSET_REST_MIN_DEG = 30.0   # ...while bones it drives rest this far from identity is an additive layer


def _anim_info(path):
    """Read the clip once: {'additive': Cast additive curves, 'offsets': every rotation key within a few degrees
    of identity, 'rotated': bones with rotation keys, 'identity': bones keyed as a constant identity}.
    CoD third-person fire / 'addoff' clips are additive layers exported as absolute keys (MWII stand_fire: every
    bone within 16 deg of identity) - taken as poses they lay the body flat on its back. Constant identity keys
    in a real pose clip are bones it does not drive."""
    info = {"additive": False, "offsets": False, "rotated": set(), "identity": set()}
    cast = _cast_module()
    if cast is None:
        return info
    near = math.cos(math.radians(OFFSET_KEY_MAX_DEG) / 2.0)
    exact = math.cos(math.radians(0.2) / 2.0)
    near_count = 0
    try:
        for root in cast.Cast.load(path).Roots():
            for anim in root.ChildrenOfType(cast.Animation):
                for curve in anim.Curves():
                    info["additive"] = info["additive"] or curve.Mode() == "additive"
                    if curve.KeyPropertyName() != "rq" or curve.Mode() not in ("absolute", None):
                        continue
                    v = curve.KeyValueBuffer()
                    if not len(v):
                        continue
                    info["rotated"].add(curve.NodeName())
                    ws = [abs(v[i + 3]) for i in range(0, len(v), 4)]
                    near_count += min(ws) >= near
                    if min(ws) >= exact:
                        info["identity"].add(curve.NodeName())
                info["offsets"] = bool(info["rotated"]) and near_count >= OFFSET_SHARE * len(info["rotated"])
                return info
    except Exception:
        pass
    return info


def _rest_local(pb):
    bone = pb.bone
    local = bone.matrix_local if bone.parent is None else bone.parent.matrix_local.inverted() @ bone.matrix_local
    return local.to_quaternion()


def _rekey_rotations(rig, action, bones, as_offsets):
    """The importer keyed rotations absolute: basis = rest^-1 * key. as_offsets: re-key every listed bone as
    basis = key (an offset on top of the layer below). Otherwise drop the listed identity placeholders of bones
    that don't rest at identity, so the layer below / the rest pose shows through."""
    names = {b.lower() for b in bones}
    for pb in rig.pose.bones:
        if pb.name.lower() not in names:
            continue
        rest = _rest_local(pb)
        curves = _bone_curves(action, pb.name, "rotation_quaternion")
        if len(curves) != 4 or (not as_offsets and rest.angle < math.radians(2.0)):
            continue
        if as_offsets:
            frames = sorted({k.co[0] for k in curves[0].keyframe_points})
            values = {f: rest @ Quaternion([fc.evaluate(f) for fc in curves]) for f in frames}
            for i, fc in enumerate(curves):
                for key in fc.keyframe_points:
                    q = values.get(key.co[0])
                    if q is not None:
                        shift = q[i] - key.co[1]
                        key.co[1] += shift
                        key.handle_left[1] += shift
                        key.handle_right[1] += shift
                fc.update()
        else:
            for fc in curves:
                for layer in getattr(action, "layers", ()):
                    for strip in layer.strips:
                        for bag in getattr(strip, "channelbags", ()):
                            if fc in bag.fcurves.values():
                                bag.fcurves.remove(fc)
            pb.rotation_quaternion = (1.0, 0.0, 0.0, 0.0)


def _is_offset_clip(rig, info):
    """All-near-identity rotations only mean 'additive' if some of those bones rest far from identity."""
    if not info["offsets"]:
        return False
    limit = math.radians(OFFSET_REST_MIN_DEG)
    return any(_rest_local(pb).angle > limit for pb in rig.pose.bones if pb.name in info["rotated"])


def _action_fcurves(action):
    if getattr(action, "layers", None):          # Blender 4.4+ layered actions
        return [fc for layer in action.layers for strip in layer.strips
                for bag in getattr(strip, "channelbags", ()) for fc in bag.fcurves]
    return list(getattr(action, "fcurves", ()))


def _action_bones(action):
    bones = set()
    for fc in _action_fcurves(action):
        m = re.match(r'pose\.bones\["(.+?)"\]', fc.data_path)
        if m:
            bones.add(m.group(1))
    return bones


def _anim_target(context):
    """The armature animations go on: the active/selected rig, a selected mesh's rig, or the only rig."""
    for ob in [context.object] + list(context.selected_objects):
        if ob is None:
            continue
        if ob.type == 'ARMATURE':
            return ob
        if ob.parent is not None and ob.parent.type == 'ARMATURE':
            return ob.parent
    rigs = [o for o in context.view_layer.objects if o.type == 'ARMATURE']
    arms = [o for o in rigs if _is_arms(o)]
    return (arms or rigs)[0] if len(arms or rigs) == 1 else None


def _nla_track(anim_data, name):
    """Get or create a named track, stacked Base < Upper < ADS < Additive < Face (bottom to top)."""
    track = anim_data.nla_tracks.get(name)
    if track is not None:
        return track
    order = ANIM_TRACK_ORDER
    below = [anim_data.nla_tracks.get(n) for n in order[:order.index(name)]]
    below = [t for t in below if t is not None]
    if name != ANIM_TRACK_BASE and not below:
        below = [_nla_track(anim_data, ANIM_TRACK_BASE)]     # the base layer always exists under the others
    track = anim_data.nla_tracks.new(prev=below[-1]) if below else anim_data.nla_tracks.new()
    track.name = name
    return track


def _layer_track(anim_data, name, start, end):
    """Additive and face clips stack: the aim offset, the fire kick and the face all run at once, so a busy
    layer gets another track above it (below the layers that come later in ANIM_TRACK_ORDER)."""
    family = [_nla_track(anim_data, name)]
    family += [t for t in anim_data.nla_tracks if t.name.startswith(name + " ")]
    for track in family:
        if not any(strip.frame_start < end and start < strip.frame_end for strip in track.strips):
            return track
    track = anim_data.nla_tracks.new(prev=family[-1])
    track.name = "%s %d" % (name, len(family) + 1)
    return track


def _stash_active_action(rig):
    """An action imported earlier the normal way (e.g. idle) becomes the first Base clip."""
    ad = rig.animation_data
    if ad is None or ad.action is None:
        return
    action = ad.action
    track = _nla_track(ad, ANIM_TRACK_BASE)
    if not any(s.action == action for s in track.strips):
        start = int(action.frame_range[0])
        if not any(s.frame_start <= start < s.frame_end for s in track.strips):
            strip = track.strips.new(action.name, start, action)
            strip.extrapolation = 'HOLD'
    ad.action = None


def _place_strip(track, action, start, scale, name, report):
    """Add a clip at `start`. A clip already playing there on this layer is cut at `start` (the new clip takes
    over, like the game switching states); clips it would run into are replaced."""
    end = start + (action.frame_range[1] - action.frame_range[0]) * scale
    for old in list(track.strips):
        if old.frame_start < start < old.frame_end:
            old.frame_end_ui = start
        elif start <= old.frame_start <= end:
            report({'INFO'}, "CoD AutoShader: %s replaces %s" % (name, old.name))
            track.strips.remove(old)
    strip = track.strips.new(name, int(start), action)
    if hasattr(strip, "action_slot") and strip.action_slot is None and len(action.slots):
        strip.action_slot = action.slots[0]
    strip.scale = scale
    strip.extrapolation = 'HOLD' if len(track.strips) == 1 else 'HOLD_FORWARD'
    return strip


def _eye_matrix(rig):
    """World matrix of the player's eye: the eye bone, looking down CoD +X with +Z up (a camera looks down -Z)."""
    bone = next((b for b in EYE_BONES if b in rig.pose.bones), None)
    if bone is None:
        return None, None
    pb = rig.pose.bones[bone]
    to_world = rig.matrix_world.to_3x3()
    forward = (to_world @ Vector((1.0, 0.0, 0.0))).normalized()
    up = (to_world @ Vector((0.0, 0.0, 1.0))).normalized()
    right = forward.cross(up).normalized()
    eye_rest = Matrix((right, (-forward).cross(right), -forward)).transposed().to_4x4()
    eye_rest.translation = rig.matrix_world @ pb.bone.head_local
    offset = (rig.matrix_world @ pb.bone.matrix_local).inverted() @ eye_rest
    eye = rig.matrix_world @ pb.matrix @ offset
    return Matrix.LocRotScale(eye.translation, eye.to_quaternion(), None), bone


def _rig_meshes(rig):
    return [o for o in bpy.data.objects if o.type == 'MESH' and not o.hide_render and not o.hide_viewport and
            (o.parent is rig or any(m.type == 'ARMATURE' and m.object is rig for m in o.modifiers))]


def _sight_point(rig, deps):
    """World center of the mounted optic: the scope's picture-in-picture surface, else a red dot's eye-side lens."""
    found = {}
    for ob in _rig_meshes(rig):
        kinds = {i: ('SCOPE' if sight_kind(sl.material.name) == 'SCOPE' else
                     'DOT' if sight_kind(sl.material.name) == 'LENS' and is_red_dot_lens(sl.material.name) else None)
                 for i, sl in enumerate(ob.material_slots) if sl.material is not None}
        if not any(kinds.values()):
            continue
        ev = ob.evaluated_get(deps)
        me = ev.to_mesh()
        for p in me.polygons:
            kind = kinds.get(p.material_index)
            if kind:
                found.setdefault(kind, []).append(ob.matrix_world @ p.center)
        ev.to_mesh_clear()
    pts = found.get('SCOPE') or found.get('DOT')
    return sum(pts, Vector()) / len(pts) if pts else None


def _bone_curves(action, bone, prop):
    path = 'pose.bones["%s"].%s' % (bone, prop)
    return sorted((fc for fc in _action_fcurves(action) if fc.data_path == path), key=lambda fc: fc.array_index)


def _align_ads_clip(context, rig, strip, report):
    """The engine lines each optic up with the eye at full ADS; the tag_ads clip alone is generic (MWII MCPR:
    scope 1.5 cm high). Offset the clip's tag_ads path, scaled by how far into ADS each frame is, so the
    mounted sight ends up on the view axis."""
    curves = _bone_curves(strip.action, "tag_ads", "location")
    if len(curves) != 3:
        return
    a0, a1 = strip.action.frame_range
    loc0 = Vector([fc.evaluate(a0) for fc in curves])
    loc1 = Vector([fc.evaluate(a1) for fc in curves])
    ads_at_end = loc1.length >= loc0.length
    hip, ads = (loc0, loc1) if ads_at_end else (loc1, loc0)
    if (ads - hip).length < 1e-3:
        return
    scene = context.scene
    frame = scene.frame_current
    scene.frame_set(int(round(strip.frame_end - 0.01)) if ads_at_end else int(strip.frame_start))
    deps = context.evaluated_depsgraph_get()
    eye, _ = _eye_matrix(rig)
    point = _sight_point(rig, deps)
    pb = rig.pose.bones["tag_ads"]
    frame_basis = (rig.matrix_world @ pb.matrix @ pb.matrix_basis.inverted()).to_3x3()
    scene.frame_set(frame)
    if eye is None or point is None:
        return
    miss = eye.inverted() @ point                     # camera space: x right, y up, -z forward
    fix = frame_basis.inverted() @ (eye.to_3x3() @ Vector((-miss.x, -miss.y, 0.0)))
    span = (ads - hip).length
    frames = {key.co[0] for fc in curves for key in fc.keyframe_points}
    weight = {f: min(max((Vector([c.evaluate(f) for c in curves]) - hip).length / span, 0.0), 1.2) for f in frames}
    for fc_index, fc in enumerate(curves):
        for key in fc.keyframe_points:
            shift = fix[fc_index] * weight[key.co[0]]
            key.co[1] += shift
            key.handle_left[1] += shift
            key.handle_right[1] += shift
        fc.update()
    report({'INFO'}, "CoD AutoShader: lined the sight up with the eye (moved %.1f cm)" % Vector((miss.x, miss.y)).length)


RECOIL_PROFILE = ((0, 0.0), (1, 1.0), (3, 0.6), (6, 0.2), (9, -0.06), (13, 0.0))   # (frames at 30 fps, kick)
RECOIL_KICK_CM = Vector((-1.2, 0.0, 0.3))         # back and a little up, in rig space (CoD: +X forward, +Z up)
RECOIL_PITCH_DEG = 1.4                            # muzzle climb, pivoting at the eye
RECOIL_ADS_KICK = 0.25                            # aimed: the eye sits ~2 cm behind the scope, so it barely moves back


def _recoil_action(rig, strength, fps, seed, aimed=False):
    """A short kick on tag_ads (the whole viewmodel) - CoD adds gun kick procedurally on top of fire anims."""
    import random
    rng = random.Random(seed)
    pb = rig.pose.bones["tag_ads"]
    to_basis = pb.bone.matrix_local.to_3x3().inverted()
    kick = to_basis @ (RECOIL_KICK_CM * strength * (RECOIL_ADS_KICK if aimed else 1.0))
    yaw = math.radians(rng.uniform(-0.5, 0.5)) * strength
    axis_pitch = (to_basis @ Vector((0.0, -1.0, 0.0))).normalized()   # about the gun's right: muzzle up
    axis_yaw = (to_basis @ Vector((0.0, 0.0, 1.0))).normalized()
    action = bpy.data.actions.new("CoD Recoil")
    ad = rig.animation_data
    active = ad.action
    ad.action = action                                # Blender 5 creates curves through the assigned slot
    keys = [(t * fps / 30.0, k) for t, k in RECOIL_PROFILE]
    values = {("location", i): [(f, kick[i] * k) for f, k in keys] for i in range(3)}
    for i in range(4):
        values[("rotation_quaternion", i)] = []
    for f, k in keys:
        q = (Quaternion(axis_pitch, math.radians(RECOIL_PITCH_DEG) * strength * k) @
             Quaternion(axis_yaw, yaw * k))
        for i in range(4):
            values[("rotation_quaternion", i)].append((f, q[i]))
    for (prop, index), pts in values.items():
        if hasattr(action, "fcurve_ensure_for_datablock"):
            fc = action.fcurve_ensure_for_datablock(rig, 'pose.bones["tag_ads"].%s' % prop, index=index,
                                                    group_name="tag_ads")
        else:
            fc = action.fcurves.new('pose.bones["tag_ads"].%s' % prop, index=index, action_group="tag_ads")
        for f, v in pts:
            fc.keyframe_points.insert(f, v, options={'FAST'})
        fc.update()
    ad.action = active
    return action


def _add_recoil(rig, start, strength, fps, aimed=False):
    ad = rig.animation_data
    action = _recoil_action(rig, strength, fps, int(start), aimed)
    span = RECOIL_PROFILE[-1][0] * fps / 30.0
    track = _layer_track(ad, ANIM_TRACK_ADD, start, start + span)
    strip = track.strips.new("Recoil", int(start), action)
    if hasattr(strip, "action_slot") and strip.action_slot is None and len(action.slots):
        strip.action_slot = action.slots[0]
    strip.blend_type = 'COMBINE'
    strip.extrapolation = 'NOTHING'
    return strip


# ---- camera shake: the engine's fire shake, which no clip carries ----------------------------------------
SHAKE_PITCH_DEG, SHAKE_YAW_DEG, SHAKE_ROLL_DEG = 2.0, 0.6, 1.2     # peak, hip fire, strength 1
SHAKE_SECONDS = 0.3
SHAKE_DECAY = 0.055                # seconds for the punch to fall to a third
SHAKE_ADS = 0.6                    # aimed shots shake less
# a heavier round shakes harder: by the class token in the clip name (rex_vm_<class>_<gun>_fire)
SHAKE_CLASS = {"sn": 1.6, "sh": 1.5, "dm": 1.3, "lm": 1.15, "ar": 1.0, "br": 1.0, "sm": 0.75, "pi": 0.8}


def _shake_action(rig, bone, strength, fps, seed):
    import random
    rng = random.Random(seed)
    pb = rig.pose.bones[bone]
    to_basis = pb.bone.matrix_local.to_3x3().inverted()
    # CoD armature space: +X forward, +Y left, +Z up
    pitch_axis = (to_basis @ Vector((0.0, -1.0, 0.0))).normalized()     # about the right: look up
    yaw_axis = (to_basis @ Vector((0.0, 0.0, 1.0))).normalized()
    roll_axis = (to_basis @ Vector((1.0, 0.0, 0.0))).normalized()
    yaw_amp = math.radians(SHAKE_YAW_DEG) * strength * rng.choice((-1.0, 1.0)) * rng.uniform(0.5, 1.0)
    roll_amp = math.radians(SHAKE_ROLL_DEG) * strength * rng.choice((-1.0, 1.0)) * rng.uniform(0.5, 1.0)
    pitch_amp = math.radians(SHAKE_PITCH_DEG) * strength * rng.uniform(0.85, 1.0)
    f_pitch, f_yaw, f_roll = rng.uniform(5.5, 6.5), rng.uniform(7.0, 9.0), rng.uniform(4.5, 5.5)
    action = bpy.data.actions.new("CoD Camera Shake")
    ad = rig.animation_data
    active = ad.action
    ad.action = action                                # Blender 5 creates curves through the assigned slot
    frames = max(2, int(math.ceil(SHAKE_SECONDS * fps)))
    curves = []
    for i in range(4):
        path = 'pose.bones["%s"].rotation_quaternion' % bone
        if hasattr(action, "fcurve_ensure_for_datablock"):
            curves.append(action.fcurve_ensure_for_datablock(rig, path, index=i, group_name=bone))
        else:
            curves.append(action.fcurves.new(path, index=i, action_group=bone))
    for k in range(frames + 1):
        s = k / fps
        env = math.exp(-s / SHAKE_DECAY) if k < frames else 0.0     # lands exactly on rest
        w = 2.0 * math.pi
        # a punch, not a wobble: the full kick lands on the frame of the shot, then snaps back past rest
        q = (Quaternion(pitch_axis, pitch_amp * env * math.cos(w * f_pitch * s)) @
             Quaternion(yaw_axis, yaw_amp * env * math.cos(w * f_yaw * s)) @
             Quaternion(roll_axis, roll_amp * env * math.cos(w * f_roll * s)))
        for i in range(4):
            curves[i].keyframe_points.insert(k, q[i], options={'FAST'})
    for fc in curves:
        fc.update()
    ad.action = active
    return action, frames


def add_camera_shake(rig, start, settings, fps, stem, aimed):
    """A jolt of the view at `start`. Returns the strip, or None when the rig has no eye bone or it is off."""
    bone = "tag_cambone" if settings.fire_shake_camera_only else "tag_view"
    if settings.fire_shake <= 0.0 or bone not in rig.pose.bones:
        return None
    m = re.search(r"_vm_([a-z]{2})_", stem)
    strength = settings.fire_shake * SHAKE_CLASS.get(m.group(1) if m else "", 1.0) * (SHAKE_ADS if aimed else 1.0)
    action, frames = _shake_action(rig, bone, strength, fps, int(start * 7919) ^ len(stem))
    ad = rig.animation_data
    track = _layer_track(ad, ANIM_TRACK_ADD, start, start + frames)
    strip = track.strips.new("Camera Shake", int(start), action)
    if hasattr(strip, "action_slot") and strip.action_slot is None and len(action.slots):
        strip.action_slot = action.slots[0]
    strip.blend_type = 'COMBINE'
    strip.extrapolation = 'NOTHING'
    return strip


EMPTY_CLIP = re.compile(r"(^|_)empty($|_)", re.I)


FIRE_CLIP = re.compile(r"(^|_)fire(_last)?(_ads)?$", re.I)
FIRE_LAST_CLIP = re.compile(r"(^|_)fire_last(_ads)?$", re.I)
RELOAD_CLIP = re.compile(r"(^|_)reload($|_)", re.I)


def companion_clip(path, suffix):
    """<gun prefix>_<suffix>.cast beside a clip, for the longest gun prefix the clip's name starts with -
    so rex_vm_pi_hotel45_knife_fire finds the Hotel45's own layer, not a different gun's. '' if none."""
    stem = os.path.splitext(os.path.basename(path))[0].lower()
    tail = "_" + suffix + ".cast"
    best, best_prefix = "", ""
    for f in glob.glob(os.path.join(os.path.dirname(path), "*" + tail)):
        prefix = os.path.basename(f)[:-len(tail)].lower()
        if stem.startswith(prefix + "_") and len(prefix) > len(best_prefix):
            best, best_prefix = f, prefix
    return best


def empty_pose_for(path):
    """The gun's empty pose for a clip that plays over it, or ''.

    That is an _empty clip that is neither a reload (those start from the locked-back position
    themselves) nor the pose itself, and a fire_last (the shot that empties the gun).
    """
    stem = os.path.splitext(os.path.basename(path))[0].lower()
    if "additive" in stem or RELOAD_CLIP.search(stem):
        return ""
    if not (EMPTY_CLIP.search(stem) or FIRE_LAST_CLIP.search(stem)):
        return ""
    return companion_clip(path, "empty_additive")


def recoil_layer_for(path):
    """The gun's real recoil layer for a fire clip - the ADS one for an ADS shot - or ''."""
    stem = os.path.splitext(os.path.basename(path))[0].lower()
    if not FIRE_CLIP.search(stem):
        return ""
    if stem.endswith("_ads"):
        return companion_clip(path, "fire_recoil_additive_ads") or companion_clip(path, "fire_recoil_additive")
    return companion_clip(path, "fire_recoil_additive")


def _empty_pose_at(ad, frame):
    """The empty-pose strip in force at `frame`, counting one held on after a fire_last."""
    track = ad.nla_tracks.get(ANIM_TRACK_EMPTY)
    for s in (track.strips if track else ()):
        if s.frame_start <= frame < s.frame_end or (s.extrapolation == 'HOLD_FORWARD' and frame >= s.frame_start):
            return s
    return None


def _nothing_under(rig):
    """True when no pose clip plays on the rig - nothing on the Base or Upper layer, no active action."""
    ad = rig.animation_data
    if ad is None:
        return True
    if ad.action is not None:
        return False
    return not any(len(tr.strips) for tr in ad.nla_tracks if tr.name in (ANIM_TRACK_BASE, ANIM_TRACK_UPPER))


def _end_empty_pose(ad, frame):
    """A reload fills the gun: a held empty pose stops where the reload starts."""
    s = _empty_pose_at(ad, frame)
    if s is None or s.frame_start >= frame:
        return
    a = max(s.action_frame_end - s.action_frame_start, 1.0)
    s.scale = (frame - s.frame_start) / a
    s.extrapolation = 'NOTHING'


PROC_CONSTRAINT = "CoD Procedural"


def _same_axes(a, b, tol=0.99):
    ma, mb = a.matrix_local.to_3x3(), b.matrix_local.to_3x3()
    return all(ma.col[i].normalized().dot(mb.col[i].normalized()) > tol for i in range(3))


def add_procedural_bones(rig):
    """Drive the j_proc_ joints the game computes at runtime (no clip ever keys them). Returns how many.

    Forearm twist: j_proc_wristfronttwist1 copies the wrist's twist about the forearm, and nothing of its bend,
    so the forearm skin turns with the hand instead of wringing at the cuff. Knuckles: j_proc_<finger>_1 takes
    half the bend of the finger joint it sits on, keeping the knuckle round when the hand closes."""
    if rig is None or rig.type != 'ARMATURE':
        return 0
    bones, pbs, done = rig.data.bones, rig.pose.bones, 0
    for side in ("le", "ri"):
        wrist, elbow = bones.get("j_wrist_" + side), bones.get("j_elbow_" + side)
        twist = pbs.get("j_proc_wristfronttwist1_" + side)
        if wrist is not None and elbow is not None and twist is not None and _same_axes(twist.bone, wrist):
            fore = (wrist.head_local - elbow.head_local).normalized()
            m = wrist.matrix_local.to_3x3()
            axis = max(range(3), key=lambda i: abs(m.col[i].normalized().dot(fore)))
            a = "XYZ"[axis]
            con = twist.constraints.get(PROC_CONSTRAINT) or twist.constraints.new('TRANSFORM')
            con.name = PROC_CONSTRAINT
            con.target, con.subtarget = rig, wrist.name
            con.owner_space = con.target_space = 'LOCAL'
            con.map_from = con.map_to = 'ROTATION'
            con.from_rotation_mode = 'SWING_TWIST_' + a      # the twist part alone, about the forearm
            con.mix_mode_rot = 'AFTER'
            for c in "xyz":
                setattr(con, "from_min_%s_rot" % c, -math.pi)
                setattr(con, "from_max_%s_rot" % c, math.pi)
                full = c.upper() == a
                setattr(con, "to_min_%s_rot" % c, -math.pi if full else 0.0)
                setattr(con, "to_max_%s_rot" % c, math.pi if full else 0.0)
                setattr(con, "map_to_%s_from" % c, c.upper())
            done += 1
        for finger in ("index", "mid", "ring", "pinky"):
            helper = pbs.get("j_proc_%s_1_%s" % (finger, side))
            joint = bones.get("j_%s_%s_1" % (finger, side))
            if helper is None or joint is None or not _same_axes(helper.bone, joint) \
                    or (helper.bone.head_local - joint.head_local).length > 0.05:
                continue
            con = helper.constraints.get(PROC_CONSTRAINT) or helper.constraints.new('COPY_ROTATION')
            con.name = PROC_CONSTRAINT
            con.target, con.subtarget = rig, joint.name
            con.owner_space = con.target_space = 'LOCAL'
            con.mix_mode = 'REPLACE'
            con.influence = 0.5
            done += 1
    return done


def import_layered_animation(context, rig, path, start, report, force_track=None, hold=None, layer=None,
                             bare=False):
    """Import one .cast animation onto `rig` as an NLA clip. Returns (strip, layer name) or (None, None).

    `hold` stretches the clip over that many frames - for a one-frame pose that has to last as long as
    the clip it sits under. `bare` imports the clip alone, without the layers that normally come with it."""
    scene = context.scene
    add_procedural_bones(rig)
    ad = rig.animation_data or rig.animation_data_create()
    _stash_active_action(rig)
    first = not any(t.name in ANIM_TRACK_ORDER and len(t.strips) for t in ad.nla_tracks)
    fps = scene.render.fps / scene.render.fps_base
    frame_range = (scene.frame_start, scene.frame_end)
    if context.object is not None and context.object.mode != 'OBJECT':
        bpy.ops.object.mode_set(mode='OBJECT')
    for o in context.view_layer.objects:
        o.select_set(False)
    rig.select_set(True)
    context.view_layer.objects.active = rig
    before = set(bpy.data.actions)
    # the importer measures each bone's rest orientation from the current pose: with the NLA playing (e.g. idle)
    # every new clip would come out relative to that pose, so the layers are paused while it runs
    use_nla = ad.use_nla
    ad.use_nla = False
    try:
        with _RigPaused(rig):
            bpy.ops.import_scene.cast(filepath=path, import_reset=True, import_time=False)
    except RuntimeError as e:
        report({'WARNING'}, "CoD AutoShader: could not import %s (%s)" % (os.path.basename(path), e))
        return None, None
    finally:
        ad.use_nla = use_nla
        if context.object is not None and context.object.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
    action = ad.action if ad.action not in before else next((a for a in bpy.data.actions if a not in before), None)
    if action is None:
        report({'WARNING'}, "CoD AutoShader: %s has no animation" % os.path.basename(path))
        return None, None
    ad.action = None
    for bone in rig.pose.bones:                       # the importer leaves its last pose in the bones
        bone.matrix_basis.identity()
    anim_fps = scene.render.fps / scene.render.fps_base
    if first:
        scale = 1.0                                   # the first clip sets the scene frame rate
    else:
        scene.render.fps, scene.render.fps_base = round(fps), round(fps) / fps
        scale = fps / anim_fps
    info = _anim_info(path)
    bones = _action_bones(action)
    offset_clip = _is_offset_clip(rig, info)
    lowered = {b.lower() for b in bones}
    face_bones = {b for b in lowered if b.startswith(FACE_BONES)}
    if force_track is not None:
        track_name, blend = force_track, 'REPLACE'
    elif bones and bones <= ADS_BONES:
        track_name, blend = ANIM_TRACK_ADS, 'REPLACE'
    elif len(face_bones) >= 5 and len(face_bones) >= 0.5 * len(bones):
        track_name, blend = ANIM_TRACK_FACE, 'REPLACE'       # a facial clip runs alongside the body
    elif info["additive"] or offset_clip:
        if offset_clip:
            _rekey_rotations(rig, action, info["rotated"], as_offsets=True)
        track_name, blend = ANIM_TRACK_ADD, 'COMBINE'
    else:
        if info["identity"]:
            _rekey_rotations(rig, action, info["identity"], as_offsets=False)
        # a clip that moves the legs is the stance / locomotion everything else sits on; an upper-body clip
        # (a third-person inspect, reload, ...) goes above it so the legs keep the stance
        full_body = any(b.startswith(LEG_BONES) for b in lowered)
        track_name, blend = (ANIM_TRACK_BASE if full_body else ANIM_TRACK_UPPER), 'REPLACE'
    length = (action.frame_range[1] - action.frame_range[0]) * scale
    if hold:
        scale = hold / max(action.frame_range[1] - action.frame_range[0], 1.0)
        length = hold
    if layer and track_name == ANIM_TRACK_ADD:
        track = _nla_track(ad, layer)                # a layer of its own, still blended as an additive
    else:
        track = (_layer_track(ad, track_name, start, start + length)
                 if track_name in (ANIM_TRACK_ADD, ANIM_TRACK_FACE) else _nla_track(ad, track_name))
    strip = _place_strip(track, action, start, scale, action.name, report)
    strip.blend_type = blend
    if hold:
        strip.extrapolation = 'NOTHING'                # over when its clip is over
    _rig_after_clip(rig, track_name, report)
    scene.frame_start = frame_range[0]
    pose = (action.frame_range[1] - action.frame_range[0]) <= 1.0       # a held pose, not a motion
    scene.frame_end = max(frame_range[1] if (not first or pose) else 0, int(math.ceil(strip.frame_end)))
    settings = scene.cod_autoshader
    if (force_track is None and settings.anim_face and _is_body(rig)
            and track_name in (ANIM_TRACK_BASE, ANIM_TRACK_UPPER, ANIM_TRACK_ADD)
            and any(b.startswith(FACE_BONES) for b in (x.name.lower() for x in rig.pose.bones))):
        folder = _rig_weapon(rig, settings)[3]
        add_face_clip(context, rig, strip, path, folder, report)
    if track_name == ANIM_TRACK_ADS and settings.anim_align_sight:
        _align_ads_clip(context, rig, strip, report)
    if track_name == ANIM_TRACK_ADS:
        update_lens_hide(rig)
    recoil = recoil_layer_for(path) if force_track is None else ""
    if (track_name == ANIM_TRACK_BASE and settings.anim_recoil > 0.0 and "tag_ads" in rig.pose.bones
            and not recoil and re.search(r"(^|_)fire(_last)?$", action.name.lower())):
        _add_recoil(rig, strip.frame_start, settings.anim_recoil, scene.render.fps / scene.render.fps_base,
                    aimed=_ads_up_at(rig, strip.frame_start))
    stem = os.path.splitext(os.path.basename(path))[0].lower()
    if (force_track is None and not hold and track_name == ANIM_TRACK_ADD and not _is_body(rig)
            and _nothing_under(rig)):
        # an additive (MW fire: trigger, slide, fingers and a kick) is only deltas - the grip comes from the
        # idle it plays over. Played on nothing, the deltas land on the bind pose: hands apart, gun loose.
        idle = companion_clip(path, "idle")
        if idle:
            under, _layer = import_layered_animation(context, rig, idle, strip.frame_start, report, bare=True)
            if under is not None:
                report({'INFO'}, "CoD AutoShader: %s plays over %s (it only carries the motion on top)" % (
                    action.name, os.path.basename(idle)[:-5]))
    if (force_track is None and not hold and not bare and track_name in (ANIM_TRACK_BASE, ANIM_TRACK_UPPER)
            and re.search(r"(^|_)idle$", stem)):
        # MW4's idle is a one-frame pose (every curve one key); the breathing, sway and finger fidgets are
        # <gun>_idle_active, a looping additive the game plays on top - the _ads one while aimed
        aimed = _ads_up_at(rig, strip.frame_start)
        active = (companion_clip(path, "idle_active_ads") if aimed else "") or companion_clip(path, "idle_active")
        if active:
            sway, _layer = import_layered_animation(context, rig, active, strip.frame_start, report)
            if sway is not None:
                sway.extrapolation = 'NOTHING'
                a = max(strip.action_frame_end - strip.action_frame_start, 1.0)
                strip.scale = max(sway.frame_end - strip.frame_start, 1.0) / a      # the pose lasts as long
                scene.frame_end = max(scene.frame_end, int(math.ceil(sway.frame_end)))
                report({'INFO'}, "CoD AutoShader: %s moves with %s" % (action.name, os.path.basename(active)[:-5]))
    if force_track is None and RELOAD_CLIP.search(stem):
        _end_empty_pose(ad, strip.frame_start)
    if force_track is None and FIRE_CLIP.search(stem):
        add_camera_shake(rig, strip.frame_start, settings, scene.render.fps / scene.render.fps_base, stem,
                         aimed=stem.endswith("_ads") or _ads_up_at(rig, strip.frame_start))
    if recoil:
        kick, _layer = import_layered_animation(context, rig, recoil, strip.frame_start, report)
        if kick is not None:
            kick.extrapolation = 'NOTHING'           # the kick is over when it is over
            report({'INFO'}, "CoD AutoShader: %s fires with %s" % (action.name, os.path.basename(recoil)[:-5]))
    pose = empty_pose_for(path) if force_track is None else ""
    if pose and _empty_pose_at(ad, strip.frame_start) is None:
        # the game plays an empty clip over the gun's empty pose (slide / bolt locked back): without it
        # the Hotel45's inspect_empty drives the slide forward past the muzzle. The last shot is what
        # empties the gun, so after a fire_last the pose holds until a reload ends it.
        last = bool(FIRE_LAST_CLIP.search(stem))
        under, _layer = import_layered_animation(context, rig, pose, strip.frame_start, report,
                                                 hold=strip.frame_end - strip.frame_start, layer=ANIM_TRACK_EMPTY)
        if under is not None:
            if last:
                under.extrapolation = 'HOLD_FORWARD'
            report({'INFO'}, "CoD AutoShader: %s %s the empty pose (%s)" % (
                action.name, "leaves the gun in" if last else "plays over", os.path.basename(pose)[:-5]))
    action["cod_source"] = path                       # so Add Sounds can find this clip's export later
    if settings.anim_sounds:
        add_clip_sounds(context, strip, path, settings, report)
    if force_track is None:
        update_ammo_visibility(rig)
    return strip, track_name


def _face_clip_for(clip, folder):
    """The facial_* clip that goes with an action clip, if the export has one."""
    if not folder or not os.path.isdir(folder):
        return None, None
    name = os.path.basename(clip).lower()
    mood = next(m for pattern, m in FACE_FOR_ACTION if not pattern or re.search(pattern, name))
    best = None
    for entry in os.scandir(folder):
        low = entry.name.lower()
        if not low.endswith(".cast") or "facial" not in low or "enemy" in low:
            continue
        if re.search(r"facial_%s(_|\.)" % mood, low) or low.endswith("facial_%s.cast" % mood):
            if best is None or len(entry.name) < len(os.path.basename(best)):
                best = entry.path
    return best, mood


def add_face_clip(context, rig, body_strip, source_clip, folder, report):
    """Put the matching facial clip on the Face track, repeated to cover the body clip."""
    path, mood = _face_clip_for(source_clip, folder)
    if path is None:
        return None
    strip, _ = import_layered_animation(context, rig, path, int(body_strip.frame_start), report,
                                        force_track=ANIM_TRACK_FACE)
    if strip is None:
        return None
    span = body_strip.frame_end - body_strip.frame_start
    length = strip.frame_end - strip.frame_start
    if length > 0 and span > length:
        strip.repeat = min(span / length, 100.0)           # the face loops under the action
    report({'INFO'}, "CoD AutoShader: face '%s' added" % mood)
    return strip


# --------------------------------------------------------------------------------------------
# Merge Parts: several exported part files -> one assembled, aligned rig
# --------------------------------------------------------------------------------------------

# Bones tried in order when lining a part up on the host. Anatomical bones come FIRST and the placement
# roots last, which is the opposite of what seems natural: j_mainroot and tag_origin are where an exporter
# parked the part rather than anywhere on the body, and the arms part here has its j_mainroot a metre back
# at y -0.958. Anchoring there dragged the whole body backwards; j_spine4 lands every part correctly.
MERGE_ANCHORS = ("j_spine4", "j_spine2", "j_spine1", "j_spinelower", "j_neck", "j_head",
                 "j_clavicle_le", "j_clavicle_ri", "j_hip_le", "j_hip_ri", "j_mainroot", "tag_origin")
# A character's first-person duplicate body: merging it on top of the third-person body doubles
# everything. Deliberately NOT matching _vm_ - every viewmodel WEAPON part is called att_..._vm_..., and
# matching that threw away the entire gun and left "nothing to merge".
VIEWMODEL_PART = re.compile(r"view(body|arms|legs|hands)")


def _merge_part_paths(path):
    """Every part of whatever this file belongs to - a weapon's parts or a character's.

    They are named differently: a weapon part folder ends in a variant tag (att_rex_vm_pi_hotel45_rec_v0)
    and a character part folder does not (c_t9_uk_pl_mi6_checker_head), so the prefix is found differently
    and the weapon case has the viewmodel importer's finder already written for it.
    """
    ext = os.path.splitext(path)[1].lower()
    folder = os.path.basename(os.path.dirname(path))
    if WEAPON_NAME.search(folder.lower()) or re.search(r"_v\d+$", folder):
        found = _weapon_part_paths(path, ext)
        if len(found) > 1:
            return found
    return _character_part_paths(path)


def _character_part_paths(path):
    """From one part file, the whole character's parts: the sibling folders sharing its name prefix.

    A character folder is named <character>_<part> (c_t9_uk_pl_mi6_checker_head, ..._torso), so the prefix
    is everything up to the last underscore. Parts whose own name has an underscore in it, like
    lowerbody_viewbody, still land under the same prefix and are filtered later if unwanted.
    """
    folder = os.path.dirname(path)
    stem = os.path.basename(folder)
    ext = os.path.splitext(path)[1].lower()
    if "_" not in stem:
        return [path]
    prefix = stem.rsplit("_", 1)[0] + "_"
    found = []
    for sib in sorted(glob.glob(os.path.join(os.path.dirname(folder), glob.escape(prefix) + "*"))):
        if not os.path.isdir(sib):
            continue
        hits = (sorted(glob.glob(os.path.join(sib, "*_LOD0" + ext)))
                or sorted(glob.glob(os.path.join(sib, "*" + ext))))
        if hits:
            found.append(hits[0])
    return found or [path]


def _part_armature(objs):
    return next((o for o in objs if o.type == 'ARMATURE'), None)


def _skinned_bones(meshes):
    """Bone names that actually carry weight on these meshes - a skeleton lists many it never deforms."""
    used = set()
    for m in meshes:
        if m.type != 'MESH':
            continue
        names = {g.index: g.name for g in m.vertex_groups}
        for v in m.data.vertices:
            for g in v.groups:
                if g.weight > 1e-4 and g.group in names:
                    used.add(names[g.group])
    return used


def _align_part(host, host_meshes, guest, guest_meshes):
    """Move `guest`'s armature so its skeleton sits on `host`'s. Returns the bone used, or None.

    Preference order for the anchor bone: one both parts actually SKIN (that bone is certainly real in both
    skeletons rather than an unused stub left at a default), then a named anchor, then any shared bone.
    """
    shared = {b.name for b in host.data.bones} & {b.name for b in guest.data.bones}
    if not shared:
        return None

    def depth(rig, name):
        n, b = 0, rig.data.bones[name]
        while b.parent is not None:
            b, n = b.parent, n + 1
        return n

    both_skin = shared & _skinned_bones(host_meshes) & _skinned_bones(guest_meshes)
    bone = (next((b for b in MERGE_ANCHORS if b in shared), None)
            or (min(sorted(both_skin), key=lambda b: depth(host, b) + depth(guest, b))
                if both_skin else None)
            or min(sorted(shared), key=lambda b: depth(host, b) + depth(guest, b)))
    # POSE matrices, not rest ones. Some parts arrive posed and others do not - the arms carry a pose that
    # lifts them into place while the torso and lowerbody are at identity - so comparing rest positions
    # compares two different spaces. pose.bones[].matrix equals the rest matrix when a part is unposed, so
    # this is right either way.
    on_host = host.matrix_world @ host.pose.bones[bone].matrix
    on_guest = guest.matrix_world @ guest.pose.bones[bone].matrix
    guest.matrix_world = (on_host @ on_guest.inverted()) @ guest.matrix_world
    return bone


def _dedupe_images():
    """Point every image user at one copy per file. Each part re-imports the shared textures, which left
    44 of 113 images as .001 duplicates on this export."""
    by_path, remap = {}, {}
    for img in list(bpy.data.images):
        key = os.path.normcase(bpy.path.abspath(img.filepath)) if img.filepath else None
        if not key:
            continue
        if key in by_path:
            remap[img] = by_path[key]
        else:
            by_path[key] = img
    if not remap:
        return 0
    for mat in bpy.data.materials:
        if not mat.use_nodes:
            continue
        for node in mat.node_tree.nodes:
            if node.type == 'TEX_IMAGE' and node.image in remap:
                node.image = remap[node.image]
    for old in remap:
        if old.users == 0:
            bpy.data.images.remove(old)
    return len(remap)


def _join_meshes(context, meshes, name):
    """Join a list of mesh objects into the first one. Returns the survivor, or None."""
    meshes = [m for m in meshes if m and m.name in context.view_layer.objects]
    if len(meshes) < 2:
        return meshes[0] if meshes else None
    for o in context.view_layer.objects:
        o.select_set(False)
    for m in meshes:
        m.select_set(True)
    context.view_layer.objects.active = meshes[0]
    try:
        bpy.ops.object.join()
    except RuntimeError:
        return meshes[0]
    meshes[0].name = name
    return meshes[0]


# --------------------------------------------------------------------------------------------
# Ammo: one round model per j_ammo bone
# --------------------------------------------------------------------------------------------

# Parts whose colour-map alpha is a real transparency rather than CoD's usual metalness mask: the
# magazine window, glass, visors. This is matched on the NAME on purpose. The alpha of 1077 colour maps
# across these exports is mid-range - pouches, velcro, buckles, eyelashes - and reading that as opacity
# would make all of them see-through. Only 28 materials are named like a transparent part, so the name is
# the only safe signal.
TRANSPARENT_PART = re.compile(r"(^|_)(trans|glass|window|clear)(_|$)", re.I)
# a window's inner shell is named _int_; "int" is too common a word to act on by name alone, so it has to
# prove itself with an alpha that never reaches opaque
TRANSLUCENT_PART = re.compile(r"(^|_)int(_|$)", re.I)


def alpha_is_opacity(path):
    """True when a colour map's alpha is a translucency map rather than a metalness mask.

    A metalness mask is painted in hard 0 / 1 - a part is metal or it is not - so it reaches opaque
    somewhere. An alpha that tops out below that is describing how much light gets through.
    """
    px = sample_rgba(path)
    if px is None or px.shape[1] < 4:
        return False
    a = px[:, 3]
    return float(a.max()) < 0.95 and float(a.min()) > 0.01

AMMO_BONE = re.compile(r"^j_ammo[_]?(\d+)$", re.I)
AMMO_TAG = "tag_ammo"                       # the round model's own root
AMMO_MARK = "cod_ammo_round"                # so Clear Ammo knows what it put there
# the calibre sits in the magazine's material name: ..._mag_762n_v0, ..._mag_45acp_v0
AMMO_CALIBRE = re.compile(r"_mag_([a-z0-9]+?)(?:_(?:int|trans|ext|v\d+))*$", re.I)


def ammo_bones(rig):
    """The j_ammo bones of one magazine, in order, plus any chambered round.

    A rig carries bones for every magazine the animations use - the Golf28 has 20 on j_mag1, 20 on j_mag2
    and 1 on tag_mag_attach - so filling them all would stack two magazines in the same place. The biggest
    group is the magazine in the gun; anything parented outside the mag bones is a chambered round.
    """
    groups = {}
    for b in rig.data.bones:
        m = AMMO_BONE.match(b.name)
        if m:
            groups.setdefault(b.parent.name if b.parent else "", []).append((int(m.group(1)), b.name))
    if not groups:
        return []
    mags = {k: v for k, v in groups.items() if k.lower().startswith("j_mag")}
    pick = max(mags.values(), key=len) if mags else max(groups.values(), key=len)
    loose = [x for k, v in groups.items() if k not in {kk for kk, vv in mags.items() if vv is pick}
             and not k.lower().startswith("j_mag") for x in v]
    return [name for _n, name in sorted(pick + loose)]


def ammo_calibre(context, rig):
    """The calibre token off the magazine's material, e.g. '762n' or '45acp'. '' when nothing says."""
    meshes = [o for o in context.view_layer.objects if o.type == 'MESH' and o.find_armature() is rig]
    for o in meshes + list(context.view_layer.objects):
        for sl in getattr(o, "material_slots", ()):
            if sl.material is None:
                continue
            stem = re.sub(r"\.\d{3}$", "", sl.material.name).split("/")[-1].lower()
            m = AMMO_CALIBRE.search(stem)
            if m:
                return m.group(1)
    return ""


def find_ammo_model(settings, calibre):
    """An unspent round model for this calibre under the Models Folder, or the closest thing to one."""
    root = bpy.path.abspath(settings.search_folder or "")
    if not root or not os.path.isdir(root):
        return ""
    folders = [d.path for d in os.scandir(root) if d.is_dir() and "ammo" in d.name.lower()]
    def pick(names):
        for d in names:
            for ext in ("*_LOD0.cast", "*.cast", "*_LOD0.fbx", "*.fbx"):
                hits = sorted(glob.glob(os.path.join(d, ext)))
                if hits:
                    return hits[0]
        return ""
    if calibre:
        exact = [d for d in folders if calibre in os.path.basename(d).lower()
                 and "unspent" in os.path.basename(d).lower()]
        got = pick(exact) or pick([d for d in folders if calibre in os.path.basename(d).lower()])
        if got:
            return got
    return pick([d for d in folders if "unspent" in os.path.basename(d).lower()]) or pick(folders)


def _ammo_source(context, settings, rig):
    """(mesh object, world matrix of its tag_ammo) for the round to place, importing it if need be."""
    calibre = ammo_calibre(context, rig)

    def from_objects(objs):
        meshes = [o for o in objs if o.type == 'MESH']
        if not meshes:
            return None
        arm = next((o for o in objs if o.type == 'ARMATURE'), None)
        tag = None
        if arm is not None and AMMO_TAG in arm.data.bones:
            tag = arm.matrix_world @ arm.data.bones[AMMO_TAG].matrix_local
        return max(meshes, key=lambda o: len(o.data.vertices)), tag

    # already in the scene?
    here = [o for o in context.view_layer.objects
            if "ammo" in o.name.lower() and not o.get(AMMO_MARK)]
    if calibre:
        tagged = [o for o in here if calibre in o.name.lower()]
        here = tagged or here
    got = from_objects(here)
    if got is not None:
        return got[0], got[1], calibre, False

    path = bpy.path.abspath(settings.ammo_model or "") or find_ammo_model(settings, calibre)
    if not path or not fs_exists(path):
        return None, None, calibre, False
    before = set(bpy.data.objects)
    try:
        if path.lower().endswith(".cast"):
            bpy.ops.import_scene.cast(filepath=path)
        else:
            bpy.ops.import_scene.fbx(filepath=path)
    except RuntimeError:
        return None, None, calibre, False
    new = [o for o in bpy.data.objects if o not in before]
    got = from_objects(new)
    if got is None:
        return None, None, calibre, False
    shade_materials([sl.material for o in new if o.type == 'MESH' for sl in o.material_slots if sl.material],
                    settings, lambda lvl, msg: None, model_dirs=[os.path.dirname(path)])
    return got[0], got[1], calibre, True


AMMO_FULL_NOTE = "show_full_magazine"      # the game's own notetrack: the new magazine's rounds appear here


def _strip_scene_frame(strip, action_frame):
    return strip.frame_start + (action_frame - strip.action_frame_start) * strip.scale


def update_ammo_visibility(rig):
    """Key the loaded rounds' visibility from the clips on the rig, the way the game shows its ammo.

    Every reload_empty carries a show_full_magazine notetrack (Golf28 frame 25, Spier9 54): until it the magazine
    in the gun is empty, from it on it is full. A fire_last empties the gun after its shot, and an _empty clip
    (inspect_empty) plays on an empty gun. A normal reload starts with rounds left, so it only ever shows them."""
    rounds = [o for o in bpy.data.objects if o.get(AMMO_MARK) and o.parent is rig]
    if not rounds:
        return 0
    events = []
    ad = rig.animation_data
    for tr in (ad.nla_tracks if ad else ()):
        for st in tr.strips:
            if st.action is None:
                continue
            stem = re.sub(r"\.\d{3}$", "", st.name).lower()
            if "additive" in stem:
                continue
            full = next((m.frame for m in st.action.pose_markers if m.name == AMMO_FULL_NOTE), None)
            full_at = _strip_scene_frame(st, full) if full is not None else st.frame_end
            if RELOAD_CLIP.search(stem):
                if EMPTY_CLIP.search(stem):
                    events.append((st.frame_start, False))
                events.append((full_at, True))
            elif FIRE_LAST_CLIP.search(stem):
                events.append((st.frame_start + 1, False))          # the last round leaves on the shot
            elif EMPTY_CLIP.search(stem):
                events.append((st.frame_start, False))
    events.sort(key=lambda e: e[0])
    for o in rounds:
        if o.animation_data is not None and o.animation_data.action is not None:
            act = o.animation_data.action
            o.animation_data.action = None
            if act.users == 0:
                bpy.data.actions.remove(act)
        o.hide_viewport = o.hide_render = False
        if not events:
            continue
        first = min(bpy.context.scene.frame_start, int(events[0][0]) - 1)
        for frame, shown in [(first, True)] + [(int(round(f)), s) for f, s in events]:
            o.hide_viewport = o.hide_render = not shown
            o.keyframe_insert("hide_viewport", frame=frame)
            o.keyframe_insert("hide_render", frame=frame)
        for fc in _action_fcurves(o.animation_data.action):
            for kp in fc.keyframe_points:
                kp.interpolation = 'CONSTANT'
    return len(events)


class COD_OT_add_ammo(bpy.types.Operator):
    bl_idname = "cod.add_ammo"
    bl_label = "Add Ammo"
    bl_description = ("Put a round on every j_ammo bone of the selected weapon rig, so the magazine is "
                      "loaded. The round model is found by the magazine's calibre; the rounds are linked "
                      "copies of one mesh and follow the mag through a reload")
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        return _anim_target(context) is not None

    def execute(self, context):
        rig = _anim_target(context)
        if rig is None:
            self.report({'ERROR'}, "Select the weapon rig (armature) first")
            return {'CANCELLED'}
        bones = ammo_bones(rig)
        if not bones:
            self.report({'ERROR'}, "That rig has no j_ammo bones - nothing to load")
            return {'CANCELLED'}
        settings = context.scene.cod_autoshader
        wanted = settings.ammo_rounds or len(bones)
        bones = bones[:wanted]

        src, tag, calibre, imported = _ammo_source(context, settings, rig)
        if src is None:
            self.report({'ERROR'}, "No ammo model found%s - set Ammo Model, or the Models Folder"
                        % (" for calibre '%s'" % calibre if calibre else ""))
            return {'CANCELLED'}
        # the round sits relative to its own tag_ammo; with no tag, its own origin is the reference
        rel = (tag.inverted() @ src.matrix_world) if tag is not None else Matrix.Identity(4)

        coll = src.users_collection[0] if src.users_collection else context.scene.collection
        context.view_layer.update()        # so the pose matrices below are current
        made = 0
        for name in bones:
            bone = rig.data.bones.get(name)
            if bone is None:
                continue
            ob = bpy.data.objects.new("%s_%s" % (src.data.name.split('.')[0][:24], name), src.data)
            ob[AMMO_MARK] = True
            coll.objects.link(ob)
            ob.parent = rig
            ob.parent_type = 'BONE'
            ob.parent_bone = name
            ob.matrix_parent_inverse = Matrix.Identity(4)
            # the posed matrix, not the rest one: a viewmodel rig is nearly always holding a pose, and the
            # rest magazine can sit a long way from where the gun actually is
            pb = rig.pose.bones.get(name)
            ob.matrix_world = (rig.matrix_world @ (pb.matrix if pb is not None else bone.matrix_local)) @ rel
            made += 1
        if imported:
            src.hide_set(True)
            src.hide_render = True
        update_ammo_visibility(rig)                  # clips already on the rig decide when the mag is empty
        self.report({'INFO'}, "CoD AutoShader: loaded %d round(s)%s" %
                    (made, " of %s" % calibre if calibre else ""))
        return {'FINISHED'}


class COD_OT_clear_ammo(bpy.types.Operator):
    bl_idname = "cod.clear_ammo"
    bl_label = "Clear Ammo"
    bl_description = "Remove the rounds Add Ammo placed"
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        gone = [o for o in bpy.data.objects if o.get(AMMO_MARK)]
        for o in gone:
            bpy.data.objects.remove(o, do_unlink=True)
        self.report({'INFO'}, "CoD AutoShader: removed %d round(s)" % len(gone))
        return {'FINISHED'}


# --------------------------------------------------------------------------------------------
# Pick Skins: the exported skins as cards, with the game's operator icons
# --------------------------------------------------------------------------------------------

SKIN_PART_WORDS = {"body", "head", "headgear", "hair", "torso", "legs", "lowerbody", "upperbody", "fullbody",
                   "arms", "hands", "vm", "viewhands", "viewarms", "viewbody", "viewlegs"}
SKIN_FIRST_PERSON = {"vm", "viewhands", "viewarms", "viewbody", "viewlegs", "arms", "hands"}
SKIN_TAG_WORDS = {"c", "mp", "sp", "pl", "lod0", "lod1", "lod2", "high", "low", "fe", "base", "nohair",
                  "rex", "sat", "jup", "iw9", "iw8", "t9", "t10", "s4", "s2", "iw7", "s1"}
ICON_TAG_WORDS = {"ui", "icon", "op", "sm", "lg", "md", "rex", "sat", "jup", "iw9", "iw8", "t9", "t10", "s4", "s2",
                  "iw7", "s1", "operator", "portrait"}
_skin_previews = None


def skin_of(folder_name):
    """(skin key, part word) for a character part's folder, or (None, None) for anything else."""
    low = folder_name.lower()
    if low.startswith("att_") or WEAPON_NAME.search(low):
        return None, None
    words = low.split("_")
    part = next((w for w in words if w in SKIN_PART_WORDS), None)
    if part is None:
        return None, None
    key = [w for w in words if w not in SKIN_PART_WORDS and w not in SKIN_TAG_WORDS]
    return ("_".join(key) if any(not w.isdigit() for w in key) else None), part


def scan_skins(models_root):
    """{skin key: {"parts": [(part word, cast path)], "name": readable}} for every character skin exported."""
    skins = {}
    try:
        folders = [e for e in os.scandir(models_root) if e.is_dir()]
    except OSError:
        return {}
    for e in folders:
        key, part = skin_of(e.name)
        if not key:
            continue
        hits = sorted(glob.glob(os.path.join(e.path, "*_LOD0.cast"))) or sorted(glob.glob(os.path.join(e.path, "*.cast")))
        if not hits:
            continue
        skins.setdefault(key, {"parts": []})["parts"].append((part, hits[0], e.name))
    # a part whose key is a subset of exactly one other skin's (hero_jae_dirty vs hero_jae_1_1_dirty) belongs to it
    for k in sorted(skins, key=len):
        ws = set(k.split("_"))
        supers = [o for o in skins if o != k and ws < set(o.split("_"))]
        if len(supers) == 1:
            skins[supers[0]]["parts"] += skins.pop(k)["parts"]
    for k, v in skins.items():
        v["name"] = k.replace("_", " ").title()
    return skins


def find_skin_icons(models_root):
    """[(icon words, path)] for every operator UI icon the export holds, beside the Models folder."""
    root = os.path.dirname(os.path.normpath(models_root))
    icons = []
    for folder in (os.path.join(root, d) for d in os.listdir(root) if d.lower() in ("images", "ui", "icons")) \
            if os.path.isdir(root) else ():
        for p in glob.glob(os.path.join(folder, "**", "*.*"), recursive=True):
            stem, ext = os.path.splitext(os.path.basename(p))
            low = stem.lower()
            if ext.lower() not in (".png", ".tga", ".jpg", ".jpeg", ".dds") or "icon" not in low or "emote" in low:
                continue
            words = [w for w in low.split("_") if w not in ICON_TAG_WORDS]
            if words:
                icons.append((words, p))
    return icons


def icon_for_skin(key, icons):
    """The icon whose words all appear in the skin's (in order of the most words matched), or ''."""
    have = key.split("_")
    best, best_n = "", 0
    for words, path in icons:
        pool = list(have)
        ok = True
        for w in words:
            if w in pool:
                pool.remove(w)
            else:
                ok = False
                break
        if ok and len(words) > best_n and any(not w.isdigit() for w in words):
            best, best_n = path, len(words)
    return best


def _skin_icon_id(path):
    global _skin_previews
    if not path:
        return 0
    if _skin_previews is None:
        _skin_previews = bpy.utils.previews.new()
    if path not in _skin_previews:
        try:
            _skin_previews.load(path, path, 'IMAGE')
        except (RuntimeError, KeyError):
            return 0
    return _skin_previews[path].icon_id


def stand_character(objs, gap_x=0.0):
    """Stand an imported character up, at scene scale, feet on the floor at (gap_x, 0, 0), facing the front view.

    Cast has no import axis or scale: MW4 characters arrive lying along +X (tag_origin at the feet, j_head 160-odd
    units away) in game centimetres. Up and left are read off the skeleton itself - tag_origin (or the ankles) to
    j_head, right shoulder to left - so it works whichever way an export lies. Returns the width after placing."""
    rigs = [o for o in objs if o.type == 'ARMATURE']
    rig = next((r for r in rigs if "j_head" in r.pose.bones and "j_shoulder_le" in r.pose.bones), None)
    if rig is None:
        return 0.0
    pb, mw = rig.pose.bones, rig.matrix_world
    head = mw @ pb["j_head"].head
    if "tag_origin" in pb:
        base = mw @ pb["tag_origin"].head
    elif "j_ankle_le" in pb and "j_ankle_ri" in pb:
        base = (mw @ pb["j_ankle_le"].head + mw @ pb["j_ankle_ri"].head) / 2
    else:
        base = mw @ (pb["j_mainroot"].head if "j_mainroot" in pb else rig.data.bones[0].head_local)
    up = head - base
    height = up.length
    if height < 1e-6:
        return 0.0
    up.normalize()
    left = (mw @ pb["j_shoulder_le"].head) - (mw @ pb["j_shoulder_ri"].head)
    left = (left - up * left.dot(up)).normalized()
    src = Matrix((left, left.cross(up), up)).transposed()           # character's left, front, up
    dst = Matrix(((1.0, 0.0, 0.0), (0.0, -1.0, 0.0), (0.0, 0.0, 1.0))).transposed()   # +X, facing -Y, +Z
    rot = (dst @ src.inverted()).to_4x4()
    scale = 0.01 if height > 20.0 else 1.0                          # game centimetres -> metres
    m = Matrix.Translation(Vector((gap_x, 0.0, 0.0))) @ Matrix.Scale(scale, 4) @ rot @ Matrix.Translation(-base)
    roots = [o for o in objs if o.parent is None]
    for o in roots:
        o.matrix_world = m @ o.matrix_world
    bpy.context.view_layer.update()
    pts = [o.matrix_world @ Vector(cn) for o in objs if o.type == 'MESH' for cn in o.bound_box]
    if pts:
        lift = -min(p.z for p in pts)                               # feet on the floor
        for o in roots:
            o.location.z += lift
        return max(p.x for p in pts) - min(p.x for p in pts)
    return 0.0


class CoDSkinItem(bpy.types.PropertyGroup):
    key: StringProperty()
    label: StringProperty()
    icon: StringProperty()
    parts: StringProperty()            # '|'-joined part files
    part_names: StringProperty()
    use: BoolProperty(name="Import", default=False)


class COD_OT_pick_skins(bpy.types.Operator):
    bl_idname = "cod.pick_skins"
    bl_label = "Pick Skins"
    bl_description = ("Show every skin exported to the Models Folder as a card with its in-game icon; tick the "
                      "ones to bring in and each is imported, merged into one character and shaded")
    bl_options = {'REGISTER', 'UNDO'}

    skins: CollectionProperty(type=CoDSkinItem)
    first_person: BoolProperty(name="Include First-Person Arms", default=False,
                               description="Also merge the skin's viewmodel arms (vm_ / viewhands) into it - "
                                           "they are a separate first-person copy and land on top of the body")
    shade: BoolProperty(name="Shade", default=True)
    stand: BoolProperty(name="Stand Up at Scene Scale", default=True,
                        description="Stand each character upright facing the front view, at 0.01 scale (the game "
                                    "works in centimetres), feet on the floor at the origin - several skins side "
                                    "by side")

    def invoke(self, context, event):
        root = bpy.path.abspath(context.scene.cod_autoshader.search_folder or "")
        if not root or not os.path.isdir(root):
            self.report({'ERROR'}, "Set the Models Folder first (top of the CoD panel)")
            return {'CANCELLED'}
        found = scan_skins(root)
        if not found:
            self.report({'WARNING'}, "No character skins in that Models Folder")
            return {'CANCELLED'}
        icons = find_skin_icons(root)
        self.skins.clear()
        for key in sorted(found):
            v = found[key]
            item = self.skins.add()
            item.key, item.label = key, v["name"]
            item.icon = icon_for_skin(key, icons)
            order = {"body": 0, "torso": 0, "fullbody": 0, "head": 1, "headgear": 2, "hair": 3}
            parts = sorted(v["parts"], key=lambda q: order.get(q[0], 9))
            item.parts = "|".join(p for _w, p, _n in parts)
            item.part_names = ", ".join(sorted({w for w, _p, _n in parts}))
        return context.window_manager.invoke_props_dialog(self, width=760, confirm_text="Import Selected")

    def draw(self, context):
        layout = self.layout
        n = sum(1 for s in self.skins if s.use)
        layout.label(text="%d skin(s) exported - %d selected" % (len(self.skins), n), icon='COMMUNITY')
        grid = layout.grid_flow(row_major=True, columns=4, even_columns=True, even_rows=False, align=False)
        for s in self.skins:
            box = grid.box()
            icon = _skin_icon_id(s.icon)
            if icon:
                box.template_icon(icon_value=icon, scale=6.0)
            else:
                box.label(text="(no icon exported)", icon='USER')
            box.label(text=s.label)
            row = box.row()
            row.prop(s, "use", text="Import", toggle=True, icon='CHECKBOX_HLT' if s.use else 'CHECKBOX_DEHLT')
            box.label(text=s.part_names)
        layout.separator()
        row = layout.row()
        row.prop(self, "first_person")
        row.prop(self, "stand")
        row.prop(self, "shade")

    def execute(self, context):
        chosen = [s for s in self.skins if s.use]
        if not chosen:
            self.report({'WARNING'}, "No skin ticked")
            return {'CANCELLED'}
        done, offset = 0, 0.0
        for s in chosen:
            paths = [p for p in s.parts.split("|") if p and
                     (self.first_person or not any(w in SKIN_FIRST_PERSON
                                                    for w in os.path.basename(os.path.dirname(p)).lower().split("_")))]
            if not paths:
                continue
            before = set(bpy.data.objects)
            res = bpy.ops.cod.merge_parts(part_paths="|".join(paths), shade=self.shade, skip_viewmodel=not self.first_person)
            new = [o for o in bpy.data.objects if o not in before]
            if 'FINISHED' not in res or not new:
                continue
            width = stand_character(new, offset) if self.stand else 0.0
            if not width:
                roots = [o for o in new if o.parent is None]
                pts = [o.matrix_world @ Vector(c) for o in new if o.type == 'MESH' for c in o.bound_box]
                width = (max(p.x for p in pts) - min(p.x for p in pts)) if pts else 1.0
                for o in roots:
                    o.location.x += offset
            offset += width * 1.4
            done += 1
        self.report({'INFO'}, "CoD AutoShader: imported %d skin(s)" % done)
        return {'FINISHED'} if done else {'CANCELLED'}


class COD_OT_merge_parts(bpy.types.Operator, ImportHelper):
    bl_idname = "cod.merge_parts"
    bl_label = "Merge Parts"
    bl_description = ("Import several part files of one character (head, torso, arms, lowerbody) and "
                      "assemble them: each part is lined up on the first one by a bone they share, their "
                      "armatures are parented into one rig and duplicate textures are collapsed. "
                      "Select the parts' .fbx or .cast files")
    bl_options = {'REGISTER', 'UNDO'}

    filename_ext = ".fbx"
    filter_glob: StringProperty(default="*.fbx;*.cast", options={'HIDDEN'})
    files: CollectionProperty(type=bpy.types.OperatorFileListElement, options={'HIDDEN', 'SKIP_SAVE'})
    directory: StringProperty(subtype='DIR_PATH', options={'HIDDEN', 'SKIP_SAVE'})

    align: BoolProperty(
        name="Line Parts Up", default=True,
        description="Move each part onto the first one using a bone they share. Exports ship some parts "
                    "unplaced - they arrive crumpled at the origin - and this is what puts them right")
    one_rig: BoolProperty(
        name="One Rig", default=True,
        description="Parent every part's armature to the first one, so the whole character moves, poses "
                    "and animates as a single rig. Each part keeps its own skeleton underneath, because "
                    "the parts are bound to different rest poses and re-binding them would deform them")
    find_parts: BoolProperty(
        name="Find the Other Parts", default=True,
        description="Each part sits in its own folder, so they cannot all be picked at once. Choose any "
                    "one of them and the rest are found in the neighbouring folders that share its name")
    skip_viewmodel: BoolProperty(
        name="Skip Viewmodel Parts", default=True,
        description="Leave out viewbody / viewarms / viewlegs: they are the first-person copies of the same "
                    "character and land on top of the body")
    dedupe: BoolProperty(
        name="Merge Duplicate Textures", default=True,
        description="Each part re-imports the textures it shares with the others; this points them all at "
                    "one copy")
    join_meshes: EnumProperty(
        name="Join Meshes",
        items=(('NONE', "Keep Separate", "Leave every mesh its own object"),
               ('PART', "One Per Part", "Join each part's meshes into a single object"),
               ('ALL', "One Object", "Join every mesh of every part into one object. Only sound when the "
                                     "parts share a skeleton - it binds them all to the first part's")),
        default='NONE')
    shade: BoolProperty(
        name="Shade After Merging", default=False,
        description="Run the CoD shader on the merged character once it is assembled")
    part_paths: StringProperty(options={'HIDDEN', 'SKIP_SAVE'})      # from Pick Skins: '|'-joined part files

    def draw(self, context):
        layout = self.layout
        layout.use_property_split = True
        col = layout.column(align=True)
        col.prop(self, "find_parts")
        col.prop(self, "align")
        col.prop(self, "one_rig")
        col.prop(self, "skip_viewmodel")
        layout.separator()
        col = layout.column(align=True)
        col.prop(self, "join_meshes")
        col.prop(self, "dedupe")
        layout.separator()
        layout.prop(self, "shade")

    def execute(self, context):
        chosen = [os.path.join(self.directory, f.name) for f in self.files if f.name] or [self.filepath]
        if self.part_paths:
            # handed a whole skin by Pick Skins: its parts sit in different folders, already grouped
            chosen = [p for p in self.part_paths.split("|") if p]
            self.find_parts = False
        # A gun is not merged the way a body is: its parts hang off tag bones (tag_mag_attach and friends)
        # and Import Viewmodel already knows how to hook them up. Measured on the MW4 hotel45 pistol, that
        # path assembles to a 29.2-unit diagonal while merging by shared bones gives 34.8 - parts in the
        # wrong places - so hand weapons over instead of producing a subtly wrong gun.
        if all(WEAPON_NAME.search(os.path.basename(os.path.dirname(p)).lower()) for p in chosen):
            self.report({'INFO'}, "CoD AutoShader: that is a weapon - using Import Viewmodel, which "
                                  "attaches its parts to their tag bones")
            return bpy.ops.cod.import_vm(filepath=chosen[0], find_parts=self.find_parts)
        if self.find_parts:
            widened = []
            for p in chosen:
                for q in _merge_part_paths(p):
                    if os.path.normcase(q) not in {os.path.normcase(x) for x in widened}:
                        widened.append(q)
            chosen = widened
        paths = [p for p in chosen
                 if not (self.skip_viewmodel and VIEWMODEL_PART.search(os.path.basename(p).lower()))]
        if not paths:
            self.report({'ERROR'}, "Nothing to merge (every file picked looks like a viewmodel part)")
            return {'CANCELLED'}
        if any(p.lower().endswith(".cast") for p in paths) and not _cast_importer_ready():
            self.report({'ERROR'}, "Cast importer (io_scene_cast) is not enabled")
            return {'CANCELLED'}

        parts, failed = [], []
        for p in sorted(paths):
            before = set(bpy.data.objects)
            try:
                if p.lower().endswith(".cast"):
                    bpy.ops.import_scene.cast(filepath=p)
                else:
                    bpy.ops.import_scene.fbx(filepath=p)
            except RuntimeError as e:
                failed.append("%s (%s)" % (os.path.basename(p), e))
                continue
            new = [o for o in bpy.data.objects if o not in before]
            arm = _part_armature(new)
            if arm is None:
                failed.append("%s (no armature)" % os.path.basename(p))
                continue
            arm.name = os.path.splitext(os.path.basename(p))[0]
            parts.append((arm, [o for o in new if o.type == 'MESH'], os.path.basename(p)))
        if not parts:
            self.report({'ERROR'}, "Nothing imported: " + "; ".join(failed[:3]))
            return {'CANCELLED'}

        host, host_meshes, host_name = max(parts, key=lambda q: len(q[0].data.bones))
        lined = []
        if self.align:
            for arm, meshes, name in parts:
                if arm is host:
                    continue
                bone = _align_part(host, host_meshes, arm, meshes)
                lined.append("%s on %s" % (name.split(".")[0][-18:], bone) if bone
                             else "%s (no shared bone)" % name.split(".")[0][-18:])
        if self.one_rig:
            for arm, _meshes, _name in parts:
                if arm is not host:
                    arm.parent = host
                    arm.matrix_parent_inverse = host.matrix_world.inverted()

        if self.join_meshes == 'PART':
            for arm, meshes, name in parts:
                _join_meshes(context, meshes, os.path.splitext(name)[0])
        elif self.join_meshes == 'ALL':
            _join_meshes(context, [m for _a, ms, _n in parts for m in ms],
                         os.path.splitext(host_name)[0].replace("_LOD0", ""))

        if self.shade:
            settings = context.scene.cod_autoshader
            mats = {s.material for _a, ms, _n in parts for m in ms for s in m.material_slots if s.material}
            shade_materials(sorted(mats, key=lambda m: m.name), settings, self.report,
                            model_dirs=sorted({os.path.dirname(p) for p in paths}))
        # after shading, not before: the shader loads its own textures, and deduping first left those
        # as fresh duplicates
        merged_images = _dedupe_images() if self.dedupe else 0

        for o in context.view_layer.objects:
            o.select_set(False)
        host.select_set(True)
        context.view_layer.objects.active = host

        bits = ["%d parts" % len(parts)]
        if lined:
            bits.append("lined up: " + ", ".join(lined))
        if merged_images:
            bits.append("%d duplicate textures merged" % merged_images)
        if failed:
            bits.append("%d failed" % len(failed))
        self.report({'WARNING'} if failed else {'INFO'}, "CoD AutoShader: merged " + "; ".join(bits))
        if failed:
            for f in failed[:3]:
                self.report({'WARNING'}, "CoD AutoShader: " + f)
        return {'FINISHED'}


# --------------------------------------------------------------------------------------------
# Anim sounds: notetrack -> soundbank alias -> sound file -> sequencer strip
# --------------------------------------------------------------------------------------------

SOUND_NOTE = re.compile(r"^(?:audio\w*|snd\w*|sound\w*)[@#](.+)$", re.I)
SOUND_MARK = "cod_anim_sound"
SOUND_EXTS = (".wav", ".flac", ".ogg", ".mp3")
_SOUND_CACHE = {}


def _sound_stem(name):
    """The part of a sound's name every export agrees on: its basename up to the first dot.
    rex/wpn/.../wfoly_plr_dm_golf28_inspect_start.lnn.85.48000.all -> wfoly_plr_dm_golf28_inspect_start"""
    return os.path.basename(name.replace("\\", "/")).split(".")[0].lower()


def _tree_stamp(path):
    """Newest modified time of a folder and its direct subfolders - new files land in SoundBanks/json or
    Sounds/..., which changes their time, not the parent's."""
    stamp = os.path.getmtime(path)
    try:
        for e in os.scandir(path):
            if e.is_dir():
                stamp = max(stamp, e.stat().st_mtime)
    except OSError:
        pass
    return stamp


def _sound_root(start):
    """The export's game folder - the one holding SoundBanks - walking up from a file or folder in it."""
    d = start if os.path.isdir(start) else os.path.dirname(start)
    for _ in range(5):
        if not d:
            break
        try:
            names = {e.name.lower(): e.path for e in os.scandir(d) if e.is_dir()}
        except OSError:
            names = {}
        if "soundbanks" in names:
            return d, names
        up = os.path.dirname(d)
        if up == d:
            break
        d = up
    return "", {}


def _sound_banks(root, folders, fresh=False):
    """alias -> [sound file names, one per take], from every bank in the export. Read once and cached."""
    banks = folders.get("soundbanks", "")
    key = ("banks", banks)
    try:
        stamp = _tree_stamp(banks)
    except OSError:
        return {}
    if not fresh and key in _SOUND_CACHE and _SOUND_CACHE[key][0] == stamp:
        return _SOUND_CACHE[key][1]
    found = {}
    files = sorted(glob.glob(os.path.join(banks, "**", "*.json"), recursive=True))
    # a player bank before an npc one: a viewmodel clip wants the first-person mix
    files.sort(key=lambda p: (0 if "_plr" in os.path.basename(p).lower() else 1, p))
    for path in files:
        try:
            with open(path, encoding="utf-8") as fh:
                rows = json.load(fh)
        except (OSError, ValueError):
            continue
        for row in rows if isinstance(rows, list) else ():
            if not isinstance(row, dict):
                continue
            alias, snd = (row.get("alias") or ""), (row.get("snd") or "")
            if alias and snd:
                takes = found.setdefault(alias.lower(), [])
                if snd not in takes:
                    takes.append(snd)
    if not found:                                   # an export with only the CSV form
        for path in sorted(glob.glob(os.path.join(banks, "**", "*.csv"), recursive=True)):
            try:
                with open(path, encoding="utf-8") as fh:
                    lines = fh.read().splitlines()[1:]
            except OSError:
                continue
            for line in lines:
                parts = line.split(",")
                if len(parts) >= 3 and parts[0] and parts[-1]:
                    takes = found.setdefault(parts[0].lower(), [])
                    if parts[-1] not in takes:
                        takes.append(parts[-1])
    _SOUND_CACHE[key] = (stamp, found)
    return found


def _sound_files(folder, fresh=False):
    """stem -> path for every sound file under a folder. Cached - a folder's time only changes when files land
    directly in it, not in a subfolder, so a miss re-reads it once (see sound_lookup)."""
    key = ("files", folder)
    try:
        stamp = _tree_stamp(folder)
    except OSError:
        return {}
    if not fresh and key in _SOUND_CACHE and _SOUND_CACHE[key][0] == stamp:
        return _SOUND_CACHE[key][1]
    found = {}
    for d, _subs, names in os.walk(folder):
        for n in names:
            if n.lower().endswith(SOUND_EXTS):
                found.setdefault(_sound_stem(n), os.path.join(d, n))
    _SOUND_CACHE[key] = (stamp, found)
    return found


SOUND_EVENT_ORDER = ("start", "grab", "lift", "tilt", "rotate", "open", "boltopen", "boltgrab", "back", "pull", "out",
                     "magout", "eject", "rattle", "drop", "look", "in", "magin", "seat", "hit", "maghit", "slap",
                     "release", "forward", "fwd", "close", "boltclose", "charge", "rack", "up", "settle", "shoulder", "end")


# "up" sits after the bolt work: the Kilo2 raise_first pulls its charging handle (j_bolt moves frames 17-25, covered by the
# 0.62 s charge sound from cue 02 at frame 12) and only then brings the gun up as the hand returns (cue 03, frame 30)
def _event_rank(name):
    word = name.split("_")[0]
    return SOUND_EVENT_ORDER.index(word) if word in SOUND_EVENT_ORDER else SOUND_EVENT_ORDER.index("end") - 1


def sound_lookup(settings, start):
    """(alias -> sound file path or '', banks found?, sounds folder) for the export `start` is in."""
    root, folders = _sound_root(start) if start else ("", {})
    banks = _sound_banks(root, folders) if root else {}
    folder = bpy.path.abspath(settings.sound_folder or "")
    if folder and os.path.isdir(folder):
        # pointed at the export itself: its Sounds folder, not every model texture under it
        try:
            inner = {e.name.lower(): e.path for e in os.scandir(folder) if e.is_dir()}
        except OSError:
            inner = {}
        folder = next((inner[k] for k in ("sounds", "sound", "audio") if k in inner), folder)
    else:
        folder = next((folders[k] for k in ("sounds", "sound", "audio") if k in folders), "")
    files = _sound_files(folder) if folder else {}
    state = {"banks": banks, "files": files, "fresh": False}

    def refresh():
        """Once per lookup: the export may have grown since it was read (more sounds exported meanwhile)."""
        if state["fresh"]:
            return False
        state["fresh"] = True
        if root:
            state["banks"] = _sound_banks(root, folders, fresh=True)
            find.banks = state["banks"]
        if folder:
            state["files"] = _sound_files(folder, fresh=True)
        return True

    def by_event(alias):
        """A numbered cue whose bank was not exported (raise_first: wfoly_rex_plr_sm_spier9_raise_first_01..04)
        still has its sounds exported, named by event (..._raise_first_start / boltopen / boltclose / end). The
        Nth cue is the Nth of those in the order the motion happens."""
        m = re.match(r"wfoly_rex_(plr|npc)_(.+)_(\d+)$", alias.lower())
        if not m:
            return ""
        events = []
        for prefix in ("wfoly_plr_%s_" % m.group(2), "rex_vm_%s_" % m.group(2), "sat_vm_%s_" % m.group(2),
                       "jup_vm_%s_" % m.group(2), "iw9_vm_%s_" % m.group(2)):
            events = [(stem[len(prefix):], path) for stem, path in state["files"].items()
                      if stem.startswith(prefix) and re.match(r"^[a-z]+(_\d+)?$", stem[len(prefix):])]
            if events:
                break
        if not events:
            return ""
        events.sort(key=lambda e: (_event_rank(e[0]), e[0]))
        i = int(m.group(3)) - 1
        return events[i][1] if 0 <= i < len(events) else ""

    def find(alias, pick=0, aimed=None):
        """The file for one take of an alias - the game picks a take per play, so `pick` varies it. A bank
        lists hip and aimed takes (..._mech_02, ..._mech_ads_06) under one alias; `aimed` keeps to the
        right ones where both exist."""
        for _attempt in (0, 1):
            banks, files = state["banks"], state["files"]
            takes = banks.get(alias.lower())
            if not takes:
                have = [files.get(_sound_stem(alias), "")]
            else:
                have = [f for f in (files.get(_sound_stem(s), "") for s in takes) if f]
            have = [f for f in have if f]
            if not have and not takes:
                have = [by_event(alias)] if by_event(alias) else []
            if have:
                if aimed is not None:
                    have = [f for f in have if ("_ads_" in os.path.basename(f).lower()) == aimed] or have
                return have[pick % len(have)]
            if not refresh():
                break
        return ""
    find.banks = banks
    return find, bool(banks), folder


FIRE_LAYERS = ("shot", "mech", "lfe", "swt", "atmo")


def fire_sound_aliases(stem, banks):
    """The gunshot's layers for a fire clip, as bank aliases - the engine plays these, no notetrack does.
    The last round uses its own shot / mech / sweetener where the bank has them."""
    if not FIRE_CLIP.search(stem):
        return []
    m = re.search(r"_vm_[a-z]{2}_([a-z0-9]+)_", stem)
    if not m:
        return []
    gun, last = m.group(1), bool(FIRE_LAST_CLIP.search(stem))
    out = []
    for layer in FIRE_LAYERS:
        names = ["last_" + layer, layer] if last and layer in ("shot", "mech", "swt") else [layer]
        for name in names:
            alias = next((a for a in ("weap_rex_%s_fire_plr_%s" % (gun, name), "weap_%s_fire_plr_%s" % (gun, name))
                          if a in banks), "")
            if alias:
                out.append(alias)
                break
    return out


def _sequencer_strips(scene):
    se = scene.sequence_editor or scene.sequence_editor_create()
    strips = getattr(se, "strips", None)
    return se, (strips if strips is not None else se.sequences)


def add_clip_sounds(context, strip, path, settings, report=None):
    """Put the sounds an NLA clip's notetracks call for on the timeline. Returns (added, missing)."""
    action = strip.action
    if action is None:
        return 0, 0
    cues = []
    for m in action.pose_markers:
        hit = SOUND_NOTE.match(m.name)
        if hit:
            cues.append((m.frame, hit.group(1)))
    stem = os.path.splitext(os.path.basename(path or ""))[0].lower() or action.name.lower()
    shot = FIRE_CLIP.search(stem) is not None
    if not cues and not shot:
        return 0, 0
    find, have_banks, folder = sound_lookup(settings, path)
    # the gunshot itself: no notetrack calls for it, the engine plays it on the shot
    cues += [(strip.action_frame_start, a) for a in fire_sound_aliases(stem, find.banks)]
    owner = strip.id_data
    aimed = stem.endswith("_ads") or (isinstance(owner, bpy.types.Object) and owner.type == 'ARMATURE'
                                      and _ads_up_at(owner, strip.frame_start))
    if not cues:
        return 0, 0
    scene = context.scene
    _se, strips = _sequencer_strips(scene)
    # our own channels go above anything the user already has in the sequencer
    theirs = [s.channel for s in strips if not s.get(SOUND_MARK)]
    base = (max(theirs) + 1) if theirs else 1
    ends = {}
    for s in strips:
        if s.get(SOUND_MARK):
            ends[s.channel] = max(ends.get(s.channel, -10 ** 9), s.frame_final_end)
    added, missing = 0, []
    for frame, alias in sorted(cues):
        at = int(round(strip.frame_start + (frame - strip.action_frame_start) * strip.scale))
        f = find(alias, pick=at, aimed=aimed)
        if not f:
            missing.append(alias)
            continue
        ch = base
        while ends.get(ch, -10 ** 9) > at and ch < 128:
            ch += 1
        try:
            snd = strips.new_sound(alias[:60], f, ch, at)
        except (RuntimeError, TypeError):
            missing.append(alias)
            continue
        snd[SOUND_MARK] = True
        ends[ch] = snd.frame_final_end
        added += 1
    if added:
        scene.sync_mode = 'AUDIO_SYNC'          # so the viewport keeps the picture with the sound
    if report is not None and (added or missing):
        msg = "CoD AutoShader: %d sound(s) for %s" % (added, action.name)
        if missing:
            gun = gun_sounds_missing(path, settings)
            why = ("no Sounds folder found" if not folder else
                   "no SoundBanks found" if not have_banks else
                   "none of %s's sounds were exported - export them from Saluki into Sounds" % gun if gun else
                   "not in the Sounds folder")
            msg += ", %d missing (%s)" % (len(missing), why)
        report({'INFO'} if added else {'WARNING'}, msg)
    return added, len(missing)


def gun_sounds_missing(path, settings):
    """The weapon token ('ar_kilo2') when the export holds none of that gun's audio at all, else ''."""
    m = re.search(r"_vm_([a-z]{2})_([a-z0-9]+)_", os.path.basename(path or "").lower())
    if not m:
        return ""
    _find, _banks, folder = sound_lookup(settings, path)
    if not folder:
        return ""
    files = _sound_files(folder)
    token = "_%s_%s_" % (m.group(1), m.group(2))
    gun = "_%s_" % m.group(2)
    if any(token in "_" + k + "_" or gun in "_" + k + "_" for k in files):
        return ""
    return "%s_%s" % (m.group(1), m.group(2))


def clear_anim_sounds(scene):
    if scene.sequence_editor is None:
        return 0
    _se, strips = _sequencer_strips(scene)
    gone = [s for s in strips if s.get(SOUND_MARK)]
    for s in gone:
        strips.remove(s)
    return len(gone)


class COD_OT_add_sounds(bpy.types.Operator):
    bl_idname = "cod.add_sounds"
    bl_label = "Add Sounds"
    bl_description = ("Put the game's sounds on the timeline for every clip on the selected rig, where the "
                      "animation's notetracks call for them. Needs the export's SoundBanks and Sounds folders")
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        return _anim_target(context) is not None

    def execute(self, context):
        rig = _anim_target(context)
        settings = context.scene.cod_autoshader
        clear_anim_sounds(context.scene)
        ad = rig.animation_data
        clips = [s for tr in (ad.nla_tracks if ad else ()) for s in tr.strips if s.action is not None]
        added = missing = 0
        unexported = []
        for s in clips:
            src = s.action.get("cod_source") or bpy.path.abspath(settings.search_folder or "")
            a, m = add_clip_sounds(context, s, src, settings)
            added, missing = added + a, missing + m
            gun = gun_sounds_missing(src, settings) if m else ""
            if gun and gun not in unexported:
                unexported.append(gun)
        if unexported:
            self.report({'WARNING'}, "CoD AutoShader: none of %s's sounds are in your export - export that "
                        "weapon's sounds from Saluki into the Sounds folder, then press Add Sounds again"
                        % ", ".join(unexported))
        if not added:
            if not unexported:
                self.report({'WARNING'}, "CoD AutoShader: no sounds placed%s" %
                            (" (%d cue(s) had no sound file)" % missing if missing else
                             " - these clips have no sound notetracks"))
            return {'CANCELLED'}
        self.report({'INFO'}, "CoD AutoShader: placed %d sound(s)%s" %
                    (added, ", %d not found" % missing if missing else ""))
        return {'FINISHED'}


class COD_OT_clear_sounds(bpy.types.Operator):
    bl_idname = "cod.clear_sounds"
    bl_label = "Clear Sounds"
    bl_description = "Remove the sounds Add Sounds put in the sequencer"
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        self.report({'INFO'}, "CoD AutoShader: removed %d sound(s)" % clear_anim_sounds(context.scene))
        return {'FINISHED'}


class COD_OT_import_anim(bpy.types.Operator, ImportHelper):
    bl_idname = "cod.import_anim"
    bl_label = "Import Animation"
    bl_description = ("Import CoD .cast animations as layered clips on the viewmodel rig, starting at the playhead: "
                      "idle / fire / reload stay on the Base layer, ADS up/down go on the ADS layer on top, so "
                      "you can aim and fire over an idle")
    bl_options = {'REGISTER', 'UNDO'}

    filename_ext = ".cast"
    filter_glob: StringProperty(default="*.cast", options={'HIDDEN'})
    files: CollectionProperty(type=bpy.types.OperatorFileListElement, options={'HIDDEN', 'SKIP_SAVE'})
    directory: StringProperty(subtype='DIR_PATH', options={'HIDDEN', 'SKIP_SAVE'})
    start_mode: EnumProperty(
        name="Start At",
        items=(('PLAYHEAD', "Playhead", "Start at the current frame"),
               ('SCENE_START', "Scene Start", "Start at the scene's first frame"),
               ('CUSTOM', "Frame", "Start at the frame set below")),
        default='PLAYHEAD')
    start_frame: IntProperty(
        name="Frame", default=1,
        description="The scene frame the first clip starts on. Several files still play one after another "
                    "from there")
    place_mode: EnumProperty(
        name="Place At",
        items=(('KEEP', "Leave It", "Do not move the rig"),
               ('CURSOR', "3D Cursor", "Stand the rig at the 3D cursor"),
               ('CUSTOM', "Location", "Stand the rig at the coordinates below")),
        default='KEEP')
    place_location: FloatVectorProperty(
        name="Location", subtype='TRANSLATION', size=3, default=(0.0, 0.0, 0.0),
        description="Where the rig stands while the clip plays. This moves the rig object, so it adds to "
                    "whatever root motion the animation's bones already have")
    key_location: BoolProperty(
        name="Key It", default=False,
        description="Keyframe the rig's position at the clip's start frame and hold it, so a run of clips "
                    "can each start somewhere different in one import")
    move_playhead: BoolProperty(name="Move Playhead to End", default=True,
                                description="After importing, put the playhead at the end of the new clip so the "
                                            "next import continues from there")

    def draw(self, context):
        layout = self.layout
        layout.use_property_split = True
        col = layout.column(align=True)
        col.prop(self, "start_mode")
        sub = col.row()
        sub.enabled = self.start_mode == 'CUSTOM'
        sub.prop(self, "start_frame")
        layout.separator()
        col = layout.column(align=True)
        col.prop(self, "place_mode")
        sub = col.column()
        sub.enabled = self.place_mode == 'CUSTOM'
        sub.prop(self, "place_location")
        row = col.row()
        row.enabled = self.place_mode != 'KEEP' or self.key_location
        row.prop(self, "key_location")
        layout.separator()
        layout.prop(self, "move_playhead")

    @classmethod
    def poll(cls, context):
        return _cast_importer_ready()

    def _move(self, context, rig):
        """Stand the rig where the user asked. The rig OBJECT moves, not its bones, so this composes with
        whatever root motion the clip already has instead of fighting it."""
        if self.place_mode == 'CURSOR':
            rig.location = context.scene.cursor.location.copy()
        elif self.place_mode == 'CUSTOM':
            rig.location = tuple(self.place_location)

    def _key(self, rig, frame):
        """Hold the rig's position from this frame on.

        This runs AFTER the clips are imported, not before: importing stashes whatever action is active onto
        the NLA, so a key inserted first came back as a stray clip on the Base track instead of staying an
        object-level key.
        """
        if not self.key_location:
            return
        rig.keyframe_insert(data_path="location", frame=frame)
        ad = rig.animation_data
        action = ad.action if ad else None
        if action is None:
            return
        # Blender 5 actions have no .fcurves of their own: the curves live in the slot's channel bags
        for fc in _action_fcurves(action):
            if fc.data_path != "location":
                continue
            for kp in fc.keyframe_points:
                if abs(kp.co[0] - frame) < 0.5:
                    kp.interpolation = 'CONSTANT'

    def invoke(self, context, event):
        if _anim_target(context) is None:
            self.report({'ERROR'}, "Select the viewmodel rig (armature) to animate first")
            return {'CANCELLED'}
        return super().invoke(context, event)

    def execute(self, context):
        rig = _anim_target(context)
        if rig is None:
            self.report({'ERROR'}, "Select the viewmodel rig (armature) to animate first")
            return {'CANCELLED'}
        paths = [os.path.join(self.directory, f.name) for f in self.files if f.name] or [self.filepath]
        scene = context.scene
        if self.start_mode == 'SCENE_START':
            frame = scene.frame_start
        elif self.start_mode == 'CUSTOM':
            frame = self.start_frame
        else:
            frame = scene.frame_current
        self._move(context, rig)
        start = frame
        placed = []
        for path in paths:                            # several files play one after another
            strip, layer = import_layered_animation(context, rig, path, frame, self.report)
            if strip is not None:
                placed.append("%s on %s" % (strip.name, layer.replace("CoD ", "")))
                frame = int(math.ceil(strip.frame_end))
        for o in context.view_layer.objects:
            o.select_set(o == rig)
        context.view_layer.objects.active = rig
        if placed:
            self._key(rig, start)
        if placed and self.move_playhead:
            context.scene.frame_set(frame)
        self.report({'INFO'}, "CoD AutoShader: added " + ", ".join(placed) if placed else "CoD AutoShader: nothing imported")
        return {'FINISHED'} if placed else {'CANCELLED'}


def clear_rig_animation(rig):
    """Remove every clip / action from the rig (and the shape-key clips of its meshes), put the bones back in the
    rest pose and delete the actions nothing else uses. Returns (clips removed, actions deleted)."""
    actions, clips = set(), 0
    meshes = [o for o in bpy.data.objects if o.type == 'MESH' and
              (o.parent is rig or any(m.type == 'ARMATURE' and m.object is rig for m in o.modifiers))]
    datas = [rig] + [o.data for o in meshes] + [o.data.shape_keys for o in meshes if o.data.shape_keys is not None]
    for data in datas:
        ad = data.animation_data
        if ad is None:
            continue
        if ad.action is not None:
            actions.add(ad.action)
            ad.action = None
            clips += 1
        for track in list(ad.nla_tracks):
            for strip in track.strips:
                if strip.action is not None:
                    actions.add(strip.action)
                clips += 1
            ad.nla_tracks.remove(track)
    for bone in rig.pose.bones:
        bone.matrix_basis.identity()
    rig.data.pose_position = 'POSE'
    deleted = 0
    for action in actions:
        action.use_fake_user = False                  # the Cast importer keeps every clip with a fake user
        if action.users == 0:
            bpy.data.actions.remove(action)
            deleted += 1
    return clips, deleted


class COD_OT_clear_anim(bpy.types.Operator):
    bl_idname = "cod.clear_anim"
    bl_label = "Clear Animations"
    bl_description = ("Remove the animations from the viewmodel rig and put it back in its rest pose "
                      "(Ctrl+Z brings them back)")
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        return _anim_target(context) is not None

    def invoke(self, context, event):
        return context.window_manager.invoke_confirm(self, event)

    def execute(self, context):
        rig = _anim_target(context)
        if context.object is not None and context.object.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
        clips, deleted = clear_rig_animation(rig)
        clear_anim_sounds(context.scene)
        update_ammo_visibility(rig)                  # no clips left: the rounds are simply shown
        context.view_layer.update()
        self.report({'INFO'}, "CoD AutoShader: removed %d clip(s) from %s, back in its rest pose" % (clips, rig.name))
        return {'FINISHED'}


# ---- weapon clips: find the gun's animations in the export and add a move with the clips it needs ----------

ANIM_DIR_NAMES = ("animations", "Animations", "anims", "xanims")
NEUTRAL_CLIPS = ("idle", "idle_non_loop", "pose", "pose_r")
QUICK_CLIPS = (("ads_up", "Aim", 'HIDE_OFF'), ("ads_down", "Lower", 'HIDE_ON'), ("idle", "Idle", 'POSE_HLT'),
               ("ads_fire", "ADS Fire", 'LIGHT_SUN'), ("fire", "Hip Fire", 'LIGHT_POINT'),
               ("reload", "Reload", 'FILE_REFRESH'))
# third person: the stance clips carry the legs, the weapon clips the upper body (key, pattern, label, icon)
TP_QUICK = (("stand", r"(^|_)mp_me_stand_idle(_\d+)?$", "Stand", 'POSE_HLT'),
            ("crouch", r"(^|_)mp_me_crouch_idle(_\d+)?$", "Crouch", 'TRIA_DOWN_BAR'),
            ("aim pose", r"addoff_{token}_nonads$", "Aim Pose", 'HIDE_OFF'),
            ("inspect", r"{token}_inspect_stand$", "Inspect", 'VIEWZOOM'),
            ("reload", r"{token}_reload_stand$", "Reload", 'FILE_REFRESH'),
            ("fire", r"stand_fire_{token}$", "Fire", 'LIGHT_SUN'))
TP_STANCE_KEYS = ("stand", "crouch")
_clip_cache = {}
_rig_folder_cache = {}
_CLIP_ITEMS = []


def _weapon_token(name, anchors=("vm", "wpn")):
    """Weapon id from a CoD asset name: att_vm_p21_sn_mromeo_rec_v0 -> ('sn_mromeo', 'p21', ''),
    att_rex_vm_ar_mike4_rec_v0 -> ('ar_mike4', '', 'rex'). None if the name has no vm_ / wpn_ part."""
    segs = re.sub(r"\.\d{3}$", "", os.path.splitext(os.path.basename(name))[0]).lower().split("_")
    i = next((k for k, seg in enumerate(segs) if seg in anchors), None)
    if i is None:
        return None
    family = segs[i - 1] if i > 0 and segs[i - 1] not in ("att", "wpn", "m", "mtl") else ""
    rest = segs[i + 1:]
    pnum = ""
    if rest and re.fullmatch(r"p\d+", rest[0]):
        pnum, rest = rest[0], rest[1:]
    if len(rest) < 2:
        return None
    return "_".join(rest[:2]), pnum, family, rest[2:]


def _find_anim_dir(model_path):
    """Saluki puts animations next to models: <export>/models/<model>/x.cast -> <export>/animations."""
    d = os.path.dirname(os.path.abspath(model_path))
    for _ in range(4):
        d = os.path.dirname(d)
        for name in ANIM_DIR_NAMES:
            if os.path.isdir(os.path.join(d, name)):
                return os.path.join(d, name)
    return ""


def _rig_weapon(rig, settings):
    """(weapon id, pnum, family, animations folder) for a viewmodel rig."""
    token, pnum, family = rig.get("cod_weapon", ""), rig.get("cod_weapon_pnum", ""), rig.get("cod_weapon_family", "")
    cached = _rig_folder_cache.get(rig.name)
    if not token or not rig.get("cod_anim_dir"):
        if cached is None:
            got_token, got_pnum, got_family, got_dir = "", "", "", ""
            for ob in _rig_meshes(rig):
                for sl in ob.material_slots:
                    if sl.material is None:
                        continue
                    weapon = _weapon_token(sl.material.name, ("wpn",))
                    if weapon and not got_token:
                        got_token, got_pnum, got_family = weapon[:3]
                    if not got_dir:
                        for image in _material_image_paths(sl.material):
                            model_dir = _model_dir_for(image)
                            if model_dir:
                                got_dir = _find_anim_dir(os.path.join(model_dir, "x"))
                                break
                if got_token and got_dir:
                    break
            cached = (got_token, got_pnum, got_family, got_dir)
            _rig_folder_cache[rig.name] = cached
        token = token or cached[0]
        pnum = pnum or cached[1]
        family = family or cached[2]
    folder = bpy.path.abspath(settings.anim_folder) if settings.anim_folder else \
        (rig.get("cod_anim_dir") or (cached[3] if cached else ""))
    return token, pnum, family, folder


def weapon_clips(rig, settings):
    """clip name -> .cast path for the rig's weapon ('idle', 'ads_up', 'fire', ...)."""
    token, pnum, family, folder = _rig_weapon(rig, settings)
    if not token or not folder or not os.path.isdir(folder):
        return token, folder, {}
    key = (folder, token, pnum, family, os.path.getmtime(folder))
    if key not in _clip_cache:
        best = {}
        for entry in os.scandir(folder):
            if not entry.name.lower().endswith(".cast"):
                continue
            found = _weapon_token(entry.name, ("vm",))
            if not found or found[0] != token or not found[3]:
                continue
            clip = "_".join(found[3])
            score = (found[2] == family) + (found[1] == pnum)      # prefer the gun's own prefix (rex_, p21_)
            if clip not in best or score > best[clip][0]:
                best[clip] = (score, entry.path)
        _clip_cache[key] = {clip: path for clip, (score, path) in best.items()}
    return token, folder, _clip_cache[key]


def third_person_clips(rig, settings):
    """clip name -> .cast path for a character body: the stance clips, this weapon's third-person moves and the
    facial clips of the export."""
    token, pnum, family, folder = _rig_weapon(rig, settings)
    if not folder or not os.path.isdir(folder):
        return token, folder, {}
    key = ("3p", folder, token, os.path.getmtime(folder))
    if key not in _clip_cache:
        clips = {}
        quick = {name: re.compile(pattern.format(token=re.escape(token or "~none~")))
                 for name, pattern, _, _ in TP_QUICK}
        for entry in os.scandir(folder):
            if not entry.name.lower().endswith(".cast"):
                continue
            stem = entry.name[:-5].lower()
            if "_vm_" in stem or stem.startswith("vm_"):
                continue
            for name, pattern in quick.items():
                if pattern.search(stem) and (name not in clips or len(stem) < len(os.path.basename(clips[name]))):
                    clips[name] = entry.path
            if stem.startswith("facial_") and "enemy" not in stem:
                clips["face " + re.sub(r"^facial_", "", stem)] = entry.path
            elif token and token in stem:
                clips[re.sub(r"^(iw9_|sdr_|rex_)?mp_", "", stem).replace(token + "_", "").replace("_" + token, "")] = entry.path
        _clip_cache[key] = clips
    return token, folder, _clip_cache[key]


def clip_catalogue(rig, settings):
    """(weapon id, animations folder, clips) - the weapon's viewmodel clips, or the third-person set."""
    if rig is not None and _is_body(rig):
        return third_person_clips(rig, settings)
    return weapon_clips(rig, settings) if rig is not None else ("", "", {})


LENS_HIDE_BONE = re.compile(r"^tag_lens(e)?_hide$", re.I)
LENS_HIDE_TRACK = "CoD Lens Hide"


def update_lens_hide(rig):
    """Hide the scope's eyepiece glass while aimed, as the game does: tag_lense_hide goes to nothing from the end of
    each ads_up to the start of the next ads_down, so the scope picture on tag_lense is not seen through it."""
    bone = next((b.name for b in rig.pose.bones if LENS_HIDE_BONE.match(b.name)), None)
    ad = rig.animation_data
    if bone is None or ad is None:
        return
    ads = ad.nla_tracks.get(ANIM_TRACK_ADS)
    keys = []
    for st in sorted(ads.strips if ads else (), key=lambda s: s.frame_start):
        name = st.name.lower()
        if re.search(r"ads_(up|in)", name):
            keys.append((st.frame_end, 0.0))
        elif re.search(r"ads_(down|out)", name):
            keys.append((st.frame_start, 1.0))
    track = ad.nla_tracks.get(LENS_HIDE_TRACK)
    if track is not None:
        for st in list(track.strips):
            action = st.action
            track.strips.remove(st)
            if action is not None and action.users == 0:
                bpy.data.actions.remove(action)
    if not keys:
        if track is not None:
            ad.nla_tracks.remove(track)
        return
    action = bpy.data.actions.new("CoD Lens Hide")
    active = ad.action
    ad.action = action                                # Blender 5 creates curves through the assigned slot
    path = 'pose.bones["%s"].scale' % bone
    first = min(f for f, _v in keys)
    for i in range(3):
        if hasattr(action, "fcurve_ensure_for_datablock"):
            fc = action.fcurve_ensure_for_datablock(rig, path, index=i, group_name=bone)
        else:
            fc = action.fcurves.new(path, index=i, action_group=bone)
        fc.keyframe_points.insert(min(first - 1, 0), 1.0, options={'FAST'})
        for f, v in keys:
            kp = fc.keyframe_points.insert(f, v, options={'FAST'})
        for kp in fc.keyframe_points:
            kp.interpolation = 'CONSTANT'
        fc.update()
    ad.action = active
    if track is None:
        track = ad.nla_tracks.new()
        track.name = LENS_HIDE_TRACK
    strip = track.strips.new("Lens Hide", int(min(first - 1, 0)), action)
    if hasattr(strip, "action_slot") and strip.action_slot is None and len(action.slots):
        strip.action_slot = action.slots[0]
    strip.blend_type = 'REPLACE'
    strip.extrapolation = 'HOLD'


def _ads_up_at(rig, frame):
    """Is the gun aimed at `frame` (the last ADS clip starting before it is an 'up')?"""
    ad = rig.animation_data
    track = ad.nla_tracks.get(ANIM_TRACK_ADS) if ad else None
    strips = [st for st in (track.strips if track else ()) if st.frame_start <= frame]
    last = max(strips, key=lambda st: st.frame_start, default=None)
    return last is not None and re.search(r"ads_(up|in)", last.name.lower()) is not None


def _base_empty(rig):
    ad = rig.animation_data
    track = ad.nla_tracks.get(ANIM_TRACK_BASE) if ad else None
    return (ad is None or ad.action is None) and (track is None or not len(track.strips))


def plan_clip_third_person(rig, clip, clips):
    """A third-person move needs the stance under it, or the legs stay in the model's straight bind pose."""
    if clip in TP_STANCE_KEYS or clip.startswith("face ") or not _base_empty(rig):
        return [(clip, True)]
    stance = "stand" if "stand" in clips else ("crouch" if "crouch" in clips else None)
    return ([(stance, False)] if stance and stance != clip else []) + [(clip, True)]


def plan_clip(rig, clip, clips, frame):
    """The clips a move needs, in order: [(clip, next clip starts after it)]. An ADS clip gets the idle under
    it; an ADS fire / reload gets 'aim' first; a hip clip while aimed gets 'lower' first."""
    plan = []
    ads_layer = re.match(r"ads_(up|down)", clip) is not None
    wants_aim = clip.startswith("ads_") and not ads_layer
    if _base_empty(rig) and "idle" in clips and clip != "idle" and (ads_layer or wants_aim):
        plan.append(("idle", False))
    aimed = _ads_up_at(rig, frame)
    if wants_aim and not aimed and "ads_up" in clips:
        plan.append(("ads_up", True))
    elif not clip.startswith("ads_") and clip not in NEUTRAL_CLIPS and aimed and "ads_down" in clips:
        plan.append(("ads_down", True))
    plan.append((clip, True))
    return plan


def add_weapon_clip(context, rig, clip, report):
    _, _, clips = clip_catalogue(rig, context.scene.cod_autoshader)
    if clip not in clips:
        report({'ERROR'}, "No '%s' animation found for this character / weapon" % clip)
        return []
    start = context.scene.frame_current
    placed = []
    plan = plan_clip_third_person(rig, clip, clips) if _is_body(rig) else plan_clip(rig, clip, clips, start)
    for name, advance in plan:
        strip, layer = import_layered_animation(context, rig, clips[name], start, report)
        if strip is None:
            break
        placed.append(name)
        if advance:
            start = int(math.ceil(strip.frame_end))
    for o in context.view_layer.objects:
        o.select_set(o == rig)
    context.view_layer.objects.active = rig
    if placed:
        context.scene.frame_set(start)
        report({'INFO'}, "CoD AutoShader: added " + " + ".join(n.replace("_", " ") for n in placed))
    return placed


def _clip_enum_items(self, context):
    global _CLIP_ITEMS
    rig = _anim_target(context) if context else None
    clips = clip_catalogue(rig, context.scene.cod_autoshader)[2] if rig is not None else {}
    _CLIP_ITEMS = [(c, c.replace("_", " "), os.path.basename(path)) for c, path in sorted(clips.items())] or \
        [('NONE', "No clips found", "")]
    return _CLIP_ITEMS


class _ClipOperator:
    @classmethod
    def poll(cls, context):
        return _cast_importer_ready() and _anim_target(context) is not None


class COD_OT_add_clip(_ClipOperator, bpy.types.Operator):
    bl_idname = "cod.add_clip"
    bl_label = "Add Weapon Clip"
    bl_options = {'REGISTER', 'UNDO'}

    clip: StringProperty(options={'SKIP_SAVE'})

    @classmethod
    def description(cls, context, properties):
        needs = {"ads_up": "Raise the sights (adds the idle under it if needed)",
                 "ads_down": "Lower the sights back to the hip",
                 "ads_fire": "Aim and fire: adds Aim first if the gun isn't up yet",
                 "fire": "Fire from the hip: lowers the sights first if aimed",
                 "reload": "Reload from the hip: lowers the sights first if aimed"}
        return needs.get(properties.clip, "Add the weapon's '%s' animation at the playhead" % properties.clip)

    def execute(self, context):
        return {'FINISHED'} if add_weapon_clip(context, _anim_target(context), self.clip, self.report) \
            else {'CANCELLED'}


class COD_OT_add_clip_search(_ClipOperator, bpy.types.Operator):
    bl_idname = "cod.add_clip_search"
    bl_label = "Add Clip"
    bl_description = "Search the weapon's animations and add one at the playhead, with the clips it needs"
    bl_options = {'REGISTER', 'UNDO'}
    bl_property = "clip"

    clip: EnumProperty(items=_clip_enum_items)

    def invoke(self, context, event):
        context.window_manager.invoke_search_popup(self)
        return {'RUNNING_MODAL'}

    def execute(self, context):
        if self.clip == 'NONE':
            return {'CANCELLED'}
        return {'FINISHED'} if add_weapon_clip(context, _anim_target(context), self.clip, self.report) \
            else {'CANCELLED'}


def _world_backdrop(world):
    """The colour a camera sees in a world, as best it can be read: the darkest plain Background colour (a void
    scene keeps its lighting colour separate from the darker backdrop the camera sees)."""
    if world is None or not world.use_nodes:
        return (0.03, 0.03, 0.03, 1.0)
    cols = [tuple(n.inputs["Color"].default_value) for n in world.node_tree.nodes
            if n.type == 'BACKGROUND' and not n.inputs["Color"].is_linked]
    return min(cols, key=lambda c: sum(c[:3])) if cols else (0.03, 0.03, 0.03, 1.0)


class COD_OT_game_sky(bpy.types.Operator):
    bl_idname = "cod.game_sky"
    bl_label = "Game Sky Lighting"
    bl_description = ("Light the scene with a daylight sky, like the game. A dark CoD finish gets most of its look "
                      "from the sky it reflects - in a black void it can only reflect black, so it renders near "
                      "black however bright the lamps are. The camera still sees your backdrop")
    bl_options = {'REGISTER', 'UNDO'}

    keep_backdrop: BoolProperty(name="Keep Backdrop", default=True,
                                description="The camera keeps seeing the scene's current background colour; "
                                            "only lighting and reflections come from the sky")
    strength: FloatProperty(name="Strength", default=0.5, min=0.0, max=5.0)

    def execute(self, context):
        scene = context.scene
        backdrop = _world_backdrop(scene.world)
        world = bpy.data.worlds.new("CoD Game Sky")
        world.use_nodes = True
        nt = world.node_tree
        nt.nodes.clear()
        out = nt.nodes.new("ShaderNodeOutputWorld")
        out.location = (600, 0)
        sky = nt.nodes.new("ShaderNodeTexSky")
        sky.location = (-300, 100)
        lit = nt.nodes.new("ShaderNodeBackground")
        lit.label = "Sky - lighting and reflections"
        lit.location = (0, 100)
        lit.inputs["Strength"].default_value = self.strength
        nt.links.new(sky.outputs[0], lit.inputs["Color"])
        if self.keep_backdrop:
            seen = nt.nodes.new("ShaderNodeBackground")
            seen.label = "Backdrop - what the camera sees"
            seen.location = (0, -100)
            seen.inputs["Color"].default_value = backdrop
            path = nt.nodes.new("ShaderNodeLightPath")
            path.location = (0, 350)
            mix = nt.nodes.new("ShaderNodeMixShader")
            mix.location = (300, 0)
            nt.links.new(path.outputs["Is Camera Ray"], mix.inputs[0])
            nt.links.new(lit.outputs[0], mix.inputs[1])
            nt.links.new(seen.outputs[0], mix.inputs[2])
            nt.links.new(mix.outputs[0], out.inputs["Surface"])
        else:
            nt.links.new(lit.outputs[0], out.inputs["Surface"])
        scene.world = world
        self.report({'INFO'}, "CoD AutoShader: daylight sky for lighting%s" %
                    (", backdrop kept" if self.keep_backdrop else ""))
        return {'FINISHED'}


class COD_OT_vm_camera(bpy.types.Operator):
    bl_idname = "cod.vm_camera"
    bl_label = "Viewmodel Camera"
    bl_description = ("Add a camera on the arms' eye bone (tag_camera) and make it the scene camera, so ADS "
                      "animations bring the sights to the middle of the view like in game")
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        rig = _anim_target(context)
        bone = next((b for b in EYE_BONES if rig is not None and b in rig.pose.bones), None)
        if bone is None:
            self.report({'ERROR'}, "Select a viewmodel rig with a tag_camera / tag_view bone")
            return {'CANCELLED'}
        cam = bpy.data.objects.get(VM_CAMERA_NAME)
        if cam is None or cam.type != 'CAMERA':
            cam = bpy.data.objects.new(VM_CAMERA_NAME, bpy.data.cameras.new(VM_CAMERA_NAME))
            context.scene.collection.objects.link(cam)
            cam.data.lens = VM_CAMERA_LENS
        scale = sum(abs(v) for v in rig.matrix_world.to_scale()) / 3.0 or 1.0
        cam.data.clip_start = 1.0 * scale             # rigs are in cm; a 0.01-scaled rig keeps working
        cam.data.clip_end = 100000.0 * scale
        cam.parent = rig
        cam.parent_type = 'BONE'
        cam.parent_bone = bone
        context.view_layer.update()
        eye, _ = _eye_matrix(rig)
        cam.matrix_world = eye
        context.view_layer.update()
        context.scene.camera = cam
        self.report({'INFO'}, "CoD AutoShader: camera attached to %s" % bone)
        return {'FINISHED'}


def _active_material(context):
    mat = getattr(context, "material", None)
    if mat is None and context.object is not None:
        mat = context.object.active_material
    return mat


class COD_OT_shade_active(bpy.types.Operator):
    bl_idname = "cod.shade_active"
    bl_label = "Reshade Active"
    bl_description = "Rebuild the active material with the current CoD AutoShader defaults"
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        return _active_material(context) is not None

    def execute(self, context):
        shade_materials([_active_material(context)], context.scene.cod_autoshader, self.report)
        return {'FINISHED'}


def _split(layout):
    """Blender's standard property layout: label column | value column, no animate dots."""
    layout.use_property_split = True
    layout.use_property_decorate = False
    return layout


def _settings(context):
    return context.scene.cod_autoshader


# ---- tool panel sections (shared by the 3D View and the Shader Editor) ------------------------

def models_root_for(path):
    """The folder that holds the per-model folders, given one model file inside one of them.

    A Saluki export goes <root>/<model name>/<model>_LOD0.cast, with _mat_info and _images beside the
    file, so the root is two levels up. If the file is not laid out that way, its own folder is the best
    guess available.
    """
    folder = os.path.dirname(os.path.abspath(path))
    if os.path.isdir(os.path.join(folder, "_mat_info")) or os.path.isdir(os.path.join(folder, "_images")):
        return os.path.dirname(folder)
    return folder


def remember_models_root(settings, paths):
    """Fill the Models Folder in from what was just imported, if it is not set yet. Nobody should have to
    know the setting exists for the textures to be found."""
    if settings.search_folder or not paths:
        return ""
    root = models_root_for(paths[0])
    if root and os.path.isdir(root):
        settings.search_folder = root
        return root
    return ""


def _draw_main(layout):
    s = _settings(bpy.context)
    box = _split(layout.column(align=True))
    box.prop(s, "search_folder", text="Models Folder")
    if not s.search_folder:
        layout.label(text="Set this to open Import & Shade here, and to find moved textures", icon='INFO')
    col = layout.column(align=True)
    row = col.row(align=True)
    row.scale_y = 1.5
    row.operator(COD_OT_import_cast.bl_idname, text="Import & Shade", icon='IMPORT')
    row = col.row(align=True)
    row.scale_y = 1.15
    row.operator(COD_OT_shade_selected.bl_idname, text="Shade Selected", icon='RESTRICT_SELECT_OFF')
    row.operator(COD_OT_shade_all.bl_idname, text="Shade All", icon='WORLD')


def _draw_viewmodel(layout, s):
    col = layout.column(align=True)
    col.scale_y = 1.15
    col.operator(COD_OT_import_vm.bl_idname, text="Import Viewmodel", icon='IMPORT')
    col.operator(COD_OT_assemble_vm.bl_idname, text="Assemble Selected", icon='LINKED')
    row = layout.row(align=True)
    row.operator(COD_OT_merge_parts.bl_idname, text="Merge Parts", icon='OUTLINER_OB_GROUP_INSTANCE')
    row.operator(COD_OT_pick_skins.bl_idname, text="Pick Skins", icon='COMMUNITY')
    header, body = layout.panel("cod_vm_ammo", default_closed=True)
    header.label(text="Ammo", icon='PHYSICS')
    if body:
        row = body.row(align=True)
        row.operator(COD_OT_add_ammo.bl_idname, text="Add Ammo", icon='ADD')
        row.operator(COD_OT_clear_ammo.bl_idname, text="", icon='TRASH')
        col = _split(body.column(align=True))
        col.prop(s, "ammo_rounds", text="Rounds")
        col.prop(s, "ammo_model", text="Model")


def _draw_anim(layout, s):
    rig = _anim_target(bpy.context)
    col = layout.column(align=True)
    col.scale_y = 1.15
    col.operator(COD_OT_import_anim.bl_idname, text="Import Animation", icon='ACTION')
    row = col.row(align=True)
    row.enabled = rig is not None
    row.prop(s, "anim_play", text="Playing" if s.anim_play else "Rest Pose", toggle=True,
             icon='PLAY' if s.anim_play else 'ARMATURE_DATA')
    row.operator(COD_OT_clear_anim.bl_idname, text="Clear", icon='TRASH')

    token, folder, clips = clip_catalogue(rig, s) if rig is not None else ("", "", {})
    third_person = rig is not None and _is_body(rig)
    header, body = layout.panel("cod_weapon_clips", default_closed=False)
    header.label(text=("Character Clips" if third_person else "Weapon Clips") +
                 ("  (%s)" % token.split("_", 1)[-1] if token else ""), icon='ANIM')
    if body:
        if clips:
            grid = body.grid_flow(row_major=True, columns=3, even_columns=True, align=True)
            grid.scale_y = 1.1
            quick = [(k, label, icon) for k, _, label, icon in TP_QUICK] if third_person else QUICK_CLIPS
            for clip, label, icon in quick:
                cell = grid.row(align=True)
                cell.enabled = clip in clips
                cell.operator(COD_OT_add_clip.bl_idname, text=label, icon=icon).clip = clip
            body.operator(COD_OT_add_clip_search.bl_idname, text="More Clips...", icon='VIEWZOOM')
        else:
            body.label(text="Select the rig" if rig is None else "No animations found in the export",
                       icon='INFO')
        if s.anim_folder or (rig is not None and not clips):
            body.prop(s, "anim_folder", text="")

    header, body = layout.panel("cod_anim_sounds", default_closed=True)
    header.prop(s, "anim_sounds", text="")
    header.label(text="Sounds", icon='SOUND')
    if body:
        row = body.row(align=True)
        row.operator(COD_OT_add_sounds.bl_idname, text="Add Sounds", icon='PLAY_SOUND')
        row.operator(COD_OT_clear_sounds.bl_idname, text="", icon='TRASH')
        _split(body.column()).prop(s, "sound_folder", text="Folder")

    header, body = layout.panel("cod_anim_options", default_closed=True)
    header.label(text="Options", icon='PREFERENCES')
    if body:
        col = _split(body.column(align=True))
        col.prop(s, "anim_align_sight", text="Line Up Sight")
        col.prop(s, "anim_face", text="Face Animation")
        col.prop(s, "anim_recoil", text="Fire Recoil", slider=True)
        col.prop(s, "fire_shake", text="Camera Shake", slider=True)
        col.prop(s, "fire_shake_camera_only", text="Shake Camera Only")


def _draw_scene(layout, s):
    col = layout.column(align=True)
    col.scale_y = 1.15
    col.operator(COD_OT_vm_camera.bl_idname, text="Viewmodel Camera", icon='CAMERA_DATA')
    col.operator(COD_OT_game_sky.bl_idname, text="Game Sky Lighting", icon='WORLD')
    row = layout.row(align=True)
    row.prop(s, "cod_look", text="CoD Look", toggle=True, icon='COLOR')
    sub = row.row(align=True)
    sub.active = s.cod_look
    sub.prop(s, "cod_look_exposure", text="Exposure")
    split = layout.split(factor=0.3, align=True)
    split.label(text="VRAM", icon='MEMORY')
    split.row(align=True).prop(s, "vram_budget", expand=True)


# game logos (logos/<game id>.png, shipped with the add-on) shown as a banner for the selected game
_logo_previews = None
GAME_NAMES = {g[0]: g[2] for g in GAMES}


def _logo_icon(game):
    pc = _logo_previews
    key = (game or "").lower()
    return pc[key].icon_id if pc is not None and key in pc else 0


def _draw_game(layout, s):
    icon = _logo_icon(s.game)
    row = layout.row()
    row.alignment = 'CENTER'
    if icon:
        row.template_icon(icon_value=icon, scale=4.5)
    else:
        row.label(text=GAME_NAMES.get(s.game, s.game))
    layout.prop(s, "game_auto", text="Auto-detect Game (lock)", icon='LOCKED' if s.game_auto else 'UNLOCKED')
    if s.game_auto:
        found = {}
        for m in bpy.data.materials:
            g = m.get("cod_game")
            if g and m.get("cod_shaded"):
                found[g] = found.get(g, 0) + 1
        if found:
            box = layout.box()
            box.label(text="Locked per model:", icon='LOCKED')
            for g in sorted(found, key=lambda k: -found[k]):
                box.label(text="%s  (%d materials)" % (GAME_NAMES.get(g, g), found[g]))
    if s.game_auto:
        header, body = layout.panel("cod_game_fallback", default_closed=True)
        header.label(text="When Names Say Nothing: %s" % GAME_NAMES.get(s.game, s.game))
    else:
        body = layout
    if body:
        grid = body.grid_flow(row_major=True, columns=2, even_columns=True, even_rows=True, align=True)
        grid.scale_y = 1.1
        grid.prop(s, "game", expand=True)


def _draw_surface(layout, s):
    _split(layout)
    layout.prop(s, "metal_mode", text="Metal")
    col = layout.column(align=True)
    col.prop(s, "normal_strength", text="Normal")
    col.prop(s, "ao_strength", text="Occlusion")
    col.prop(s, "emission_strength", text="Emission")
    col.prop(s, "emission_color", text="Emission Color")
    col = layout.column(align=True, heading="Shine")
    col.prop(s, "roughness_auto", text="Auto (from game)")
    sub = col.column(align=True)
    if s.roughness_auto:
        sub.enabled = False
        sub.label(text="Min Roughness %.2f" % GAME_ROUGHNESS_FLOOR.get(s.game, 0.0))
    else:
        sub.prop(s, "roughness_min", text="Min Roughness", slider=True)
    header, body = layout.panel("cod_surface_advanced", default_closed=True)
    header.label(text="Advanced")
    if body:
        body.prop(s, "gloss_curve", text="Gloss Curve")


def _draw_weapon(layout, s):
    _split(layout)
    col = layout.column(align=True)
    col.active = s.weapon_finish
    col.prop(s, "weapon_wear", text="Wear", slider=True)
    col.prop(s, "weapon_grime", text="Grime", slider=True)
    col.prop(s, "weapon_aniso", text="Brushed Metal", slider=True)
    col.prop(s, "weapon_tint", text="Blueprint Paint")
    sub = col.column(align=True)
    sub.active = s.weapon_finish and s.weapon_tint
    sub.prop(s, "weapon_tint_a", text="Paint 1")
    sub.prop(s, "weapon_tint_b", text="Paint 2")
    col.prop(s, "weapon_layer2", text="Blueprint Layer")
    sub = col.column(align=True)
    sub.active = s.weapon_finish and s.weapon_layer2
    sub.prop(s, "weapon_layer_tint", text="Layer Tint")
    sub.prop(s, "weapon_layer_amount", text="Layer Amount", slider=True)
    col.separator()
    col.prop(s, "weapon_camo", text="Camo", slider=True)
    sub = col.column(align=True)
    sub.active = s.weapon_finish and s.weapon_camo > 0.0
    sub.prop(s, "weapon_camo_unmasked", text="Whole Gun")
    sub.prop(s, "weapon_camo_folder", text="Camo Folder")
    if not s.weapon_camo_folder:
        sub.prop(s, "weapon_camo_image", text="Image")
    if s.weapon_camo_folder or s.weapon_camo_image:
        sub.prop(s, "weapon_camo_scale", text="Tiling")
        sub.prop(s, "weapon_camo_region", text="Region")
        if s.game == 'BO7' and s.weapon_camo_folder:
            sub.prop(s, "weapon_camo_animate", text="Animate Camo")
            anim = sub.column(align=True)
            anim.active = s.weapon_camo_animate
            anim.prop(s, "weapon_camo_speed", text="Speed")
            anim.prop(s, "weapon_camo_phase", text="Time Offset")
        sub.label(text="Reshade to load it", icon='INFO')
    else:
        sub.prop(s, "weapon_camo_color", text="Color")


def _draw_names(layout, s):
    _split(layout)
    col = layout.column(align=True)
    col.active = s.hash_names
    col.prop(s, "hash_names_folder", text="Tables")
    folder = hash_db_folder(s)
    if not s.hash_names:
        col.label(text="Hashed materials shade by texture alone", icon='INFO')
    elif folder:
        have = sum(1 for t in HASH_TABLES if os.path.exists(os.path.join(folder, t)))
        col.label(text="%d of %d tables found" % (have, len(HASH_TABLES)),
                  icon='CHECKMARK' if have else 'ERROR')
    else:
        col.label(text="No tables found: point this at cod-name-db/csv", icon='ERROR')


def _draw_character(layout, s):
    header, body = layout.panel("cod_char_skin", default_closed=False)
    header.label(text="Skin", icon='USER')
    if body:
        _split(body)
        body.prop(s, "skin_style", text="Style")
        if s.skin_style in ('SEPARABLE', 'INGAME'):
            sub = body.column(align=True)
            sub.prop(s, "sss_profile", text="Profile")
            sub.prop(s, "sss_size", text="Scatter Size", slider=True)
        col = body.column(align=True)
        col.prop(s, "skin_sss", text="Subsurface")
        sub = col.column(align=True)
        sub.active = s.skin_sss and s.skin_style == 'COD'
        sub.prop(s, "sss_weight", text="Weight")
        sub.prop(s, "sss_scale", text="Scale (cm)")
        body.prop(s, "skin_oil", text="Oil / Sheen")
        body.prop(s, "skin_roughness_min", text="Roughness Min")

    header, body = layout.panel("cod_char_wrinkles", default_closed=True)
    header.prop(s, "skin_wrinkles", text="")
    header.label(text="Wrinkles")
    if body:
        _split(body)
        sub = body.column(align=True)
        sub.active = s.skin_wrinkles
        sub.prop(s, "wrinkle_auto", text="Drive From Animation")
        sub.prop(s, "wrinkle_strength", text="Strength", slider=True)
        row = sub.row()
        row.active = s.wrinkle_auto
        row.prop(s, "wrinkle_sensitivity", text="Sensitivity")

    header, body = layout.panel("cod_char_hair", default_closed=True)
    header.prop(s, "hair_shader", text="")
    header.label(text="Hair")
    if body:
        _split(body)
        sub = body.column()
        sub.active = s.hair_shader
        sub.prop(s, "hair_style", text="Style")
        if s.hair_style == 'CARD':
            have = _hair_card_candidates([ng.name for ng in bpy.data.node_groups])
            found = None if have else _hair_card_path(s)
            row = sub.row()
            row.alignment = 'RIGHT'
            if have:
                row.label(text="Using '%s'" % have[0], icon='CHECKMARK')
            elif found:
                row.label(text="Found: %s" % os.path.basename(found), icon='FILE_BLEND')
            else:
                row.label(text="Hair Card Shader .blend not found", icon='ERROR')
            if not have:
                sub.prop(s, "hair_card_file", text="Shader .blend")
            sub.prop(s, "hair_use_game_color", text="Game Color")
            if s.hair_use_game_color:
                sub.prop(s, "hair_brightness", text="Brightness", slider=True)
            else:
                sub.prop(s, "hair_color", text="Hair Color")
            sub.prop(s, "hair_highlight", text="Highlight")

    header, body = layout.panel("cod_char_eyes", default_closed=True)
    header.label(text="Eyes", icon='HIDE_OFF')
    if body:
        _split(body)
        have_tiny = tiny_eye_library() is not None
        row = body.row()
        row.enabled = have_tiny or s.tiny_eye
        row.prop(s, "tiny_eye", text="TinyEye Eyes")
        if not have_tiny:
            body.label(text="Install TinyEye to use its eyes", icon='INFO')
        elif s.tiny_eye:
            sub = body.column(align=True)
            sub.prop(s, "tiny_eye_style", text="Style")
            sub.prop(s, "tiny_eye_veins", text="Veins", slider=True)
        col = body.column(align=True)
        col.prop(s, "eye_parallax", text="Iris Depth")
        col.prop(s, "eye_iris_relief", text="Iris Relief")
        col.prop(s, "eye_iris_angle", text="Iris by Viewing Angle")
        sub = col.column(align=True)
        sub.active = s.eye_iris_relief
        sub.prop(s, "eye_iris_map", text="Height Map")
        body.prop(s, "eye_shadow", text="Lid Shadow", slider=True)

    header, body = layout.panel("cod_char_cloth", default_closed=True)
    header.label(text="Cloth", icon='MOD_CLOTH')
    if body:
        row = body.row(align=True)
        row.operator("cod.cloth", text="Cloth on Selected", icon='MOD_CLOTH')
        row.operator("cod.cloth_clear", text="", icon='TRASH')
        sub = _split(body.column(align=True))
        sub.prop(s, "cloth_fabric", text="Fabric")
        sub.prop(s, "cloth_pin", text="Stitched Band", slider=True)
        sub.prop(s, "cloth_hem_hold", text="Hem Hold", slider=True)
        sub.prop(s, "cloth_thickness", text="Thickness (cm)")
        row = body.row(align=True)
        row.prop(s, "cloth_collide_skin", text="Skin Only", toggle=True)
        row.prop(s, "cloth_self_collide", text="Self Collision", toggle=True)


def _draw_sights(layout, s):
    _split(layout)
    layout.active = s.sight_shader
    col = layout.column(align=True, heading="Red Dot")
    col.prop(s, "red_dot_reticle", text="Reticle")
    sub = layout.column(align=True)
    sub.active = s.red_dot_reticle
    sub.prop(s, "reticle_style", text="Style")
    sub.prop(s, "reticle_color", text="Color")
    sub.prop(s, "reticle_brightness", text="Brightness")
    sub.prop(s, "reticle_size", text="Circle Size")
    layout.separator()
    layout.prop(s, "scope_zoom", text="Scope Zoom")
    row = layout.row()
    row.alignment = 'RIGHT'
    row.label(text="Scope zoom needs Cycles", icon='INFO')


BODYCAM_LABELS = {"Chromatic Aberration": "Color Fringe"}


def _draw_bodycam(layout, s):
    scene = s.id_data
    if not hasattr(scene, "compositing_node_group"):
        layout.label(text="Needs Blender 5.0 or newer", icon='ERROR')
        return
    row = layout.row(align=True)
    row.scale_y = 1.15
    row.operator(COD_OT_bodycam_preset.bl_idname, text="Day", icon='LIGHT_SUN').preset = 'DAY'
    row.operator(COD_OT_bodycam_preset.bl_idname, text="Night", icon='LIGHT_HEMI').preset = 'NIGHT'
    node = bodycam_node(scene)
    if node is None:
        return
    _split(layout)
    body = layout.column()
    body.active = not node.mute
    for panel in ("Lens", "Light", "Color", "Camera"):
        col = body.column(align=True, heading=panel)
        for sock, group, *_ in BODYCAM_PARAMS:
            if group == panel:
                col.prop(node.inputs[sock], "default_value", text=BODYCAM_LABELS.get(sock, sock))
    space = bpy.context.space_data
    if space is not None and space.type == 'VIEW_3D':
        body.prop(space.shading, "use_compositor", text="Viewport")
    row = layout.row()
    row.alignment = 'RIGHT'
    row.label(text="Tip: a 16-20 mm camera lens helps", icon='INFO')


def _draw_advanced(layout, s):
    header, body = layout.panel("cod_adv_search", default_closed=False)
    header.label(text="Texture Search", icon='VIEWZOOM')
    if body:
        _draw_search(body, s)
    header, body = layout.panel("cod_adv_names", default_closed=False)
    header.prop(s, "hash_names", text="")
    header.label(text="Asset Names")
    if body:
        _draw_names(body, s)


def _draw_search(layout, s):
    _split(layout)
    layout.prop(s, "search_folder", text="Export Folder")
    row = layout.row(align=True)
    row.operator(COD_OT_texture_report.bl_idname, text="Texture Paths", icon='TEXT')
    layout.label(text="Lists every texture path, and why any are missing", icon='INFO')


def _draw_c2m(layout, s):
    col = layout.column(align=True)
    row = col.row(align=True)
    row.scale_y = 1.5
    row.operator(COD_OT_import_c2m.bl_idname, text="Import & Shade Map", icon='IMPORT')
    row = col.row(align=True)
    row.scale_y = 1.15
    row.operator(COD_OT_shade_c2m.bl_idname, text="Shade C2M Map", icon='WORLD')
    col = _split(layout.column(align=True))
    col.prop(s, "c2m_file", text="C2M File")
    if not s.c2m_file:
        path = _c2m_file(bpy.context, s)
        col.label(text=("Using " + os.path.basename(path)) if path else "Pick the map's .c2m file",
                  icon='CHECKMARK' if path else 'INFO')
    col.prop(s, "c2m_images", text="Images")
    col = _split(layout.column(align=True))
    col.prop(s, "c2m_layers")
    col.prop(s, "c2m_hide_proxies")
    col.prop(s, "c2m_selected_only")


# --------------------------------------------------------------------------------------------
# Rig: full-body IK + face controls (IW-era characters and viewmodels)
# --------------------------------------------------------------------------------------------
# CoD skeletons come in with tiny bones (the Cast importer gives every joint a stub), so Blender's IK can't run on
# them directly. Each limb gets a hidden chain of real-length bones (hip -> knee -> ankle) that the IK solves, and
# the game bones copy that chain back, blended by an IK/FK slider. The face is bone-driven (IW heads are joint
# rigs fed by performance capture, no blend shapes), so expressions are stored as small per-bone offsets and mixed
# by sliders through hidden "MCH_face_" bones. They are added on top of the pose (Copy Transforms, After Original,
# local space), so the export's facial_* clips keep playing underneath and a slider just pushes the face further.
# Nothing the game animates is re-parented: clips still land on the same bones with the same rest pose.

RIG_PREFIXES = ("CTRL_", "MCH_", "HLP_")
RIG_CON = "CoD Rig"                          # every constraint the rig adds starts with this
RIG_COLL_CTRL, RIG_COLL_FACE, RIG_COLL_MCH = "CoD Controls", "CoD Face", "CoD Rig Mechanics"
WIDGET_COLL = "CoD Rig Widgets"
RIG_LIMBS_KEY, RIG_FACE_KEY, FACE_EXPR_KEY = "cod_rig_limbs", "cod_rig_face", "cod_face_expressions"
IK_PROP, FACE_PROP, EYE_PROP = "ik_", "face_", "eye_look"
RIG_COLL_FACE_DETAIL = "CoD Face Detail"
FACE_MACRO_KEY = "cod_face_macros"      # JSON {"host": armature, "exprs": {name: {bone: [6]}}, "terms": [...]}
FACE_MACRO_PREFIX = "CTRL_face_"
# per-side versions of these presets are what the on-face controls mix
FACE_SPLIT = ("Smile", "Frown", "Stretch", "Pucker", "Brow Raise", "Brow Angry", "Squint", "Cheek Puff", "Sneer",
              "Upper Lip Up", "Lower Lip Down", "Press", "Dimple", "Cheek Raise", "Cheek Suck")
# whole (both-sides) expressions the controls can pull
FACE_WHOLE = ("Blink L", "Blink R", "Jaw Open", "Jaw Left", "Jaw Right", "Jaw Forward", "Upper Lip Up",
              "Lower Lip Down", "Lips Part", "Mouth Left", "Mouth Right", "Roll Upper", "Roll Lower", "Shrug Upper",
              "Shrug Lower", "Mouth Close", "Funnel", "Brow Sad", "Tongue Out", "Nose Flare", "Eye Wide L",
              "Eye Wide R")

# ---- face board ---------------------------------------------------------------------------------------------
# A panel of sliders and joysticks beside the head, like a MetaHuman / ARKit face board. Kinds: 'UP' a slider
# from 0 (bottom) to 1 (top), 'STICK' a joystick. Terms: (axis, sign, expression); X is the character's right
# (the viewer's left), Z is up. Sections run top to bottom; a control is left out when its face has no joints
# for any of its expressions.
FACE_BOARD_COLL = "CoD Face Board"
FACE_BOARD_TRAVEL = 1.2         # slider / stick travel, in the face's "cm" unit
FACE_BOARD_COL = 1.5            # column width
FACE_BOARD_COLS = 8             # columns before a section wraps
FACE_BOARD = (
    ("Brows", (("brow_down.R", 'UP', "Down R", (('Z', 1, "Brow Angry|R"),)),
               ("brow_down.L", 'UP', "Down L", (('Z', 1, "Brow Angry|L"),)),
               ("brow_inner", 'UP', "Inner Up", (('Z', 1, "Brow Sad"),)),
               ("brow_outer.R", 'UP', "Outer R", (('Z', 1, "Brow Raise|R"),)),
               ("brow_outer.L", 'UP', "Outer L", (('Z', 1, "Brow Raise|L"),)))),
    ("Eyes", (("look", 'STICK', "Look", ()),
              ("blink.R", 'UP', "Blink R", (('Z', 1, "Blink R"),)),
              ("blink.L", 'UP', "Blink L", (('Z', 1, "Blink L"),)),
              ("wide.R", 'UP', "Wide R", (('Z', 1, "Eye Wide R"),)),
              ("wide.L", 'UP', "Wide L", (('Z', 1, "Eye Wide L"),)),
              ("squint.R", 'UP', "Squint R", (('Z', 1, "Squint|R"),)),
              ("squint.L", 'UP', "Squint L", (('Z', 1, "Squint|L"),)),
              ("cheek.R", 'UP', "Cheek R", (('Z', 1, "Cheek Raise|R"),)),
              ("cheek.L", 'UP', "Cheek L", (('Z', 1, "Cheek Raise|L"),)))),
    ("Nose", (("sneer.R", 'UP', "Sneer R", (('Z', 1, "Sneer|R"),)),
              ("sneer.L", 'UP', "Sneer L", (('Z', 1, "Sneer|L"),)),
              ("flare", 'UP', "Flare", (('Z', 1, "Nose Flare"),)))),
    ("Mouth", (("corner.R", 'STICK', "Corner R", (('Z', 1, "Smile|R"), ('Z', -1, "Frown|R"),
                                                   ('X', 1, "Stretch|R"), ('X', -1, "Pucker|R"))),
               ("mouth", 'STICK', "Mouth", (('X', 1, "Mouth Right"), ('X', -1, "Mouth Left"),
                                             ('Z', 1, "Upper Lip Up"), ('Z', -1, "Lower Lip Down"))),
               ("corner.L", 'STICK', "Corner L", (('Z', 1, "Smile|L"), ('Z', -1, "Frown|L"),
                                                   ('X', -1, "Stretch|L"), ('X', 1, "Pucker|L"))),
               ("upper_up.R", 'UP', "Upper R", (('Z', 1, "Upper Lip Up|R"),)),
               ("upper_up.L", 'UP', "Upper L", (('Z', 1, "Upper Lip Up|L"),)),
               ("lower_dn.R", 'UP', "Lower R", (('Z', 1, "Lower Lip Down|R"),)),
               ("lower_dn.L", 'UP', "Lower L", (('Z', 1, "Lower Lip Down|L"),)),
               ("press.R", 'UP', "Press R", (('Z', 1, "Press|R"),)),
               ("press.L", 'UP', "Press L", (('Z', 1, "Press|L"),)),
               ("dimple.R", 'UP', "Dimple R", (('Z', 1, "Dimple|R"),)),
               ("dimple.L", 'UP', "Dimple L", (('Z', 1, "Dimple|L"),)),
               ("pucker", 'UP', "Pucker", (('Z', 1, "Pucker|R"), ('Z', 1, "Pucker|L"))),
               ("funnel", 'UP', "Funnel", (('Z', 1, "Funnel"),)),
               ("roll_u", 'UP', "Roll Up", (('Z', 1, "Roll Upper"),)),
               ("roll_d", 'UP', "Roll Dn", (('Z', 1, "Roll Lower"),)),
               ("shrug_u", 'UP', "Shrug Up", (('Z', 1, "Shrug Upper"),)),
               ("shrug_d", 'UP', "Shrug Dn", (('Z', 1, "Shrug Lower"),)),
               ("part", 'UP', "Part", (('Z', 1, "Lips Part"),)),
               ("close", 'UP', "Close", (('Z', 1, "Mouth Close"),)))),
    ("Cheeks", (("puff.R", 'UP', "Puff R", (('Z', 1, "Cheek Puff|R"),)),
                ("puff.L", 'UP', "Puff L", (('Z', 1, "Cheek Puff|L"),)),
                ("suck.R", 'UP', "Suck R", (('Z', 1, "Cheek Suck|R"),)),
                ("suck.L", 'UP', "Suck L", (('Z', 1, "Cheek Suck|L"),)))),
    ("Jaw", (("jaw", 'STICK', "Jaw", (('Z', -1, "Jaw Open"), ('X', 1, "Jaw Right"), ('X', -1, "Jaw Left"))),
             ("jaw_fwd", 'UP', "Forward", (('Z', 1, "Jaw Forward"),)),
             ("tongue", 'UP', "Tongue", (('Z', 1, "Tongue Out"),)))),
)
FACE_BOARD_KIND = {key: kind for _title, items in FACE_BOARD for key, kind, _label, _terms in items}
# Blender runs a driver expression without Python ("simple expression") only if it fits its 256-character field
# and uses plain maths; a longer one needs "Allow Execution". Each face joint's offset is therefore split over up
# to three hidden layers, and every control's pull goes through one short per-expression amount property.
FACE_LAYERS = ("MCH_face_", "MCH_face2_", "MCH_face3_")
FACE_AMOUNT = "_cod_amt_"               # hidden per-expression amount (slider + on-face controls)
DRIVER_EXPR_MAX = 250
FACE_MACRO_REACH = 1.5                  # control travel for a full expression, in the face's "cm" unit

# (key, label, (upper, middle, end), kind) - IW / Treyarch share these joint names since IW4
LIMBS = (("arm_le", "Arm L", ("j_shoulder_le", "j_elbow_le", "j_wrist_le"), 'ARM'),
         ("arm_ri", "Arm R", ("j_shoulder_ri", "j_elbow_ri", "j_wrist_ri"), 'ARM'),
         ("leg_le", "Leg L", ("j_hip_le", "j_knee_le", "j_ankle_le"), 'LEG'),
         ("leg_ri", "Leg R", ("j_hip_ri", "j_knee_ri", "j_ankle_ri"), 'LEG'))
HIPS_BONES = ("j_mainroot", "j_spinelower")

# A face bone is any joint named like a facial feature, or any joint under j_head that isn't gear. Matching by
# name fragments instead of a fixed list picks up each game's own set (IW8/IW9 heads carry 100+ facial joints).
FACE_WORDS = ("jaw", "lip", "mouth", "brow", "eyebrow", "lid", "eyelid", "eye", "cheek", "uppercheek", "nose",
              "nostril", "chin", "tongue", "teeth", "tooth", "smile", "frown", "sneer", "squint", "forehead",
              "temple", "lash", "pucker", "dimple", "face", "facial", "mentalis", "laugh", "corner", "philtrum",
              "levator", "orbic", "zygo", "bucc", "risor", "depress", "platysma", "masset", "nasolab", "blink",
              "chew", "throat", "adam", "ear")
FACE_GEAR = ("helmet", "hat", "hair", "gear", "mask", "goggle", "glass", "nvg", "headset", "cap", "hood",
             "attach", "scarf", "beanie", "balaclava", "bandana", "hood", "radio", "mic", "cam", "visor", "dynamic",
             "proc", "cosmetic")
FACE_GEAR_ANYWHERE = ("strap", "hair", "helmet", "visor")      # chinstrap, fronthairlock ...
_UP_RE = re.compile(r"(top|upper|upr|(^|_)up(_|$|\d)|(^|_)sup(_|$))")
_LOW_RE = re.compile(r"(bot|lower|lwr|under|(^|_)low(_|$|\d)|(^|_)dn(_|$)|down)")

# preset expressions, in slider order
JAW_OPEN_DEG = 24.0                     # Jaw Open at 1; the jaw control can push it to 1.5 (36 deg)
FACE_PRESETS = ("Jaw Open", "Jaw Left", "Jaw Right", "Jaw Forward", "Mouth Open", "Lips Part", "Smile", "Grin", "Laugh", "Upper Lip Up", "Lower Lip Down", "Frown",
                "Stretch", "Pucker", "Sneer", "Cheek Puff", "Dead", "Aa", "Ee", "Oo", "Brow Raise", "Brow Angry",
                "Brow Sad", "Squint", "Blink", "Blink L", "Blink R")
# expressions made of other expressions: (name, ((part, weight), ...))
FACE_COMBOS = (("Mouth Open", (("Jaw Open", 0.6), ("Lips Part", 0.5), ("Upper Lip Up", 0.15))),
               ("Grin", (("Smile", 1.1), ("Upper Lip Up", 0.45), ("Lower Lip Down", 0.35), ("Jaw Open", 0.1),
                         ("Stretch", 0.2), ("Squint", 0.35))),
               ("Laugh", (("Smile", 1.3), ("Jaw Open", 0.45), ("Upper Lip Up", 0.5), ("Lower Lip Down", 0.2),
                          ("Squint", 0.4), ("Brow Raise", 0.2))),
               # slack and lifeless: lids half down, jaw hanging a little open, lips apart, corners sagging
               ("Dead", (("Blink", 0.55), ("Jaw Open", 0.3), ("Lips Part", 0.35), ("Frown", 0.15))),
               ("Aa", (("Jaw Open", 0.75), ("Lips Part", 0.2), ("Upper Lip Up", 0.25))),
               ("Ee", (("Stretch", 0.6), ("Lips Part", 0.35), ("Jaw Open", 0.15), ("Upper Lip Up", 0.2))),
               ("Oo", (("Pucker", 0.9), ("Jaw Open", 0.3), ("Lips Part", 0.25))),
               # face board channels made of others
               ("Mouth Close", (("Lips Part", -0.6),)),
               ("Funnel", (("Pucker", 0.6), ("Lips Part", 0.6))),
               ("Shrug Upper", (("Upper Lip Up", 0.35),)),
               ("Eye Wide L", (("Blink L", -0.3),)),
               ("Eye Wide R", (("Blink R", -0.3),)))


def _tokens(name):
    return [t.rstrip("0123456789") for t in re.split(r"[_.\s]+", name.lower()) if t]


def _name_side(name):
    toks = _tokens(name)
    if any(t in ("le", "l", "left", "lf", "lft") for t in toks):
        return 'L'
    if any(t in ("ri", "r", "right", "rt", "rgt") for t in toks):
        return 'R'
    return None


def _is_face_word(name):
    return any(t == "ear" or t.startswith(FACE_WORDS[:-1]) for t in _tokens(name))


def _is_gear(name):
    low = name.lower()
    return (low.startswith("tag_") or low.endswith("_end") or any(t.startswith(FACE_GEAR) for t in _tokens(name))
            or any(k in low for k in FACE_GEAR_ANYWHERE))


def _descends(name, ancestor, parent):
    p = parent.get(name)
    while p is not None:
        if p == ancestor:
            return True
        p = parent.get(p)
    return False


def _rig_json(rig, key, default):
    try:
        return json.loads(rig.get(key, ""))
    except (TypeError, ValueError):
        return default


def _slug(name):
    return re.sub(r"[^a-z0-9]+", "_", name.lower()).strip("_") or "expr"


def _expr_prop(name):
    return FACE_PROP + _slug(name)


# ---- widgets --------------------------------------------------------------------------------------------------

def _widget(kind):
    name = "WGT_CoD_" + kind
    ob = bpy.data.objects.get(name)
    if ob is not None and ob.type == 'MESH':
        return ob
    verts, edges = [], []

    def ring(a, b, center=(0.0, 0.0, 0.0), r=1.0, n=32):
        start = len(verts)
        for i in range(n):
            t = 2.0 * math.pi * i / n
            v = list(center)
            v[a] += r * math.cos(t)
            v[b] += r * math.sin(t)
            verts.append(v)
            edges.append((start + i, start + (i + 1) % n))

    if kind == 'circle':
        ring(0, 2)
    elif kind == 'sphere':
        ring(0, 1, n=24), ring(0, 2, n=24), ring(1, 2, n=24)
    elif kind == 'eyes':
        ring(0, 2, center=(-1.0, 0.0, 0.0), r=0.45), ring(0, 2, center=(1.0, 0.0, 0.0), r=0.45)
        ring(0, 2, r=1.7, n=40)
    elif kind == 'cube':
        verts = [(x, y, z) for x in (-1, 1) for y in (-1, 1) for z in (-1, 1)]
        edges = [(i, j) for i in range(8) for j in range(i + 1, 8)
                 if sum(a != b for a, b in zip(verts[i], verts[j])) == 1]
    elif kind == 'knob':
        verts = [(-1.0, 0.0, -0.45), (1.0, 0.0, -0.45), (1.0, 0.0, 0.45), (-1.0, 0.0, 0.45)]
        edges = [(0, 1), (1, 2), (2, 3), (3, 0)]
    elif kind == 'diamond':
        verts = [(1, 0, 0), (-1, 0, 0), (0, 1, 0), (0, -1, 0), (0, 0, 1), (0, 0, -1)]
        edges = [(i, j) for i in range(6) for j in range(i + 1, 6) if i // 2 != j // 2]
    me = bpy.data.meshes.new(name)
    me.from_pydata([tuple(float(c) for c in v) for v in verts], edges, [])
    me.update()
    ob = bpy.data.objects.new(name, me)
    coll = bpy.data.collections.get(WIDGET_COLL)
    if coll is None:
        coll = bpy.data.collections.new(WIDGET_COLL)
        bpy.context.scene.collection.children.link(coll)
    coll.hide_viewport = True
    coll.hide_render = True
    coll.objects.link(ob)
    return ob


def _shape(pb, kind, size):
    pb.custom_shape = _widget(kind)
    pb.use_custom_shape_bone_size = False            # CoD bones are stubs; size the shape in rig units instead
    pb.custom_shape_scale_xyz = (size, size, size)


def _bone_collection(arm, name, visible=True):
    coll = arm.collections_all.get(name) if hasattr(arm, "collections_all") else arm.collections.get(name)
    if coll is None:
        coll = arm.collections.new(name)
        coll.is_visible = visible
    return coll


def _drive_prop(owner, path, rig, prop, index=-1):
    owner.driver_remove(path, index)
    fc = owner.driver_add(path, index)
    drv = fc.driver
    drv.type = 'SCRIPTED'
    var = drv.variables.new()
    var.name = "v"
    var.type = 'SINGLE_PROP'
    var.targets[0].id_type = 'OBJECT'
    var.targets[0].id = rig
    var.targets[0].data_path = '["%s"]' % prop
    drv.expression = "v"
    return fc


def _rig_prop(rig, key, value, lo, hi, soft=(0.0, 1.0), desc=""):
    if key not in rig.keys():
        rig[key] = float(value)
    rig.id_properties_ui(key).update(min=lo, max=hi, soft_min=soft[0], soft_max=soft[1], description=desc)
    try:
        rig.property_overridable_library_set('["%s"]' % key, True)
    except (TypeError, AttributeError, RuntimeError):
        pass


# ---- analysis -------------------------------------------------------------------------------------------------

def _rig_scan(rig):
    """Rest data of the game bones (armature space), ignoring anything the rig added."""
    bones = [b for b in rig.data.bones if not b.name.startswith(RIG_PREFIXES)]
    rest = {b.name: Matrix.LocRotScale(b.matrix_local.to_translation(), b.matrix_local.to_quaternion(), None)
            for b in bones}
    parent = {b.name: (b.parent.name if b.parent else None) for b in bones}
    lookup = {b.name.lower(): b.name for b in bones}
    return rest, parent, lookup


def _face_scan(rest, parent, lookup):
    """Face bones, head frame (forward, up, left), a 'centimeter' unit measured from the eyes, and roles."""
    head = lookup.get("j_head")
    face = []
    for name in rest:
        if name == head or name.lower().startswith("tag_") or any(k in name.lower() for k in FACE_GEAR_ANYWHERE) \
                or (_is_gear(name) and not _is_face_word(name)):
            continue
        under_head = head is not None and _descends(name, head, parent)
        if _is_face_word(name) and (under_head or head is None or name.lower().startswith("j_")):
            face.append(name)
        elif under_head and not _is_gear(name):
            face.append(name)                      # unlabelled facial joints under the head
    if head is not None and face:
        # drop joints far from the head (a name match on a body part, e.g. an ear-piece on the shoulder)
        hp = rest[head].translation
        dists = sorted((rest[n].translation - hp).length for n in face)
        limit = dists[len(dists) // 2] * 4.0 + 1e-6
        face = [n for n in face if (rest[n].translation - hp).length <= limit]
    pos = {n: rest[n].translation for n in face}

    def low(n):
        return n.lower()
    eyes = [n for n in face if any(t in ("eye", "eyeball", "eyes") for t in _tokens(n))
            and not any(k in low(n) for k in ("lid", "brow", "lash", "socket", "shadow", "bag", "blink"))]
    head_pos = rest[head].translation if head else (sum((pos[n] for n in face), Vector()) / max(len(face), 1))
    up = Vector((0.0, 0.0, 1.0))
    neck = lookup.get("j_neck")
    if head and neck and neck in rest:
        rise = head_pos - rest[neck].translation
        if rise.length > 1e-6 and rise.normalized().dot(up) < 0.5:
            up = rise.normalized()                 # a head imported on its own lies on its side: up is along the neck
    fwd = Vector((1.0, 0.0, 0.0))
    if eyes:
        f = sum((pos[n] for n in eyes), Vector()) / len(eyes) - head_pos
        f -= up * f.dot(up)
        if f.length > 1e-6:
            fwd = f.normalized()
    left = up.cross(fwd).normalized()

    unit = None
    sided_eyes = {_name_side(n): n for n in eyes if _name_side(n)}
    if 'L' in sided_eyes and 'R' in sided_eyes:
        unit = (pos[sided_eyes['L']] - pos[sided_eyes['R']]).length / 6.3      # adult eye spacing ~6.3 cm
    if not unit and head is not None:
        neck = lookup.get("j_neck")
        if neck:
            unit = (rest[neck].translation - head_pos).length / 10.0
    if not unit and face:
        span = max((pos[n] - head_pos).dot(left) for n in face) - min((pos[n] - head_pos).dot(left) for n in face)
        unit = span / 14.0
    unit = unit or 1.0

    def side(n):
        s = _name_side(n)
        if s:
            return s
        lat = (pos[n] - head_pos).dot(left)
        return 'C' if abs(lat) < 0.35 * unit else ('L' if lat > 0 else 'R')

    roles = {r: [] for r in ("jaw", "chin", "lid_up", "lid_low", "brow", "corner", "lip_up", "lip_low", "cheek",
                             "nose", "eye", "lash_up", "lash_low", "bulge", "puff", "squint", "orbit", "fold",
                             "furrow", "forehead", "lower", "filler")}
    for n in face:
        l = low(n)
        if n in eyes:
            roles["eye"].append(n)
        elif "lash" in l:                                # lashes ride their lid (IW9: j_eyelash_top_le_1 ...)
            roles["lash_low" if _LOW_RE.search(l) else "lash_up"].append(n)
        elif "bulge" in l:                               # j_eyelidbulge: the skin fold above the lid
            roles["bulge"].append(n)
        elif "lid" in l or "blink" in l:
            roles["lid_low" if _LOW_RE.search(l) else "lid_up"].append(n)
        elif "brow" in l:
            roles["brow"].append(n)
        elif "furrow" in l or "procerus" in l or "corrugator" in l:
            roles["furrow"].append(n)
        elif "forehead" in l:
            roles["forehead"].append(n)
        elif "jaw" in l:
            roles["jaw"].append(n)
        elif "chin" in l:
            roles["chin"].append(n)
        elif "puff" in l:                                # deep cheek joints (IW9 j_cheek_puff_le ...)
            roles["puff"].append(n)
        elif "squint" in l:
            roles["squint"].append(n)
        elif "periorbital" in l or "orbic" in l or "undereye" in l:
            roles["orbit"].append(n)
        elif "nasolab" in l or "laugh" in l:             # the smile line from nose to mouth corner
            roles["fold"].append(n)
        elif "cheek" in l:
            roles["cheek"].append(n)
        elif "nose" in l or "nostril" in l or "sneer" in l:
            roles["nose"].append(n)
        elif "corner" in l and "eye" in l:              # j_eyeoutercorner_le_001: the eye's corner, not the mouth's
            roles["orbit"].append(n)
        elif "mouth_add" in l or "mouthadd" in l:
            # IW9+ faces ring the mouth with ~40 j_mouth_add_* skin joints: not corners, but skin between the
            # lips, corners, chin and cheeks - they take a blend of what their neighbours do
            roles["filler"].append(n)
        elif "corner" in l or "smile" in l:
            roles["corner"].append(n)
        elif ("lip" in l or "mouth" in l) and "inside" not in l:
            if _UP_RE.search(l):
                roles["lip_up"].append(n)
            elif _LOW_RE.search(l):
                roles["lip_low"].append(n)
            elif side(n) != 'C':
                roles["corner"].append(n)
        if any(k in l for k in ("lowergum", "tongue", "underlip", "lip_inside", "teeth_bot", "teeth_low")):
            roles["lower"].append(n)                     # inside-mouth parts that open with the jaw
    # no explicit corner joints: the outermost lip joint on each side is the corner
    if not roles["corner"]:
        for s in ('L', 'R'):
            lips = [n for n in roles["lip_up"] + roles["lip_low"] if side(n) == s]
            if lips:
                far = max(lips, key=lambda n: abs((pos[n] - head_pos).dot(left)))
                roles["corner"].append(far)
                for r in ("lip_up", "lip_low"):
                    if far in roles[r]:
                        roles[r].remove(far)
    jaws = sorted(roles["jaw"], key=lambda n: (side(n) != 'C', len(n)))
    roles["jaw"] = jaws[:1]
    roles["jaw_side"] = jaws[1:]                         # IW9 j_jaw_le_1 ...: jawline skin, rides the jaw
    return dict(face=face, head=head, head_pos=head_pos, fwd=fwd, up=up, left=left, unit=unit, side=side,
                roles=roles, eyes=eyes)


def _fill_skin(exprs, rest, scan, k=8):
    """Filler skin joints move as a smooth blend of their nearest classified neighbours (a joint that an
    expression leaves alone counts as staying put), so the skin between the lips, corners, chin and cheeks
    neither lags behind nor tears away. Translation only, blended in armature space."""
    fillers = scan["roles"].get("filler", [])
    if not fillers:
        return
    u = scan["unit"]
    sigma = 1.2 * u
    filler_set = set(fillers)
    anchors = [n for n in scan["face"] if n not in filler_set and n not in scan["eyes"]]
    pos = {n: rest[n].translation for n in scan["face"]}
    # the mouth's seam: skin above it never follows the lower lip and jaw, skin below never the upper lip
    roles, U, hp = scan["roles"], scan["up"], scan["head_pos"]
    corners = roles["corner"] or roles["lip_up"] + roles["lip_low"]
    seam = sum((pos[n] - hp).dot(U) for n in corners) / len(corners) if corners else None

    def h(n):
        return (pos[n] - hp).dot(U) - seam

    near = {}
    for f in fillers:
        pool = anchors
        if seam is not None and abs(h(f)) > 0.3 * u:
            side = 1.0 if h(f) > 0 else -1.0
            pool = [a for a in anchors if h(a) * side > -0.15 * u]
        ds = sorted(((pos[a] - pos[f]).length, a) for a in pool)[:k]
        ws = [(a, math.exp(-(d / sigma) ** 2)) for d, a in ds if d < 3.5 * sigma]
        total = sum(w for _a, w in ws)
        if total > 1e-6:
            near[f] = [(a, w / total) for a, w in ws]
    for expr, data in exprs.items():
        moves = {a: rest[a].to_3x3() @ Vector(v[:3]) for a, v in data.items() if a not in filler_set}
        for f, ws in near.items():
            m = sum((moves[a] * w for a, w in ws if a in moves), Vector())
            if m.length < 1e-7:
                data.pop(f, None)
                continue
            local = rest[f].to_3x3().inverted() @ m
            data[f] = [local[0], local[1], local[2], 0.0, 0.0, 0.0]


def _preset_expressions(rest, parent, scan):
    """Bone offsets for the preset expressions, from the rest layout alone (no per-game tables)."""
    F, U, Lt, u = scan["fwd"], scan["up"], scan["left"], scan["unit"]
    side, roles, head_pos = scan["side"], scan["roles"], scan["head_pos"]
    pos = {n: rest[n].translation for n in scan["face"]}

    def out(n):
        return Lt if side(n) == 'L' else (-Lt if side(n) == 'R' else Vector())

    def closing_rot(angle):
        """Rotation (axis, angle) about the head's lateral axis that swings the front downwards."""
        q = Quaternion(Lt, angle)
        return (Lt, angle) if (q @ F).dot(U) < 0 else (Lt, -angle)

    exprs = {}

    def add(expr, n, move=None, rot=None):
        vals = exprs.setdefault(expr, {}).setdefault(n, [0.0] * 6)
        R = rest[n].to_3x3().inverted()
        if move is not None:
            for i, v in enumerate(R @ move):
                vals[i] += v
        if rot is not None:
            axis, angle = rot
            e = Quaternion((R @ axis).normalized(), angle).to_euler('XYZ')
            for i in range(3):
                vals[3 + i] += e[i]

    def swing(expr, n, pivot, rot, w=1.0):
        """Move a joint rigidly around a pivot (position arcs, orientation turns with it)."""
        axis, angle = rot[0], rot[1] * w
        q = Quaternion(axis, angle)
        add(expr, n, move=(q @ (pos[n] - pivot) + pivot) - pos[n], rot=(axis, angle))

    def height(n):
        return (pos[n] - head_pos).dot(U)

    # Jaw Open: the jaw swings down ~20 deg around its hinge; IW heads parent every face joint to j_head, so the
    # lower lip, chin, jawline, gums and tongue swing along with it (a joint whose parent already swings is skipped)
    # the same lower face follows Jaw Left / Right (the chin swings sideways) and Jaw Forward
    for jaw in roles["jaw"]:
        corner_h = sum(height(n) for n in roles["corner"]) / len(roles["corner"]) if roles["corner"] else None
        # the lower lip rides fully in the middle and less toward the corners, the corners about half, and the
        # upper lip's outer ends a little - so the open mouth rounds off instead of pinching into points
        jaw_hw = max((abs((pos[n] - head_pos).dot(Lt)) for n in roles["corner"]), default=2.5 * u) or 2.5 * u

        def lat(n):
            return min(1.0, abs((pos[n] - head_pos).dot(Lt)) / jaw_hw)
        # below the mouth the skin follows the jaw by height - about half at the corners' line, fully at the
        # chin - so neighbouring joints never differ by much and a wide-open jaw doesn't tear the lower cheek
        chin_h = min((height(n) for n in roles["chin"]), default=None)
        top_h = corner_h if corner_h is not None else height(jaw)
        if chin_h is None or top_h - chin_h < 0.5 * u:
            chin_h = top_h - 3.0 * u

        def by_height(n):
            h = height(n)
            if h >= top_h:
                # above the corners it fades out over ~1.5 cm - but only beside the mouth (the cheeks): skin over
                # the upper lip (philtrum, lip levators, the top of the smile line) stays with the upper lip
                beside = abs((pos[n] - head_pos).dot(Lt)) / jaw_hw
                beside = max(0.0, min(1.0, (beside - 0.85) / 0.45))
                beside = beside * beside * (3.0 - 2.0 * beside)
                return max(0.0, 0.45 * (1.0 - (h - top_h) / (1.5 * u))) * beside
            s = max(0.0, min(1.0, (top_h - h) / (top_h - chin_h)))
            s = s * s * (3.0 - 2.0 * s)
            return 0.45 + 0.55 * s
        riders = {n: 1.0 for n in roles["chin"] + roles["lower"]}
        riders.update({n: by_height(n) for n in roles["jaw_side"] + roles["corner"]})
        riders.update({n: max(by_height(n), 1.0 - 0.4 * lat(n) ** 1.5) for n in roles["lip_low"]})
        for n in roles["fold"] + roles["puff"] + roles["cheek"]:
            w = by_height(n) * (1.0 if n in roles["fold"] else 0.8)
            if w > 0.02:
                riders[n] = w
        riders.update({n: 0.25 * lat(n) ** 2 for n in roles["lip_up"] if lat(n) > 0.3})
        # joints with no recognisable name (hashed bone_1a2b3c4d, inside gums ...) below the mouth ride by height too
        named = {m for r, ms in roles.items() for m in ms}
        for n in scan["face"]:
            if n in named or n in riders or re.search(r"upper|top", n.lower()):
                continue
            w = by_height(n)
            if w > 0.02:
                riders[n] = w
        riders = {n: w for n, w in riders.items()
                  if n != jaw and not _descends(n, jaw, parent) and parent.get(n) not in riders}
        side_turn = math.radians(8.0)
        turn_left = (U, side_turn) if (Quaternion(U, side_turn) @ F).dot(Lt) > 0 else (U, -side_turn)
        for expr, rot in (("Jaw Open", closing_rot(math.radians(JAW_OPEN_DEG))), ("Jaw Left", turn_left),
                          ("Jaw Right", (turn_left[0], -turn_left[1]))):
            add(expr, jaw, rot=rot)
            for n, w in riders.items():
                swing(expr, n, pos[jaw], rot, w)
        add("Jaw Forward", jaw, move=F * 0.6 * u)
        for n, w in riders.items():
            add("Jaw Forward", n, move=F * 0.6 * u * w)

    corner_h = sum(height(n) for n in roles["corner"]) / len(roles["corner"]) if roles["corner"] else None
    for n in roles["corner"]:
        add("Smile", n, move=U * 0.8 * u + out(n) * 0.7 * u - F * 0.3 * u)
        add("Frown", n, move=-U * 0.6 * u + out(n) * 0.15 * u)
        add("Stretch", n, move=out(n) * 0.8 * u - U * 0.15 * u - F * 0.1 * u)
        add("Pucker", n, move=-out(n) * 0.6 * u + F * 0.35 * u)
    # the lips carry the corner's motion toward the middle: all of it at the corner, none at the centre of the lip,
    # so a smile curves the whole mouth instead of pinching the corners while the lips stay flat
    # measured from the mouth's own midline: j_head can sit off it (MW2019's Zedra by ~0.2 cm), which made one
    # side of the smile half as strong as the other
    mid = (sum((pos[n] for n in roles["corner"]), Vector()) / len(roles["corner"])
           if len(roles["corner"]) >= 2 else head_pos)
    half_w = max((abs((pos[n] - mid).dot(Lt)) for n in roles["corner"]), default=2.5 * u) or 2.5 * u
    for n in roles["lip_up"] + roles["lip_low"]:
        w = min(1.0, abs((pos[n] - mid).dot(Lt)) / half_w) ** 1.5
        if w < 0.05:
            continue
        lower = n in roles["lip_low"]
        add("Smile", n, move=(U * (0.7 if lower else 0.8) * u + out(n) * 0.6 * u - F * 0.25 * u) * w)
        add("Frown", n, move=(-U * (0.6 if lower else 0.5) * u + out(n) * 0.1 * u) * w)
        add("Stretch", n, move=(out(n) * 0.7 * u - F * 0.1 * u) * w)
    for n in roles["fold"]:
        # the smile line follows the corner: most near the mouth, less up by the nose
        near = 1.0 if corner_h is None else max(0.3, min(1.0, 1.0 - (height(n) - corner_h) / (3.0 * u)))
        add("Smile", n, move=(U * 0.45 * u + out(n) * 0.35 * u - F * 0.1 * u) * near)
        add("Frown", n, move=-U * 0.25 * u * near)
        add("Stretch", n, move=out(n) * 0.35 * u * near)
        add("Pucker", n, move=(-out(n) * 0.2 * u + F * 0.1 * u) * near)
        add("Sneer", n, move=U * 0.3 * u * (1.3 - near))
        add("Cheek Puff", n, move=out(n) * 0.2 * u)
    for n in roles["cheek"]:
        add("Smile", n, move=U * 0.4 * u + out(n) * 0.15 * u)
        add("Squint", n, move=U * 0.3 * u)
        add("Sneer", n, move=U * 0.15 * u)
        add("Cheek Puff", n, move=out(n) * 0.3 * u + F * 0.1 * u)
    for n in roles["puff"]:
        add("Cheek Puff", n, move=out(n) * 0.7 * u + F * 0.2 * u)
        add("Smile", n, move=U * 0.2 * u)
    for n in roles["squint"]:
        add("Squint", n, move=U * 0.35 * u)
        add("Smile", n, move=U * 0.2 * u)
    for n in roles["orbit"]:
        add("Squint", n, move=U * 0.3 * u)
        add("Smile", n, move=U * 0.2 * u)
    for n in roles["lip_up"]:
        add("Smile", n, move=U * 0.1 * u)
        add("Pucker", n, move=F * 0.45 * u - out(n) * 0.2 * u)
        add("Sneer", n, move=U * (0.45 if side(n) != 'C' else 0.3) * u)
    for n in roles["lip_low"]:
        add("Frown", n, move=F * 0.15 * u)
        add("Pucker", n, move=F * 0.4 * u - out(n) * 0.2 * u)
    for n in roles["chin"]:
        add("Frown", n, move=U * 0.2 * u)
    for n in roles["nose"]:
        add("Sneer", n, move=U * 0.3 * u)
    for n in roles["forehead"]:
        add("Brow Raise", n, move=U * 0.45 * u)
        add("Brow Sad", n, move=U * 0.2 * u)
    for n in roles["furrow"]:
        add("Brow Raise", n, move=U * 0.5 * u)
        add("Brow Angry", n, move=-U * 0.35 * u - out(n) * 0.35 * u)
        add("Brow Sad", n, move=U * 0.5 * u)

    # brows: inner half (nearest the midline) and outer half per side
    for s in ('L', 'R', 'C'):
        brows = sorted((n for n in roles["brow"] if side(n) == s),
                       key=lambda n: abs((pos[n] - head_pos).dot(Lt)))
        for i, n in enumerate(brows):
            inner = s == 'C' or len(brows) == 1 or i < (len(brows) + 1) // 2
            add("Brow Raise", n, move=U * 0.8 * u)
            if inner:
                add("Brow Angry", n, move=-U * 0.45 * u - out(n) * 0.3 * u)
                add("Brow Sad", n, move=U * 0.55 * u)
            else:
                add("Brow Angry", n, move=-U * 0.15 * u)
                add("Brow Sad", n, move=-U * 0.1 * u)
    for n in roles["bulge"]:
        add("Brow Raise", n, move=U * 0.3 * u)

    # blinks: the lids slide over the eyeball, so they swing around its centre - the upper lid down to meet the
    # lower one, the lower lid a little up; lashes and the lid bulge ride along
    for s in ('L', 'R'):
        ups = [n for n in roles["lid_up"] if side(n) == s]
        lows = [n for n in roles["lid_low"] if side(n) == s]
        eye = next((n for n in roles["eye"] if side(n) == s), None)
        if not ups:
            continue
        if eye is not None and any((pos[n] - pos[eye]).length > 0.3 * u for n in ups):
            c = pos[eye]                                 # lids on the eye's surface (IW9); hinged lids fall through

            def elev(n):
                v = pos[n] - c
                return math.atan2(v.dot(U), v.dot(F))
            top = sum(elev(n) for n in ups) / len(ups)
            bot = sum(elev(n) for n in lows) / len(lows) if lows else top - math.radians(55.0)
            meet = bot + 0.2 * (top - bot)               # the lids close a little above the lower lid's rest line
            turn = {n: closing_rot(max(elev(n) - meet, 0.0)) for n in ups}
            for n in lows:                                                           # the lower lid swings up
                axis, angle = closing_rot(max(meet - elev(n), 0.0))
                turn[n] = (axis, -angle)

            def nearest(n, group):
                return min(group, key=lambda m: (pos[m] - pos[n]).length)
            riders = [(n, nearest(n, ups), 1.0) for n in roles["lash_up"] + roles["bulge"] if side(n) == s]
            riders = [(n, m, 0.5 if n in roles["bulge"] else 1.0) for n, m, _ in riders]
            if lows:
                riders += [(n, nearest(n, lows), 1.0) for n in roles["lash_low"] if side(n) == s]
            for expr, w_up, w_low in (("Blink " + s, 1.0, 1.0), ("Blink", 1.0, 1.0), ("Squint", 0.25, 1.2),
                                      ("Smile", 0.0, 0.5)):
                for n in ups + lows:
                    w = w_up if n in ups else w_low
                    if w:
                        swing(expr, n, c, turn[n], w)
                for n, m, share in riders:
                    w = (w_up if m in ups else w_low) * share
                    if w:
                        swing(expr, n, c, turn[m], w)
            continue
        for n in ups:                                    # no eyeball joint: hinge at the lid itself
            rot = closing_rot(math.radians(32.0))
            add("Blink " + s, n, rot=rot)
            add("Blink", n, rot=rot)
            add("Squint", n, rot=(rot[0], rot[1] * 0.25))
        for n in lows:
            rot = closing_rot(math.radians(10.0))
            rot = (rot[0], -rot[1])
            add("Blink " + s, n, rot=rot)
            add("Blink", n, rot=rot)
            add("Squint", n, rot=(rot[0], rot[1] * 1.5))
    # lips: part them without the jaw, show the upper teeth, drop the lower lip (the corners stay mostly put, the
    # middle of each lip moves most)
    half_width = max((abs((pos[n] - head_pos).dot(Lt)) for n in roles["corner"]), default=2.5 * u) or 2.5 * u

    def middle(n):
        return max(0.35, 1.0 - abs((pos[n] - head_pos).dot(Lt)) / half_width)
    for n in roles["lip_up"]:
        add("Lips Part", n, move=U * 0.35 * u * middle(n))
        add("Upper Lip Up", n, move=(U * 0.6 * u - F * 0.05 * u) * max(middle(n), 0.7))
    for n in roles["lip_low"]:
        add("Lips Part", n, move=-U * 0.5 * u * middle(n))
        add("Lower Lip Down", n, move=(-U * 0.6 * u + F * 0.1 * u) * max(middle(n), 0.7))
    for n in roles["lower"]:
        if "lip_inside" in n.lower():            # the inner lip goes with the outer one, so the lip doesn't roll out
            add("Lips Part", n, move=-U * 0.4 * u * middle(n))
            add("Lower Lip Down", n, move=-U * 0.5 * u * max(middle(n), 0.7))
    for n in roles["fold"]:
        near = 1.0 if corner_h is None else max(0.3, min(1.0, 1.0 - (height(n) - corner_h) / (3.0 * u)))
        add("Upper Lip Up", n, move=U * 0.25 * u * (1.3 - near))
    for n in roles["chin"]:
        add("Lower Lip Down", n, move=-U * 0.1 * u)
    for n in roles["corner"]:
        add("Upper Lip Up", n, move=U * 0.1 * u)
        add("Lower Lip Down", n, move=-U * 0.1 * u)

    # face board channels (ARKit names in brackets)
    for n in roles["corner"] + roles["lip_up"] + roles["lip_low"] + roles["fold"]:      # mouthLeft / mouthRight
        w = 1.0 if n in roles["corner"] else 0.7 if n in roles["fold"] else 0.9
        add("Mouth Left", n, move=Lt * 0.6 * u * w)
        add("Mouth Right", n, move=-Lt * 0.6 * u * w)
    for n in roles["chin"]:
        add("Mouth Left", n, move=Lt * 0.2 * u)
        add("Mouth Right", n, move=-Lt * 0.2 * u)
    tuck = closing_rot(math.radians(25.0))                 # turns a joint's front edge down
    for n in roles["lip_up"]:                               # mouthRollUpper: the upper lip tucks in over the teeth
        add("Roll Upper", n, move=-F * 0.2 * u - U * 0.15 * u, rot=tuck)
        add("Press", n, move=-U * 0.15 * u)                 # mouthPress: the lips push together
    for n in roles["lip_low"]:                              # mouthRollLower / mouthShrugLower
        add("Roll Lower", n, move=-F * 0.2 * u + U * 0.15 * u, rot=(tuck[0], -tuck[1]))
        add("Shrug Lower", n, move=U * 0.35 * u + F * 0.1 * u)
        add("Press", n, move=U * 0.15 * u)
    for n in roles["chin"]:
        add("Shrug Lower", n, move=U * 0.4 * u + F * 0.1 * u)
    for n in roles["corner"]:
        add("Press", n, move=out(n) * 0.15 * u)
        add("Dimple", n, move=-F * 0.35 * u + out(n) * 0.25 * u)     # mouthDimple: the corner pulls back
    for n in roles["fold"]:
        add("Dimple", n, move=-F * 0.15 * u)
    for n in roles["cheek"] + roles["puff"]:                # cheekSuck: hollow cheeks
        add("Cheek Suck", n, move=-out(n) * 0.45 * u - F * 0.1 * u)
    for n in roles["cheek"] + roles["squint"] + roles["orbit"]:      # cheekSquint: the cheeks lift
        add("Cheek Raise", n, move=U * 0.45 * u + F * 0.05 * u)
    for n in roles["lid_low"] + roles["lash_low"]:
        add("Cheek Raise", n, move=U * 0.12 * u)
    for n in roles["nose"]:                                 # nostrils flare out
        add("Nose Flare", n, move=out(n) * 0.2 * u)
    tongue = [n for n in scan["face"] if "tongue" in n.lower()]
    for n in tongue:                                        # tongueOut: the root slides out, the rest follows it
        if parent.get(n) not in tongue:
            add("Tongue Out", n, move=F * 1.5 * u - U * 0.2 * u)
    _fill_skin(exprs, rest, scan)
    for name, parts in FACE_COMBOS:
        for part, w in parts:
            for n, vals in exprs.get(part, {}).items():
                acc = exprs.setdefault(name, {}).setdefault(n, [0.0] * 6)
                for i in range(6):
                    acc[i] += vals[i] * w
    return {k: v for k, v in exprs.items() if v}


# ---- on-face controls ------------------------------------------------------------------------------------------
# A handful of controls in front of the face, each mixing whole expressions per side, the way face rigs usually
# work: drag a mouth corner up to smile or down to frown, out to stretch, in to pucker; a brow up / down; an eyelid
# control down to blink; a cheek up to squint or out to puff; the nose up to sneer; the lips forward to pucker.

def _face_macro_plan(rest, parent, scan, jaw_control=True, board=True):
    """(expression bank, controls). controls: (key, CoD-space matrix, [(channel, gain, expression)])."""
    presets = _preset_expressions(rest, parent, scan)
    side = scan["side"]
    bank = {}
    for name in FACE_SPLIT:
        for s in ('L', 'R'):
            part = {}
            for b, vals in presets.get(name, {}).items():
                w = 1.0 if side(b) == s else 0.5 if side(b) == 'C' else 0.0
                if w:
                    part[b] = [v * w for v in vals]
            if part:
                bank["%s|%s" % (name, s)] = part
    for name in FACE_WHOLE:
        if presets.get(name):
            bank[name] = presets[name]
    F, U, Lt, u = scan["fwd"], scan["up"], scan["left"], scan["unit"]
    roles = scan["roles"]
    frame = Matrix((-Lt, F, U)).transposed().to_4x4()          # X = character's right, Y = out of the face, Z = up
    g = 1.0 / (FACE_MACRO_REACH * u)

    def mean(names):
        names = list(names)
        return sum((rest[n].translation for n in names), Vector()) / len(names) if names else None

    controls = []

    def add(key, p, terms):
        terms = [t for t in terms if t[2] in bank]
        if p is not None and terms:
            m = frame.copy()
            m.translation = p
            controls.append((key, m, terms))

    for s, out in (('L', -1.0), ('R', 1.0)):                     # outward is -X on the left, +X on the right
        corner = mean(n for n in roles["corner"] if side(n) == s)
        add("mouth_corner." + s, corner + F * 1.2 * u if corner is not None else None,
            [("LOC_Z", g, "Smile|" + s), ("LOC_Z", -g, "Frown|" + s), ("LOC_X", out * g, "Stretch|" + s),
             ("LOC_X", -out * g, "Pucker|" + s)])
        brow = mean(n for n in roles["brow"] if side(n) == s)
        add("brow." + s, brow + F * 1.2 * u + U * 0.6 * u if brow is not None else None,
            [("LOC_Z", g, "Brow Raise|" + s), ("LOC_Z", -g, "Brow Angry|" + s)])
        eye = mean(n for n in roles["eye"] if side(n) == s)
        if eye is None:
            eye = mean(n for n in roles["lid_up"] if side(n) == s)
        add("eyelid." + s, eye + U * 1.6 * u + F * 2.2 * u if eye is not None else None,
            [("LOC_Z", -g, "Blink " + s)])
        cheek = mean(n for n in roles["cheek"] if side(n) == s)
        add("cheek." + s, cheek + F * 1.2 * u if cheek is not None else None,
            [("LOC_Z", g, "Squint|" + s), ("LOC_X", out * g, "Cheek Puff|" + s)])
    nose = mean(roles["nose"])
    add("nose", nose + F * 1.5 * u if nose is not None else None, [("LOC_Z", g, "Sneer|L"), ("LOC_Z", g, "Sneer|R")])
    # upper lip: up shows the teeth, forward puckers; lower lip: down drops it, forward puckers
    top = mean(roles["lip_up"])
    add("lip_upper", top + F * 1.6 * u + U * 0.4 * u if top is not None else None,
        [("LOC_Z", g, "Upper Lip Up"), ("LOC_Y", g * 0.5, "Pucker|L"), ("LOC_Y", g * 0.5, "Pucker|R")])
    bottom = mean(roles["lip_low"])
    add("lip_lower", bottom + F * 1.6 * u - U * 0.4 * u if bottom is not None else None,
        [("LOC_Z", -g, "Lower Lip Down"), ("LOC_Y", g * 0.5, "Pucker|L"), ("LOC_Y", g * 0.5, "Pucker|R")])
    if jaw_control and roles["jaw"]:
        chin = mean(roles["chin"])
        if chin is None:
            chin = rest[roles["jaw"][0]].translation + F * 8.0 * u - U * 5.0 * u
        # down opens the whole mouth (jaw, lower lip, chin, gums, tongue); sideways and forward shift the jaw
        add("jaw", chin + F * 1.5 * u - U * 1.0 * u,
            [("LOC_Z", -g, "Jaw Open"), ("LOC_X", -g, "Jaw Left"), ("LOC_X", g, "Jaw Right"),
             ("LOC_Y", g, "Jaw Forward")])
    if board and getattr(getattr(bpy.context.scene, "cod_autoshader", None), "face_board", True):
        controls += _face_board_controls(bank, scan, frame)
    return bank, controls


def face_board_layout(bank, has_eyes, u):
    """(items, lines, labels, (width, height)). Board coordinates: x to the viewer's right, z up, origin at the
    top-left corner. items: (key, kind, (x, z) rest position, terms); lines: segments; labels: (text, x, z, size)."""
    R, W = FACE_BOARD_TRAVEL * u, FACE_BOARD_COL * u
    pad, title_h, label_h = 0.6 * u, 0.9 * u, 0.7 * u
    items, lines, labels = [], [], []

    def rect(x0, z0, x1, z1):
        lines.extend((((x0, z0), (x1, z0)), ((x1, z0), (x1, z1)), ((x1, z1), (x0, z1)), ((x0, z1), (x0, z0))))

    z = -pad
    width = 0.0
    sections = []
    for title, entries in FACE_BOARD:
        live = [e for e in entries if (e[0] == "look" and has_eyes) or any(x[2] in bank for x in e[3])]
        if not live:
            continue
        top = z
        labels.append((title, pad + 0.1 * u, z - 0.45 * u, 0.5 * u))
        z -= title_h
        rows, row, cols = [], [], 0
        for e in live:
            span = 2 if e[1] == 'STICK' else 1
            if cols + span > FACE_BOARD_COLS and row:
                rows.append(row)
                row, cols = [], 0
            row.append(e)
            cols += span
        if row:
            rows.append(row)
        for row in rows:
            tall = any(e[1] == 'STICK' for e in row)
            h = (2.0 * R if tall else R) + label_h + 0.4 * u
            x = pad
            for key, kind, label, terms in row:
                if kind == 'STICK':
                    cx, cz = x + W, z - 0.2 * u - R
                    rect(cx - R, cz - R, cx + R, cz + R)
                    lines.extend((((cx - R, cz), (cx + R, cz)), ((cx, cz - R), (cx, cz + R))))
                    labels.append((label, cx, cz - R - 0.5 * u, 0.32 * u))
                    items.append((key, kind, (cx, cz), terms))
                    x += 2 * W
                else:
                    cx, base = x + 0.5 * W, z - 0.2 * u - (h - label_h - 0.4 * u)
                    rect(cx - 0.12 * u, base, cx + 0.12 * u, base + R)
                    labels.append((label, cx, base - 0.5 * u, 0.28 * u))
                    items.append((key, kind, (cx, base), terms))
                    x += W
            width = max(width, x)
            z -= h
        sections.append((top, z))
        z -= 0.3 * u
    width += pad
    for top, bottom in sections:                        # a box round each section, once the width is known
        rect(pad * 0.5, bottom + 0.1 * u, width - pad * 0.5, top)
    height = -z + pad * 0.5
    rect(0.0, -height, width, 0.0)
    return items, lines, labels, (width, height)


def _face_board_controls(bank, scan, frame):
    """The board frame and its controls, placed beside the head (the character's left, the viewer's right)."""
    u, F, U, Lt = scan["unit"], scan["fwd"], scan["up"], scan["left"]
    items, _lines, _labels, (width, height) = face_board_layout(bank, bool(scan["eyes"]), u)
    if not items:
        return []
    origin = scan["head_pos"] + Lt * 11.0 * u + U * (8.0 * u + 0.5 * height) + F * 2.0 * u
    m = frame.copy()
    m.translation = origin
    controls = [("board", m, [])]
    R = FACE_BOARD_TRAVEL * u
    for key, kind, (x, z), terms in items:
        c = frame.copy()
        c.translation = origin + Lt * x + U * z
        controls.append(("board_" + key, c, [("LOC_" + axis, sign / R, expr) for axis, sign, expr in terms
                                              if expr in bank]))
    return controls


def _face_macro_edit(eb, controls, parent_name, M, u):
    """Create the control bones (edit mode of the host armature)."""
    for key, m, _ in controls:
        name = FACE_MACRO_PREFIX + key
        eb.new(name)
        e = eb[name]
        e.head = (0.0, 0.0, 0.0)
        e.tail = (0.0, 0.5 * u, 0.0)
        e.matrix = M @ m
        frame = FACE_MACRO_PREFIX + "board"
        if key.startswith("board_") and frame in eb:
            e.parent = eb[frame]                          # move the board and its controls come along
        else:
            e.parent = eb[parent_name] if parent_name in eb else None
        e.use_deform = False


def _face_macro_pose(host, rig, controls, bank, u, coll):
    """Shapes, travel limits and the driver terms (object / pose mode of the host)."""
    all_colls = list(host.data.collections_all) if hasattr(host.data, "collections_all") else list(host.data.collections)
    terms = []
    board_coll = None
    for key, _, ts in controls:
        name = FACE_MACRO_PREFIX + key
        pb = host.pose.bones.get(name)
        if pb is None:
            continue
        if key == "board" or key.startswith("board_"):
            if board_coll is None:
                board_coll = _bone_collection(host.data, FACE_BOARD_COLL)
            _face_board_pose(host, rig, pb, key, bank, u, board_coll, all_colls,
                             any(k == "board_look" for k, _m, _t in controls))
            for channel, gain, expr in ts:
                terms.append([expr, name, channel, gain])
            continue
        _shape(pb, 'circle', 0.7 * u)
        pb.bone.color.palette = 'THEME04' if key.endswith(".L") else 'THEME01' if key.endswith(".R") else 'THEME09'
        pb.lock_rotation = (True, True, True)
        pb.lock_scale = (True, True, True)
        lim = pb.constraints.new('LIMIT_LOCATION')
        lim.name = RIG_CON + " Limit"
        reach = FACE_MACRO_REACH * u * (1.0 if key == "jaw" else 1.5)
        for ax in "xyz":
            setattr(lim, "use_min_" + ax, True)
            setattr(lim, "use_max_" + ax, True)
            setattr(lim, "min_" + ax, -reach)
            setattr(lim, "max_" + ax, reach)
        lim.owner_space = 'LOCAL'
        lim.use_transform_limit = True
        for c in all_colls:
            if c is not coll:
                c.unassign(pb.bone)
        coll.assign(pb.bone)
        for channel, gain, expr in ts:
            terms.append([expr, name, channel, gain])
    rig[FACE_MACRO_KEY] = json.dumps({"host": host.name, "exprs": bank, "terms": terms})
    _face_update_drivers(rig)


def _board_widget(host, bank, has_eyes, u):
    """The board's frame, section boxes, slider tracks, stick squares and labels, as one wire mesh in the frame
    bone's space (x = the character's right, z = up)."""
    name = "WGT_CoD_board_" + host.name[:40]
    old = bpy.data.objects.get(name)
    if old is not None:
        me_old = old.data
        bpy.data.objects.remove(old)
        if me_old is not None and me_old.users == 0:
            bpy.data.meshes.remove(me_old)
    _items, lines, labels, _size = face_board_layout(bank, has_eyes, u)
    verts, edges = [], []
    for (x0, z0), (x1, z1) in lines:
        verts += [(-x0, 0.0, z0), (-x1, 0.0, z1)]
        edges.append((len(verts) - 2, len(verts) - 1))
    for text, x, z, size in labels:
        cu = bpy.data.curves.new("cod_board_label", 'FONT')
        cu.body, cu.size, cu.align_x, cu.fill_mode = text, size, 'CENTER' if size < 0.4 * u else 'LEFT', 'NONE'
        tmp = bpy.data.objects.new("cod_board_label", cu)
        try:
            me = bpy.data.meshes.new_from_object(tmp)
            base = len(verts)
            verts += [(-(x + v.co.x), 0.0, z + v.co.y) for v in me.vertices]
            edges += [(base + e.vertices[0], base + e.vertices[1]) for e in me.edges]
            bpy.data.meshes.remove(me)
        except RuntimeError:
            pass
        finally:
            bpy.data.objects.remove(tmp)
            bpy.data.curves.remove(cu)
    me = bpy.data.meshes.new(name)
    me.from_pydata(verts, edges, [])
    me.update()
    ob = bpy.data.objects.new(name, me)
    _widget('circle')                                     # makes sure the widget collection exists
    bpy.data.collections[WIDGET_COLL].objects.link(ob)
    return ob


def _face_board_pose(host, rig, pb, key, bank, u, coll, all_colls, has_eyes):
    for c in all_colls:
        if c is not coll:
            c.unassign(pb.bone)
    coll.assign(pb.bone)
    pb.lock_rotation = (True, True, True)
    pb.lock_scale = (True, True, True)
    if key == "board":
        pb.custom_shape = _board_widget(host, bank, has_eyes, u)
        pb.use_custom_shape_bone_size = False
        pb.custom_shape_scale_xyz = (1.0, 1.0, 1.0)
        pb.bone.color.palette = 'THEME10'
        return
    kind = FACE_BOARD_KIND.get(key[len("board_"):], 'UP')
    R = FACE_BOARD_TRAVEL * u
    if kind == 'STICK':
        _shape(pb, 'circle', 0.32 * u)
        pb.bone.color.palette = 'THEME09'
    else:
        _shape(pb, 'knob', 0.3 * u)
        pb.bone.color.palette = 'THEME04' if key.endswith(".L") else 'THEME01' if key.endswith(".R") else 'THEME09'
    lim = pb.constraints.new('LIMIT_LOCATION')
    lim.name = RIG_CON + " Limit"
    span = {'STICK': {'x': (-R, R), 'y': (0.0, 0.0), 'z': (-R, R)},
            'UP': {'x': (0.0, 0.0), 'y': (0.0, 0.0), 'z': (0.0, R)}}[kind]
    for ax, (lo, hi) in span.items():
        setattr(lim, "use_min_" + ax, True)
        setattr(lim, "use_max_" + ax, True)
        setattr(lim, "min_" + ax, lo)
        setattr(lim, "max_" + ax, hi)
    lim.owner_space = 'LOCAL'
    lim.use_transform_limit = True
    if key == "board_look" and "CTRL_eyes" in rig.pose.bones:
        # the Look stick moves the eyes' look-at target (both are laid out x across, z up)
        eyes = rig.pose.bones["CTRL_eyes"]
        for c in list(eyes.constraints):
            if c.name == RIG_CON + " Board Look":
                eyes.constraints.remove(c)
        con = eyes.constraints.new('TRANSFORM')
        con.name = RIG_CON + " Board Look"
        con.target, con.subtarget = host, pb.name
        con.owner_space = con.target_space = 'LOCAL'
        con.map_from = con.map_to = 'LOCATION'
        con.mix_mode = 'ADD'
        reach = 18.0 * u                                  # ~30 deg at the target's 30 cm
        for c in "xyz":
            setattr(con, "from_min_" + c, -R)
            setattr(con, "from_max_" + c, R)
            setattr(con, "to_min_" + c, -reach if c != 'y' else 0.0)
            setattr(con, "to_max_" + c, reach if c != 'y' else 0.0)
            setattr(con, "map_to_%s_from" % c, c.upper())


def _remove_face_macros(rig):
    """Take the on-face controls out of the CoD armature (the Rigify rig carries its own)."""
    names = [b.name for b in rig.data.bones if b.name.startswith(FACE_MACRO_PREFIX)]
    if FACE_MACRO_KEY in rig.keys():
        del rig[FACE_MACRO_KEY]
    _face_update_drivers(rig)
    if names:
        eb = _edit_mode(rig)
        for n in names:
            if n in eb:
                eb.remove(eb[n])
        bpy.ops.object.mode_set(mode='OBJECT')


# ---- neck skin ------------------------------------------------------------------------------------------------
# IW heads carry neck-skin joints under j_neck (j_neck_ct_1, j_neck_le_1/2, j_neck_rt_1/2) that the engine turns
# part of the way with the head every frame. Blender has no such solver, so without help the skin under the jaw
# stays with the neck and tears when the head turns. Each one now adds a share of the head's own turn, more the
# closer it sits to the head.

def setup_neck_skin(rig):
    bones = rig.data.bones
    neck, head = bones.get("j_neck"), bones.get("j_head")
    if neck is None or head is None:
        return 0
    up = Vector((0.0, 0.0, 1.0))
    h0, h1 = neck.head_local.dot(up), head.head_local.dot(up)
    span = max(h1 - h0, 1e-6)
    done = 0
    for b in neck.children:
        if b is head or b.name.startswith(RIG_PREFIXES) or b.name.lower().startswith("tag_") or _is_gear(b.name):
            continue
        pb = rig.pose.bones[b.name]
        for c in list(pb.constraints):
            if c.name == RIG_CON + " Neck Follow":
                pb.constraints.remove(c)
        share = max(0.2, min(0.8, (b.head_local.dot(up) - h0) / span))
        con = pb.constraints.new('COPY_ROTATION')
        con.name = RIG_CON + " Neck Follow"
        con.target, con.subtarget = rig, head.name
        con.target_space = 'LOCAL_OWNER_ORIENT'          # the head's turn, expressed in this joint's own axes
        con.owner_space = 'LOCAL'
        con.mix_mode = 'ADD'
        con.influence = share
        done += 1
    return done


# ---- build / remove -------------------------------------------------------------------------------------------

def _rig_constraints(rig):
    return [c for pb in rig.pose.bones for c in pb.constraints if c.name.startswith(RIG_CON)]


class _RigPaused:
    """Mute the rig's constraints while something reads the raw pose (the Cast importer measures rest from it)."""
    def __init__(self, rig):
        self.cons = [c for c in _rig_constraints(rig) if not c.mute] if rig is not None else []

    def __enter__(self):
        for c in self.cons:
            c.mute = True
        if self.cons:
            bpy.context.view_layer.update()
        return self

    def __exit__(self, *exc):
        for c in self.cons:
            c.mute = False
        return False


def remove_rig(rig, keep_expressions=True):
    if BS_KEY in rig.keys():
        remove_shape_board(rig)                   # its board bones go below; its drivers must go with them
    ad = rig.animation_data
    if ad is not None:
        for fc in list(ad.drivers):
            p = fc.data_path
            if RIGIFY_CON in p:
                continue
            if RIG_CON in p or p.startswith('["%s' % FACE_AMOUNT) or \
                    any('pose.bones["%s' % x in p for x in RIG_PREFIXES):
                ad.drivers.remove(fc)
    for pb in rig.pose.bones:
        for c in list(pb.constraints):
            if c.name.startswith(RIG_CON) and not c.name.startswith(RIGIFY_CON):
                pb.constraints.remove(c)
        if pb.custom_shape is not None and pb.custom_shape.name.startswith("WGT_CoD_"):
            pb.custom_shape = None
            pb.use_custom_shape_bone_size = True
    names = [b.name for b in rig.data.bones if b.name.startswith(RIG_PREFIXES)]
    if names:
        eb = _edit_mode(rig)
        for n in names:
            if n in eb:
                eb.remove(eb[n])
        bpy.ops.object.mode_set(mode='OBJECT')
    arm = rig.data
    get_coll = arm.collections_all.get if hasattr(arm, "collections_all") else arm.collections.get
    for bone_name, homes in _rig_json(rig, "cod_rig_face_homes", {}).items():
        bone = arm.bones.get(bone_name)
        for home in homes:
            coll = get_coll(home)
            if bone is not None and coll is not None:
                coll.assign(bone)
    for name in (RIG_COLL_CTRL, RIG_COLL_FACE, RIG_COLL_MCH, RIG_COLL_FACE_DETAIL):
        coll = arm.collections_all.get(name) if hasattr(arm, "collections_all") else arm.collections.get(name)
        if coll is not None:
            arm.collections.remove(coll)
    for key in list(rig.keys()):
        if key.startswith(FACE_AMOUNT):
            del rig[key]
            continue
        if key.startswith(IK_PROP) or key in (EYE_PROP, RIG_LIMBS_KEY, RIG_FACE_KEY, "cod_rig_built", "cod_rig_face_homes", FACE_MACRO_KEY) or (
                not keep_expressions and (key.startswith(FACE_PROP) or key == FACE_EXPR_KEY)):
            del rig[key]


def _pole_angle(base_head, base_tail, base_x, ik_tail, pole):
    axis = base_tail - base_head
    projected = (ik_tail - base_head).cross(pole - base_head).cross(axis)
    if projected.length < 1e-9 or base_x.length < 1e-9:
        return 0.0
    angle = base_x.angle(projected)
    return -angle if base_x.cross(projected).dot(axis) < 0 else angle


def build_rig(context, rig, body=True, face=True, report=None, macros=True):
    report = report or (lambda *a: None)
    if context.object is not None and context.object.mode != 'OBJECT':
        bpy.ops.object.mode_set(mode='OBJECT')
    remove_rig(rig, keep_expressions=True)
    rest, parent, lookup = _rig_scan(rig)
    pos = {n: m.translation.copy() for n, m in rest.items()}
    scan = _face_scan(rest, parent, lookup) if face else None
    if scan is not None and len(scan["face"]) < 3:
        scan = None
    fwd = scan["fwd"] if scan is not None else Vector((1.0, 0.0, 0.0))     # CoD characters face +X

    limbs = []
    if body and RIGIFY_KEY in rig.keys():
        body = False                                  # the Rigify rig already drives arms and legs
    if body:
        for key, label, chain, kind in LIMBS:
            names = [lookup.get(n) for n in chain]
            if all(names):
                limbs.append((key, label, names, kind))
    if not limbs and scan is None:
        report({'WARNING'}, "CoD AutoShader: no CoD limbs (j_hip_le, j_shoulder_le, ...) or face joints on %s"
               % rig.name)
        return False

    # ---- edit mode: controls and mechanism bones -------------------------------------------------------------
    eb = _edit_mode(rig)

    def new_bone(name, par=None, matrix=None, head=None, tail=None, length=1.0):
        eb.new(name)
        b = eb[name]
        if matrix is not None:
            b.head = (0.0, 0.0, 0.0)
            b.tail = (0.0, length, 0.0)
            b.matrix = matrix
        else:
            b.head, b.tail = head, tail
        b.use_deform = False
        b.use_connect = False
        b.parent = eb[par] if par else None
        return b

    ad = rig.animation_data
    animated = ad is not None and (ad.action is not None or any(len(t.strips) for t in ad.nla_tracks))
    limb_info = {}
    for key, label, (a, b, c), kind in limbs:
        pa, pb_, pc = pos[a], pos[b], pos[c]
        length = (pb_ - pa).length + (pc - pb_).length
        axis = pc - pa
        bend = (pb_ - pa) - axis * ((pb_ - pa).dot(axis) / max(axis.length_squared, 1e-12))
        straight = bend.length < 0.02 * length
        pole_dir = (fwd if kind == 'LEG' else -fwd) if straight else bend.normalized()
        knee = pb_ + pole_dir * 0.01 * length if straight else pb_      # a pre-bend so IK knows which way to fold
        up_n, low_n = "MCH_%s_upper" % key, "MCH_%s_lower" % key
        ctrl = "CTRL_%s_%s" % ("foot" if kind == 'LEG' else "hand", key.split("_")[1])
        pole = "CTRL_%s_pole_%s" % ("knee" if kind == 'LEG' else "elbow", key.split("_")[1])
        new_bone(up_n, par=parent[a], head=pa, tail=knee)
        new_bone(low_n, par=up_n, head=knee, tail=pc)
        new_bone("HLP_%s_upper" % key, par=up_n, matrix=rest[a], length=0.1 * length)
        new_bone("HLP_%s_lower" % key, par=low_n, matrix=rest[b], length=0.1 * length)
        new_bone(ctrl, matrix=rest[c], length=0.1 * length)
        pole_pos = pb_ + pole_dir * 0.6 * length
        new_bone(pole, par=ctrl if kind == 'LEG' else None, head=pole_pos, tail=pole_pos + Vector((0, 0, 0.05 * length)))
        up_eb = eb[up_n]
        angle = _pole_angle(up_eb.head.copy(), up_eb.tail.copy(), up_eb.x_axis.copy(), eb[low_n].tail.copy(),
                            pole_pos)
        limb_info[key] = dict(label=label, chain=[a, b, c], kind=kind, ctrl=ctrl, pole=pole, upper=up_n,
                              lower=low_n, angle=angle, length=length, side=key.split("_")[1])

    face_bones, eye_targets, eyes_ctrl = [], {}, None
    if scan is not None:
        u = scan["unit"]
        for n in scan["face"]:
            for layer in FACE_LAYERS:
                new_bone(layer + n, par=parent[n], matrix=rest[n], length=0.3 * u)
            face_bones.append(n)
        eyes = scan["eyes"]
        if eyes and scan["head"]:
            F, U = scan["fwd"], scan["up"]
            mid = sum((pos[n] for n in eyes), Vector()) / len(eyes)
            dist = 30.0 * u
            center = mid + F * dist
            eyes_ctrl = "CTRL_eyes"
            m = Matrix((F.cross(U), F, U)).transposed().to_4x4()      # bone X across, Y forward, Z up
            m.translation = center
            new_bone(eyes_ctrl, par=scan["head"], matrix=m, length=2.0 * u)
            for n in eyes:
                R = rest[n].to_3x3()
                axes = [(i, s) for i in range(3) for s in (1.0, -1.0)]
                i, s = max(axes, key=lambda t: (R.col[t[0]] * t[1]).dot(F))
                direction = R.col[i].normalized() * s
                reach = dist / max(direction.dot(F), 0.3)
                tgt = "MCH_eye_target_" + n
                p = pos[n] + direction * reach
                new_bone(tgt, par=eyes_ctrl, head=p, tail=p + U * u)
                eye_targets[n] = (tgt, ("TRACK_" if s > 0 else "TRACK_NEGATIVE_") + "XYZ"[i])
        macro_bank, macro_controls = {}, []
        if macros and RIGIFY_KEY not in rig.keys() and scan["head"]:
            macro_bank, macro_controls = _face_macro_plan(rest, parent, scan)
            _face_macro_edit(eb, macro_controls, scan["head"], Matrix.Identity(4), u)
    bpy.ops.object.mode_set(mode='OBJECT')

    # ---- collections, shapes, constraints, drivers -----------------------------------------------------------
    arm = rig.data
    c_ctrl = _bone_collection(arm, RIG_COLL_CTRL)
    c_face = _bone_collection(arm, RIG_COLL_FACE)
    c_mch = _bone_collection(arm, RIG_COLL_MCH, visible=False)
    c_detail = _bone_collection(arm, RIG_COLL_FACE_DETAIL, visible=False) if scan is not None else None
    all_colls = list(arm.collections_all) if hasattr(arm, "collections_all") else list(arm.collections)
    for bone in arm.bones:
        if bone.name.startswith(RIG_PREFIXES):
            for coll in all_colls:
                if coll not in (c_ctrl, c_face, c_mch):
                    coll.unassign(bone)
            if bone.name.startswith(FACE_MACRO_PREFIX):
                continue                                  # the face controls get their collection below
            (c_mch if bone.name.startswith(("MCH_", "HLP_")) else c_ctrl).assign(bone)
    palette = {'le': 'THEME04', 'ri': 'THEME01'}
    pbs = rig.pose.bones

    for key, L in limb_info.items():
        prop = IK_PROP + key
        _rig_prop(rig, prop, 0.0 if animated else 1.0, 0.0, 1.0, desc="%s: 1 = follows the IK hand/foot control, 0 = the bones' "
                  "own rotations (animation / FK)" % L["label"])
        size = L["length"]
        ctrl, pole = pbs[L["ctrl"]], pbs[L["pole"]]
        _shape(ctrl, 'cube', 0.07 * size if L["kind"] == 'LEG' else 0.05 * size)
        _shape(pole, 'diamond', 0.035 * size)
        for pb in (ctrl, pole):
            pb.bone.color.palette = palette[L["side"]]
        ik = pbs[L["lower"]].constraints.new('IK')
        ik.name = RIG_CON + " IK"
        ik.target, ik.subtarget = rig, L["ctrl"]
        ik.pole_target, ik.pole_subtarget = rig, L["pole"]
        ik.pole_angle = L["angle"]
        ik.chain_count = 2
        ik.use_stretch = False
        a, b, c = L["chain"]
        for bone, helper in ((a, "HLP_%s_upper" % key), (b, "HLP_%s_lower" % key)):
            con = pbs[bone].constraints.new('COPY_TRANSFORMS')
            con.name = RIG_CON + " IK"
            con.target, con.subtarget = rig, helper
            _drive_prop(con, "influence", rig, prop)
        con = pbs[c].constraints.new('COPY_ROTATION')
        con.name = RIG_CON + " IK"
        con.target, con.subtarget = rig, L["ctrl"]
        _drive_prop(con, "influence", rig, prop)

    if limb_info:
        hips = next((lookup[h] for h in HIPS_BONES if h in lookup), None)
        legs = [L for L in limb_info.values() if L["kind"] == 'LEG']
        if hips and legs:
            _shape(pbs[hips], 'circle', 0.3 * legs[0]["length"])
            pbs[hips].bone.color.palette = 'THEME09'
            c_ctrl.assign(pbs[hips].bone)

    if scan is not None:
        u = scan["unit"]
        roles = scan["roles"]
        big = set(roles["jaw"])
        face_homes = {}
        for n in face_bones:
            pb = pbs[n]
            _shape(pb, 'sphere', (0.9 if n in big else 1.1 if n in scan["eyes"] else 0.3) * u)
            pb.bone.color.palette = 'THEME09' if scan["side"](n) == 'C' else palette['le' if scan["side"](n) == 'L'
                                                                                       else 'ri']
            home = [c.name for c in pb.bone.collections if c not in (c_ctrl, c_face, c_mch, c_detail)]
            if home:
                face_homes[n] = home
            for coll in all_colls:
                if coll not in (c_ctrl, c_face, c_mch, c_detail):
                    coll.unassign(pb.bone)                # so the Detail toggle really hides them
            c_detail.assign(pb.bone)
            for layer in FACE_LAYERS:
                mch = pbs[layer + n]
                mch.rotation_mode = 'XYZ'
                con = pb.constraints.new('COPY_TRANSFORMS')
                con.name = RIG_CON + " Expression"
                con.target, con.subtarget = rig, mch.name
                con.target_space = con.owner_space = 'LOCAL'
                con.mix_mode = 'AFTER_FULL'
        if eyes_ctrl:
            _rig_prop(rig, EYE_PROP, 1.0, 0.0, 1.0, desc="How much the eyes follow the eye target "
                      "(0 lets the facial clip move them)")
            ctrl = pbs[eyes_ctrl]
            _shape(ctrl, 'eyes', 3.2 * u)
            ctrl.bone.color.palette = 'THEME09'
            c_face.assign(ctrl.bone)
            c_ctrl.unassign(ctrl.bone)
            for n, (tgt, axis) in eye_targets.items():
                con = pbs[n].constraints.new('DAMPED_TRACK')
                con.name = RIG_CON + " Eye Look"
                con.target, con.subtarget = rig, tgt
                con.track_axis = axis
                _drive_prop(con, "influence", rig, EYE_PROP)
        exprs = _rig_json(rig, FACE_EXPR_KEY, {})
        exprs = {k: v for k, v in exprs.items() if not v.get("preset")}          # custom ones survive a rebuild
        presets = _preset_expressions(rest, parent, scan)
        merged = {name: {"preset": True, "bones": presets[name]} for name in FACE_PRESETS if name in presets}
        merged.update(exprs)
        rig[FACE_EXPR_KEY] = json.dumps(merged)
        rig[RIG_FACE_KEY] = json.dumps(face_bones)
        rig["cod_rig_face_homes"] = json.dumps(face_homes)
        if macro_controls:
            _face_macro_pose(rig, rig, macro_controls, macro_bank, u, c_face)
        else:
            _face_update_drivers(rig)

    if scan is not None:
        setup_neck_skin(rig)
    rig[RIG_LIMBS_KEY] = json.dumps(limb_info)
    rig["cod_rig_built"] = 1
    if face and getattr(context.scene.cod_autoshader, "face_board", True) and facs_meshes(rig):
        build_shape_board(context, rig, report)          # a blendshape face (Cold War): the board drives its shapes
    rig.show_in_front = True
    for ob in context.view_layer.objects:
        ob.select_set(ob == rig)
    context.view_layer.objects.active = rig
    context.view_layer.update()
    parts = []
    if limb_info:
        parts.append("IK on %s" % ", ".join(L["label"] for L in limb_info.values()))
    if scan is not None:
        parts.append("%d face joints, %d expressions" % (len(face_bones), len(_rig_json(rig, FACE_EXPR_KEY, {}))))
    if limb_info and animated:
        parts.append("IK starts off so the animation plays - use To IK to pose")
    report({'INFO'}, "CoD AutoShader: rigged %s - %s" % (rig.name, "; ".join(parts)))
    return True


def _driver_var(drv, name, rig=None, prop=None, host=None, bone=None, channel=None):
    var = drv.variables.new()
    var.name = name
    t = var.targets[0]
    if prop is not None:
        var.type = 'SINGLE_PROP'
        t.id_type = 'OBJECT'
        t.id = rig
        t.data_path = '["%s"]' % prop
    else:
        var.type = 'TRANSFORMS'
        t.id = host
        t.bone_target = bone
        t.transform_type = channel
        t.transform_space = 'LOCAL_SPACE'
    return var


def _num(x):
    """Short number for driver expressions: 4 significant digits, no leading zero."""
    s = "%.4g" % x
    return s.replace("0.", ".", 1) if s.startswith(("0.", "-0.")) else s


def _face_update_drivers(rig):
    """Expression sliders and on-face controls -> MCH_face layer channels, all as simple (Python-free) drivers.
    Per expression: amount = slider + sum(max(control * gain, 0)), kept in a hidden property when controls pull
    on it; per joint channel: sum(amount * offset), split over the layers so no expression gets too long."""
    exprs = _rig_json(rig, FACE_EXPR_KEY, {})
    bones = _rig_json(rig, RIG_FACE_KEY, [])
    for key in [k for k in rig.keys() if k.startswith(FACE_PROP)]:
        if key not in {_expr_prop(n) for n in exprs}:
            del rig[key]
    for name in exprs:
        _rig_prop(rig, _expr_prop(name), 0.0, -1.0, 2.0,
                  desc="Expression '%s' (0 = off, 1 = full; goes on top of the animation)" % name)
    macros = _rig_json(rig, FACE_MACRO_KEY, {})
    host = bpy.data.objects.get(macros.get("host", ""))
    bank = macros.get("exprs", {}) if host is not None else {}
    pulls = {}
    for expr, bone, channel, gain in (macros.get("terms", []) if host is not None else []):
        if expr in bank or expr in exprs:
            if bone in host.pose.bones:
                pulls.setdefault(expr, []).append((bone, channel, gain))

    # per-expression offsets and the property that carries each expression's amount
    table = {name: e["bones"] for name, e in exprs.items()}
    for name, data in bank.items():
        table.setdefault(name, data)
    ad = rig.animation_data_create()
    for fc in list(ad.drivers):
        if fc.data_path.startswith('["%s' % FACE_AMOUNT):
            ad.drivers.remove(fc)
    for key in [k for k in rig.keys() if k.startswith(FACE_AMOUNT)]:
        del rig[key]
    source = {}
    for name in table:
        if name not in pulls:
            if name in exprs:
                source[name] = _expr_prop(name)
            continue
        key = FACE_AMOUNT + _slug(name.replace("|", " "))
        rig[key] = 0.0
        fc = rig.driver_add('["%s"]' % key)
        drv = fc.driver
        drv.type = 'SCRIPTED'
        for v in list(drv.variables):
            drv.variables.remove(v)
        parts = []
        if name in exprs:
            _driver_var(drv, "e", rig=rig, prop=_expr_prop(name))
            parts.append("e")
        for i, (bone, channel, gain) in enumerate(pulls[name]):
            _driver_var(drv, "c%d" % i, host=host, bone=bone, channel=channel)
            h = _num(gain * 0.5)                        # max(x, 0) = (x + |x|) / 2, in plain maths
            parts.append("c%d*%s+abs(c%d*%s)" % (i, h, i, h))
        drv.expression = "+".join(parts)
        source[name] = key

    for n in bones:
        layers = [rig.pose.bones.get(layer + n) for layer in FACE_LAYERS]
        layers = [pb for pb in layers if pb is not None]
        if not layers:
            continue
        for pb in layers:
            for path in ("location", "rotation_euler"):
                for i in range(3):
                    pb.driver_remove(path, i)
            pb.location = (0.0, 0.0, 0.0)
            pb.rotation_euler = (0.0, 0.0, 0.0)
        for ch in range(6):
            terms = [(source[name], data[n][ch]) for name, data in table.items()
                     if name in source and n in data and abs(data[n][ch]) > 1e-6]
            if not terms:
                continue
            terms.sort(key=lambda t: -abs(t[1]))
            # fill the layers in turn, each expression kept under the simple-expression limit
            chunks, current, length = [], [], 0
            for prop, value in terms:
                piece = len("v%d*%s+" % (len(current), _num(value)))
                if current and length + piece > DRIVER_EXPR_MAX:
                    chunks.append(current)
                    current, length = [], 0
                current.append((prop, value))
                length += piece
            if current:
                chunks.append(current)
            for pb, chunk in zip(layers, chunks):        # anything past the last layer is the smallest terms
                fc = pb.driver_add("location" if ch < 3 else "rotation_euler", ch % 3)
                drv = fc.driver
                drv.type = 'SCRIPTED'
                for v in list(drv.variables):
                    drv.variables.remove(v)
                parts = []
                for i, (prop, value) in enumerate(chunk):
                    _driver_var(drv, "v%d" % i, rig=rig, prop=prop)
                    parts.append("v%d*%s" % (i, _num(value)))
                drv.expression = "+".join(parts)


def _rig_ready(rig):
    return rig is not None and rig.type == 'ARMATURE' and bool(rig.get("cod_rig_built"))


def snap_limbs(context, rig, to_ik, keys=None):
    """Switch limbs between IK and FK without the pose jumping."""
    limbs = _rig_json(rig, RIG_LIMBS_KEY, {})
    pbs = rig.pose.bones
    done = []
    for key, L in limbs.items():
        if keys and key not in keys:
            continue
        prop = IK_PROP + key
        a, b, c = L["chain"]
        if to_ik:
            rig[prop] = 0.0
            context.view_layer.update()
            ma, mb, mc = (pbs[n].matrix.copy() for n in (a, b, c))
            pbs[L["ctrl"]].matrix = mc
            context.view_layer.update()
            pa, pb_, pc = ma.translation, mb.translation, mc.translation
            axis = pc - pa
            bend = (pb_ - pa) - axis * ((pb_ - pa).dot(axis) / max(axis.length_squared, 1e-12))
            if bend.length > 0.01 * L["length"]:
                pole = pbs[L["pole"]]
                m = pole.matrix.copy()
                m.translation = pb_ + bend.normalized() * 0.6 * L["length"]
                pole.matrix = m
            rig[prop] = 1.0
        else:
            rig[prop] = 1.0
            context.view_layer.update()
            mats = [pbs[n].matrix.copy() for n in (a, b, c)]
            rig[prop] = 0.0
            context.view_layer.update()
            for n, m in zip((a, b, c), mats):
                pbs[n].matrix = m
                context.view_layer.update()
        done.append(L["label"])
    context.view_layer.update()
    return done


def face_save_expression(rig, name):
    """Store the face joints' current pose (hand-posed, or a frame of a facial clip) as a new slider."""
    bones = _rig_json(rig, RIG_FACE_KEY, [])
    data = {}
    for n in bones:
        pb = rig.pose.bones.get(n)
        if pb is None:
            continue
        mb = pb.matrix_basis
        vals = list(mb.to_translation()) + list(mb.to_quaternion().to_euler('XYZ'))
        if any(abs(v) > 1e-5 for v in vals):
            data[n] = vals
    if not data:
        return None
    exprs = _rig_json(rig, FACE_EXPR_KEY, {})
    base, i = name.strip() or "Expression", 2
    name = base
    while name in exprs or _expr_prop(name) in {_expr_prop(k) for k in exprs}:
        name = "%s %d" % (base, i)
        i += 1
    exprs[name] = {"preset": False, "bones": data}
    rig[FACE_EXPR_KEY] = json.dumps(exprs)
    _face_update_drivers(rig)
    for n in data:
        pb = rig.pose.bones[n]
        pb.location = (0.0, 0.0, 0.0)
        pb.rotation_quaternion = (1.0, 0.0, 0.0, 0.0)
        pb.rotation_euler = (0.0, 0.0, 0.0)
        pb.scale = (1.0, 1.0, 1.0)
    return name, len(data)


def _rig_after_clip(rig, track_name, report):
    """A body clip can't play through IK at full influence: hand those limbs back to the animation."""
    if track_name == ANIM_TRACK_FACE and rig.get(JAW_PROP, 0.0) > 0.0:
        rig[JAW_PROP] = 0.0
        report({'INFO'}, "CoD AutoShader: Jaw Follows Control set to 0 so the facial clip moves the mouth")
    if track_name in (ANIM_TRACK_BASE, ANIM_TRACK_UPPER) and rig.get(RIGIFY_PROP, 0.0) > 0.0:
        rig[RIGIFY_PROP] = 0.0
        report({'INFO'}, "CoD AutoShader: Follow Rigify set to 0 so the clip plays (Rig > Rigify Body)")
    if not _rig_ready(rig) or track_name not in (ANIM_TRACK_BASE, ANIM_TRACK_UPPER):
        return
    kinds = ('ARM', 'LEG') if track_name == ANIM_TRACK_BASE else ('ARM',)
    switched = []
    for key, L in _rig_json(rig, RIG_LIMBS_KEY, {}).items():
        prop = IK_PROP + key
        if L["kind"] in kinds and rig.get(prop, 0.0) > 0.0:
            rig[prop] = 0.0
            switched.append(L["label"])
    if switched:
        report({'INFO'}, "CoD AutoShader: %s set to FK so the clip plays (Rig > IK sliders)" % ", ".join(switched))


def _rig_target(context):
    return _rigify_source(context)


class _RigOperator:
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        rig = _rig_target(context)
        return rig is not None and rig.type == 'ARMATURE'


class COD_OT_rig_build(_RigOperator, bpy.types.Operator):
    bl_idname = "cod.rig_build"
    bl_label = "Build Rig"
    bl_description = ("Add IK hands / feet with knee and elbow targets, face controls, an eye target and "
                      "expression sliders to the selected CoD rig. Animations keep playing on the same bones")

    body: BoolProperty(name="Body IK", default=True, description="IK arms and legs with pole targets")
    face: BoolProperty(name="Face", default=True,
                       description="Face joint controls, eye look-at target and expression sliders")

    def execute(self, context):
        rig = _rig_target(context)
        ok = build_rig(context, rig, body=self.body, face=self.face, report=self.report)
        if ok and context.object is rig:
            bpy.ops.object.mode_set(mode='POSE')
        return {'FINISHED'} if ok else {'CANCELLED'}


class COD_OT_rig_remove(_RigOperator, bpy.types.Operator):
    bl_idname = "cod.rig_remove"
    bl_label = "Remove Rig"
    bl_description = "Take the IK / face rig off again (the game bones and their animations stay)"

    keep: BoolProperty(name="Keep Saved Expressions", default=True)

    def execute(self, context):
        rig = _rig_target(context)
        if context.object is not None and context.object.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
        remove_rig(rig, keep_expressions=self.keep)
        self.report({'INFO'}, "CoD AutoShader: rig removed from %s" % rig.name)
        return {'FINISHED'}


class COD_OT_rig_snap(_RigOperator, bpy.types.Operator):
    bl_idname = "cod.rig_snap"
    bl_label = "Switch IK / FK"
    bl_description = "Switch limbs between IK and FK, matching the current pose so nothing jumps"

    to_ik: BoolProperty(name="To IK", default=True)
    limb: StringProperty(name="Limb", default="", description="Limb key (empty = all)")

    @classmethod
    def poll(cls, context):
        return _rig_ready(_rig_target(context))

    def execute(self, context):
        rig = _rig_target(context)
        done = snap_limbs(context, rig, self.to_ik, [self.limb] if self.limb else None)
        self.report({'INFO'}, "CoD AutoShader: %s -> %s" % (", ".join(done) or "nothing", "IK" if self.to_ik else "FK"))
        return {'FINISHED'}


class COD_OT_face_save(_RigOperator, bpy.types.Operator):
    bl_idname = "cod.face_save"
    bl_label = "Save Expression"
    bl_description = ("Pose the face joints (or stop on a frame of a facial clip), then save that face as a new "
                      "expression slider")

    name: StringProperty(name="Name", default="Expression")

    @classmethod
    def poll(cls, context):
        return _rig_ready(_rig_target(context)) and bool(_rig_target(context).get(RIG_FACE_KEY))

    def invoke(self, context, event):
        return context.window_manager.invoke_props_dialog(self)

    def execute(self, context):
        rig = _rig_target(context)
        result = face_save_expression(rig, self.name)
        if result is None:
            self.report({'WARNING'}, "CoD AutoShader: pose some face joints first")
            return {'CANCELLED'}
        self.report({'INFO'}, "CoD AutoShader: saved '%s' (%d joints)" % result)
        return {'FINISHED'}


class COD_OT_face_delete(_RigOperator, bpy.types.Operator):
    bl_idname = "cod.face_delete"
    bl_label = "Delete Expression"
    bl_description = "Delete this expression slider"

    name: StringProperty()

    def execute(self, context):
        rig = _rig_target(context)
        exprs = _rig_json(rig, FACE_EXPR_KEY, {})
        exprs.pop(self.name, None)
        rig[FACE_EXPR_KEY] = json.dumps(exprs)
        _face_update_drivers(rig)
        return {'FINISHED'}


class COD_OT_face_reset(_RigOperator, bpy.types.Operator):
    bl_idname = "cod.face_reset"
    bl_label = "Reset Face"
    bl_description = "Set every expression slider to 0 and clear hand-posed face joints"

    def execute(self, context):
        rig = _rig_target(context)
        for key in list(rig.keys()):
            if key.startswith(FACE_PROP):
                rig[key] = 0.0
        for n in _rig_json(rig, RIG_FACE_KEY, []):
            pb = rig.pose.bones.get(n)
            if pb is not None:
                pb.matrix_basis = Matrix.Identity(4)
        if "CTRL_eyes" in rig.pose.bones:
            rig.pose.bones["CTRL_eyes"].matrix_basis = Matrix.Identity(4)
        host = bpy.data.objects.get(_rig_json(rig, FACE_MACRO_KEY, {}).get("host", ""))
        if host is not None:
            for pb in host.pose.bones:
                if pb.name.startswith(FACE_MACRO_PREFIX) or pb.name in ("FACE-jaw_ctrl", "FACE-eyes"):
                    pb.matrix_basis = Matrix.Identity(4)
        context.view_layer.update()
        return {'FINISHED'}


# ---- Rigify body rig ----------------------------------------------------------------------------------
# Rigify is Blender's own rig generator. It needs a metarig in its own conventions, so one
# is fitted to the CoD joints (IW / Treyarch share j_mainroot ... j_ball names), generated, and the CoD bones then
# copy it: every mapped CoD joint gets a "COD-" bone inside the Rigify rig, parented to the matching ORG bone and
# resting exactly where the CoD joint rests, and the CoD joint copies that bone. Bind pose is untouched, twist
# and gear bones ride along through the CoD hierarchy, and the face stays on the CoD face controls.
# Rigify's metarig faces -Y with +X on the character's left; CoD faces +X, so the metarig is built in a rotated
# frame and the generated rig object carries the inverse rotation.

RIGIFY_PROP = "rigify_follow"
RIGIFY_CON = "CoD Rigify"
JAW_PROP = "jaw_follow"
RIGIFY_KEY = "cod_rigify"                     # JSON {"rig": name, "metarig": name, "bones": {cod: meta}}
RIGIFY_SPINE = ("j_mainroot", "j_spinelower", "j_spineupper", "j_spine4")
# metarig bone collections and their row in Rigify's rig UI, as in Blender's own Human metarig (Rigify 4.x refuses
# to generate without them)
RIGIFY_COLLECTIONS = (("Torso", 3), ("Torso (Tweak)", 4), ("Fingers", 5), ("Fingers (Detail)", 6),
                      ("Arm.L (IK)", 7), ("Arm.R (IK)", 7), ("Arm.L (FK)", 8), ("Arm.R (FK)", 8),
                      ("Arm.L (Tweak)", 9), ("Arm.R (Tweak)", 9), ("Leg.L (IK)", 10), ("Leg.R (IK)", 10),
                      ("Leg.L (FK)", 11), ("Leg.R (FK)", 11), ("Leg.L (Tweak)", 12), ("Leg.R (Tweak)", 12),
                      ("Root", 14))
# Rigify's standard control colors (normal, select, active)
RIGIFY_COLOR_SETS = (("Root", (0.435, 0.184, 0.416)), ("IK", (0.604, 0.0, 0.0)), ("Special", (0.957, 0.788, 0.047)),
                     ("Tweak", (0.039, 0.212, 0.580)), ("FK", (0.118, 0.569, 0.035)), ("Extra", (0.969, 0.251, 0.094)))
RIGIFY_COLL_COLOR = {"Torso": "Special", "Torso (Tweak)": "Tweak", "Fingers": "Extra", "Fingers (Detail)": "FK",
                     "Root": "Root"}
RIGIFY_FINGERS = (("thumb", "thumb"), ("index", "f_index"), ("mid", "f_middle"), ("ring", "f_ring"),
                  ("pinky", "f_pinky"))


def _rigify_available():
    if not hasattr(bpy.types.PoseBone, "rigify_type"):
        try:
            import addon_utils
            addon_utils.enable("rigify", default_set=True, persistent=True)
        except Exception:
            pass
    return hasattr(bpy.types.PoseBone, "rigify_type")


CLOUDRIG_MODULE = "bl_ext.blender_org.cloudrig"
# The same limbs under another name. CloudRig spells its component types out in words, and reads them off
# pose_bone.cloudrig_component rather than pose_bone.rigify_type.
CLOUDRIG_TYPES = {
    "spines.basic_spine": "Spine: IK/FK",
    "spines.super_head": "Chain: FK",
    "limbs.arm": "Limb: Generic",
    "limbs.leg": "Limb: Biped Leg",
    "basic.super_copy": "Shoulder Bone",
    "limbs.super_finger": "Chain: Finger",
}


def _cloudrig_available():
    import addon_utils
    if hasattr(bpy.types.PoseBone, "cloudrig_component"):
        return True
    for module in (CLOUDRIG_MODULE, "cloudrig"):
        try:
            addon_utils.enable(module, default_set=True, persistent=True)
        except Exception:
            continue
        if hasattr(bpy.types.PoseBone, "cloudrig_component"):
            return True
    return False


def _rigify_plan(rest, lookup):
    """Metarig bones (name -> dict head, tail, parent, connect, type) in CoD armature space, and the CoD joint each
    one stands for."""
    def p(n):
        real = lookup.get(n)
        return rest[real].translation.copy() if real else None

    up = Vector((0.0, 0.0, 1.0))
    # facing from the feet (toes point forward), else CoD's +X
    fwd = Vector()
    for s in ("le", "ri"):
        a, t = p("j_ankle_" + s), p("j_ball_" + s)
        if a is not None and t is not None:
            fwd += t - a
    fwd -= up * fwd.dot(up)
    fwd = fwd.normalized() if fwd.length > 1e-6 else Vector((1.0, 0.0, 0.0))
    left = up.cross(fwd).normalized()

    bones, maps = {}, {}

    def add(name, head, tail, parent=None, connect=False, rtype="", cod=None):
        bones[name] = dict(head=head, tail=tail, parent=parent, connect=connect, type=rtype)
        if cod:
            maps[lookup[cod]] = name

    spine = [n for n in RIGIFY_SPINE if lookup.get(n)]
    neck, head = lookup.get("j_neck"), lookup.get("j_head")
    if len(spine) < 3 or not neck or not head:
        return None, None, None
    chain = spine + ["j_neck"]
    prev = None
    for i in range(len(spine)):
        name = "spine" if i == 0 else "spine.%03d" % i
        add(name, p(chain[i]), p(chain[i + 1]), parent=None if i == 0 else prev, connect=i > 0,
            rtype="spines.basic_spine" if i == 0 else "", cod=chain[i])
        prev = name
    chest = prev
    head_len = (p("j_head") - p("j_neck")).length
    add("neck", p("j_neck"), p("j_head"), parent=chest, rtype="spines.super_head", cod="j_neck")
    add("head", p("j_head"), p("j_head") + up * max(head_len * 1.6, 1e-3), parent="neck", connect=True, cod="j_head")

    for s, S in (("le", "L"), ("ri", "R")):
        out = left if S == 'L' else -left
        clav, sh, el, wr = (p("j_%s_%s" % (j, s)) for j in ("clavicle", "shoulder", "elbow", "wrist"))
        if None not in (sh, el, wr):
            upper = "upper_arm." + S
            if clav is not None:
                add("shoulder." + S, clav, sh, parent=chest, rtype="basic.super_copy", cod="j_clavicle_" + s)
            add(upper, sh, el, parent=("shoulder." + S) if clav is not None else chest, rtype="limbs.arm",
                cod="j_shoulder_" + s)
            add("forearm." + S, el, wr, parent=upper, connect=True, cod="j_elbow_" + s)
            mid = p("j_mid_%s_1" % s)
            hand_tail = mid if mid is not None and (mid - wr).length > 1e-4 else wr + (wr - el) * 0.35
            add("hand." + S, wr, hand_tail, parent="forearm." + S, connect=True, cod="j_wrist_" + s)
            for cod_f, meta_f in RIGIFY_FINGERS:
                joints = [p("j_%s_%s_%d" % (cod_f, s, k)) for k in (1, 2, 3)]
                if None in joints:
                    continue
                joints.append(joints[2] + (joints[2] - joints[1]))
                for k in range(3):
                    add("%s.%02d.%s" % (meta_f, k + 1, S), joints[k], joints[k + 1],
                        parent="hand." + S if k == 0 else "%s.%02d.%s" % (meta_f, k, S), connect=k > 0,
                        rtype="limbs.super_finger" if k == 0 else "", cod="j_%s_%s_%d" % (cod_f, s, k + 1))
        hip, knee, ankle, ball = (p("j_%s_%s" % (j, s)) for j in ("hip", "knee", "ankle", "ball"))
        if None not in (hip, knee, ankle):
            thigh = "thigh." + S
            add(thigh, hip, knee, parent="spine", rtype="limbs.leg", cod="j_hip_" + s)
            add("shin." + S, knee, ankle, parent=thigh, connect=True, cod="j_knee_" + s)
            if ball is None:
                ball = ankle + fwd * (knee - ankle).length * 0.3 - up * (ankle.z * 0.8)
            add("foot." + S, ankle, ball, parent="shin." + S, connect=True, cod="j_ankle_" + s)
            toe_len = max((ball - ankle).length * 0.45, 1e-3)
            add("toe." + S, ball, ball + fwd * toe_len, parent="foot." + S, connect=True,
                cod=("j_ball_" + s) if lookup.get("j_ball_" + s) else None)
            floor = min(ball.z, ankle.z) - 0.1 * toe_len
            heel = Vector((ankle.x, ankle.y, floor)) - fwd * 0.25 * toe_len
            width = 0.5 * toe_len
            add("heel.02." + S, heel - out * width * 0.5, heel + out * width * 0.5, parent="foot." + S)
    return bones, maps, (fwd, left, up)


def _rigify_bone_collection(name):
    """Which metarig collection a metarig bone belongs to."""
    side = name[-1] if name.endswith((".L", ".R")) else ""
    if name.startswith(("thumb", "f_")):
        return "Fingers"
    if name.startswith(("upper_arm", "forearm", "hand")):
        return "Arm.%s (IK)" % side
    if name.startswith(("thigh", "shin", "foot", "toe", "heel")):
        return "Leg.%s (IK)" % side
    return "Torso"


def _rigify_setup_collections(meta):
    """Bone collections with UI rows, color sets and the FK / tweak routing of each rig type."""
    arm = meta.data
    colls = {}
    for name, row in RIGIFY_COLLECTIONS:
        coll = arm.collections.new(name)
        try:
            coll.rigify_ui_row = row
        except AttributeError:
            pass
        colls[name] = coll
    try:
        arm.rigify_colors.clear()
        for name, color in RIGIFY_COLOR_SETS:
            cs = arm.rigify_colors.add()
            cs.name = name
            cs.normal = color
            cs.select = (0.314, 0.784, 1.0)
            cs.active = (0.549, 1.0, 1.0)
            cs.standard_colors_lock = True
        for name, coll in colls.items():
            key = RIGIFY_COLL_COLOR.get(name) or ("IK" if "(IK)" in name else "FK" if "(FK)" in name
                                                   else "Tweak" if "(Tweak)" in name else "")
            if key:
                coll.rigify_color_set_name = key
    except (AttributeError, TypeError):
        pass
    for bone in arm.bones:
        colls[_rigify_bone_collection(bone.name)].assign(bone)

    def ref(params, attr, name):
        try:
            getattr(params, attr).add().set_collection(colls[name])
        except (AttributeError, KeyError, TypeError):
            pass
    for pb in meta.pose.bones:
        t = pb.rigify_type
        if not t:
            continue
        params = pb.rigify_parameters
        side = pb.name[-1] if pb.name.endswith((".L", ".R")) else ""
        if t == "spines.basic_spine":
            ref(params, "fk_coll_refs", "Torso (Tweak)")
            ref(params, "tweak_coll_refs", "Torso (Tweak)")
        elif t == "spines.super_head":
            ref(params, "tweak_coll_refs", "Torso (Tweak)")
        elif t == "limbs.super_finger":
            ref(params, "tweak_coll_refs", "Fingers (Detail)")
        elif t in ("limbs.arm", "limbs.leg"):
            part = "Arm" if t == "limbs.arm" else "Leg"
            ref(params, "fk_coll_refs", "%s.%s (FK)" % (part, side))
            ref(params, "tweak_coll_refs", "%s.%s (Tweak)" % (part, side))


def _drop_metarig(meta):
    data = meta.data
    bpy.data.objects.remove(meta, do_unlink=True)
    if data is not None and data.users == 0:
        bpy.data.armatures.remove(data)


def build_rigify(context, rig, report, backend='RIGIFY'):
    cloud = backend == 'CLOUDRIG'
    if cloud and not _cloudrig_available():
        report({'ERROR'}, "CoD AutoShader: CloudRig isn't available - install it from extensions.blender.org")
        return None
    if not cloud and not _rigify_available():
        report({'ERROR'}, "CoD AutoShader: Rigify isn't available - enable the Rigify add-on in Preferences")
        return None
    if context.object is not None and context.object.mode != 'OBJECT':
        bpy.ops.object.mode_set(mode='OBJECT')
    remove_rigify(rig)
    if _rig_json(rig, RIG_LIMBS_KEY, {}):
        # the simple IK would fight Rigify for the same bones; keep the face part
        had_face = bool(rig.get(RIG_FACE_KEY))
        remove_rig(rig, keep_expressions=True)
        if had_face:
            build_rig(context, rig, body=False, face=True, report=lambda *a: None)
            bpy.ops.object.mode_set(mode='OBJECT')
    if not rig.get(RIG_FACE_KEY):
        # expression sliders and face joints for the Rigify face controls to sit on
        build_rig(context, rig, body=False, face=True, report=lambda *a: None)
        if context.object is not None and context.object.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
    if any(b.name.startswith(FACE_MACRO_PREFIX) for b in rig.data.bones):
        _remove_face_macros(rig)                  # they move into the Rigify rig
    rest, parent, lookup = _rig_scan(rig)
    plan, maps, frame = _rigify_plan(rest, lookup)
    if plan is None:
        report({'WARNING'}, "CoD AutoShader: %s has no CoD body skeleton (j_mainroot, j_spine..., j_neck, j_head) "
               "- Rigify is for third-person characters; viewmodels use Build Rig" % rig.name)
        return None
    fwd, left, up = frame
    # CoD armature space -> Rigify space (X = character's left, -Y = forward, Z = up)
    M = Matrix((left, -fwd, up)).to_4x4()
    Minv = M.inverted()

    # 1. metarig (clearing rigs and metarigs that earlier builds or failed attempts left behind)
    for stale in [o for o in bpy.data.objects if o.type == 'ARMATURE' and o is not rig and
                  o.name.startswith((rig.name + "-metarig", rig.name + "-rigify", rig.name + "-rig."))]:
        _drop_metarig(stale)
    arm_data = bpy.data.armatures.new(rig.name + "-metarig")
    meta = bpy.data.objects.new(rig.name + "-metarig", arm_data)
    home = rig.users_collection[0] if rig.users_collection else context.scene.collection
    home.objects.link(meta)
    meta.matrix_world = rig.matrix_world @ Minv
    meta.show_in_front = True
    eb = _edit_mode(meta)
    for name in plan:                              # parents are always listed before their children
        b = plan[name]
        if cloud and name.startswith("heel."):
            continue                               # Rigify's foot-roll pivot; CloudRig's leg brings its own
        eb.new(name)
        e = eb[name]
        e.head = M @ b["head"]
        e.tail = M @ b["tail"]
        if b["parent"]:
            e.parent = eb[b["parent"]]
            e.use_connect = b["connect"]
    for name, b in plan.items():                   # a readable roll: fingers up, everything else forward
        if name not in eb:
            continue
        e = eb[name]
        e.align_roll(Vector((0.0, 0.0, 1.0)) if name.startswith(("thumb", "f_")) else Vector((0.0, -1.0, 0.0)))
    # IK needs a hint of bend: nudge dead-straight elbows back and knees forward by 1% of the limb
    for upper, lower, sign in (("upper_arm.L", "forearm.L", 1), ("upper_arm.R", "forearm.R", 1),
                               ("thigh.L", "shin.L", -1), ("thigh.R", "shin.R", -1)):
        if upper in eb and lower in eb:
            a, j, c = eb[upper].head, eb[upper].tail, eb[lower].tail
            axis = c - a
            bend = (j - a) - axis * ((j - a).dot(axis) / max(axis.length_squared, 1e-12))
            if bend.length < 0.01 * axis.length:
                eb[upper].tail = j + Vector((0.0, sign * 0.01 * axis.length, 0.0))
    bpy.ops.object.mode_set(mode='OBJECT')
    if cloud:
        meta.cloudrig.enabled = True               # what marks an armature as a metarig to CloudRig
        for name, b in plan.items():
            component = CLOUDRIG_TYPES.get(b["type"])
            if component and name in meta.pose.bones:
                meta.pose.bones[name].cloudrig_component.component_type = component
    else:
        for name, b in plan.items():
            if b["type"]:
                meta.pose.bones[name].rigify_type = b["type"]
        _rigify_setup_collections(meta)

    # 2. generate
    for ob in context.view_layer.objects:
        ob.select_set(ob == meta)
    context.view_layer.objects.active = meta
    before = set(bpy.data.objects)
    try:
        if cloud:
            bpy.ops.pose.cloudrig_generate()
        else:
            bpy.ops.pose.rigify_generate()
    except RuntimeError as e:
        report({'ERROR'}, "CoD AutoShader: %s could not generate the rig (%s)"
               % ("CloudRig" if cloud else "Rigify", str(e).strip()))
        if context.object is not None and context.object.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
        _drop_metarig(meta)
        for ob in context.view_layer.objects:
            ob.select_set(ob == rig)
        context.view_layer.objects.active = rig
        return None
    gen = (meta.cloudrig.generator.target_rig if cloud else getattr(meta.data, "rigify_target_rig", None)) \
        or next((o for o in bpy.data.objects if o not in before and o.type == 'ARMATURE'), None)
    if gen is None:
        report({'ERROR'}, "CoD AutoShader: %s ran but made no rig" % ("CloudRig" if cloud else "Rigify"))
        _drop_metarig(meta)
        return None
    gen.name = rig.name + ("-cloudrig" if cloud else "-rigify")
    # both rigs ride on the CoD armature object: move / scale the character and the Rigify rig comes along, so
    # the two can never drift apart (a Rigify rig scaled on its own made the model grow when a bone moved)
    for ob in (gen, meta):
        ob.parent = rig
        ob.matrix_parent_inverse = Matrix.Identity(4)
        ob.matrix_basis = Minv.copy()
        ob.lock_location = ob.lock_rotation = ob.lock_scale = (True, True, True)
    meta.hide_set(True)
    for pb in gen.pose.bones:                    # CoD meshes can't stretch like Rigify's limbs: IK stretch off
        if "IK_Stretch" in pb.keys():
            pb["IK_Stretch"] = 0.0
        for key in ("head_follow", "neck_follow"):   # turning the neck turns the head with it
            if key in pb.keys():
                pb[key] = 1.0

    # face: which CoD joints, and where the jaw control goes
    face_bones = [n for n in _rig_json(rig, RIG_FACE_KEY, []) if n in rest]
    scan = _face_scan(rest, parent, lookup) if face_bones else None
    jaw = jaw_axis = None
    if False and scan is not None and scan["roles"]["jaw"]:   # the jaw control now opens the whole lower face
        jaw = scan["roles"]["jaw"][0]
        u, F, U = scan["unit"], scan["fwd"], scan["up"]
        jp = rest[jaw].translation
        chin = scan["roles"]["chin"][0] if scan["roles"]["chin"] else None
        aim = (rest[chin].translation if chin else jp + F * 8.0 * u - U * 5.0 * u) - jp
        R = rest[jaw].to_3x3()
        i, s = max(((i, s) for i in range(3) for s in (1.0, -1.0)), key=lambda t: (R.col[t[0]] * t[1]).dot(aim))
        jaw_axis = ("TRACK_" if s > 0 else "TRACK_NEGATIVE_") + "XYZ"[i]
        jaw_ctrl_pos = jp + R.col[i].normalized() * s * max(aim.length, 4.0 * u)
    eyes_rest = rig.data.bones["CTRL_eyes"].matrix_local.copy() if "CTRL_eyes" in rig.data.bones else None

    # 3. COD- follower bones in the generated rig, resting exactly on the CoD joints, and FACE- controls
    eb = _edit_mode(gen)
    made = {}
    deform_prefix = "DEF-" if cloud else "ORG-"
    for cod, meta_bone in maps.items():
        org = deform_prefix + meta_bone
        if org not in eb:
            continue
        name = "COD-" + cod
        eb.new(name)
        e = eb[name]
        e.head = (0.0, 0.0, 0.0)
        e.tail = (0.0, max(eb[org].length * 0.25, 1e-3), 0.0)
        e.matrix = M @ rest[cod]
        e.parent = eb[org]
        e.use_deform = False
        made[cod] = name
    head_org = deform_prefix + "head" if (deform_prefix + "head") in eb else None
    face_made = []
    if head_org and scan is not None:
        u = scan["unit"]
        for n in face_bones:
            name = "FACE-" + n
            eb.new(name)
            e = eb[name]
            e.head = (0.0, 0.0, 0.0)
            e.tail = (0.0, 0.3 * u, 0.0)
            e.matrix = M @ rest[n]
            e.parent = eb[head_org]
            e.use_deform = False
            face_made.append(n)
        if jaw:
            eb.new("FACE-jaw_ctrl")
            e = eb["FACE-jaw_ctrl"]
            e.head = M @ jaw_ctrl_pos
            e.tail = M @ (jaw_ctrl_pos + scan["up"] * 1.5 * u)
            e.parent = eb[head_org]
            e.use_deform = False
        macro_bank, macro_controls = _face_macro_plan(rest, parent, scan, jaw_control=True)
        _face_macro_edit(eb, macro_controls, head_org, M, u)
        if eyes_rest is not None:
            eb.new("FACE-eyes")
            e = eb["FACE-eyes"]
            e.head = (0.0, 0.0, 0.0)
            e.tail = (0.0, 2.0 * u, 0.0)
            e.matrix = M @ Matrix.LocRotScale(eyes_rest.to_translation(), eyes_rest.to_quaternion(), None)
            e.parent = eb[head_org]
            e.use_deform = False
    bpy.ops.object.mode_set(mode='OBJECT')
    gd = gen.data
    coll = _bone_collection(gd, "CoD Followers", visible=False)
    face_coll = _bone_collection(gd, "Face") if face_made else None
    detail_coll = _bone_collection(gd, "Face (Detail)", visible=False) if face_made else None
    for c, row in ((face_coll, 1), (detail_coll, 2)):
        if c is not None:
            try:
                c.rigify_ui_row = row
            except AttributeError:
                pass
    all_colls = list(gd.collections_all) if hasattr(gd, "collections_all") else list(gd.collections)
    for bone in gd.bones:
        if bone.name.startswith("COD-"):
            target = coll
        elif bone.name in ("FACE-jaw_ctrl", "FACE-eyes"):
            target = face_coll
        elif bone.name.startswith("FACE-"):
            target = detail_coll                  # one handle per joint: for fine tweaks, hidden by default
        else:
            continue
        for c in all_colls:
            if c not in (coll, face_coll, detail_coll):
                c.unassign(bone)
        target.assign(bone)
    if face_made:
        u = scan["unit"]
        for n in face_made:
            pb = gen.pose.bones["FACE-" + n]
            _shape(pb, 'sphere', (0.9 if n == jaw else 1.1 if n in scan["eyes"] else 0.3) * u)
            side = scan["side"](n)
            pb.bone.color.palette = 'THEME09' if side == 'C' else ('THEME04' if side == 'L' else 'THEME01')
        if "FACE-jaw_ctrl" in gen.pose.bones:
            pb = gen.pose.bones["FACE-jaw_ctrl"]
            _shape(pb, 'diamond', 1.2 * u)
            pb.bone.color.palette = 'THEME09'
        if "FACE-eyes" in gen.pose.bones:
            pb = gen.pose.bones["FACE-eyes"]
            _shape(pb, 'eyes', 3.2 * u)
            pb.bone.color.palette = 'THEME09'
        _face_macro_pose(gen, rig, macro_controls, macro_bank, u, face_coll)

    # 4. the CoD joints follow: position and rotation only, so nothing Rigify does can scale the model
    _rig_prop(rig, RIGIFY_PROP, 1.0, 0.0, 1.0,
              desc="1 = the CoD skeleton follows the Rigify rig, 0 = it plays its own (CoD) animation")
    for cod, name in made.items():
        pb = rig.pose.bones[cod]
        for kind, suffix in (('COPY_LOCATION', " Loc"), ('COPY_ROTATION', " Rot")):
            con = pb.constraints.new(kind)
            con.name = RIGIFY_CON + suffix
            con.target, con.subtarget = gen, name
            _drive_prop(con, "influence", rig, RIGIFY_PROP)
    # face controls add on top of the facial clip and the expression sliders (local offsets)
    for n in face_made:
        con = rig.pose.bones[n].constraints.new('COPY_TRANSFORMS')
        con.name = RIGIFY_CON + " Face"
        con.target, con.subtarget = gen, "FACE-" + n
        con.target_space = con.owner_space = 'LOCAL'
        con.mix_mode = 'AFTER_FULL'
    if jaw and "FACE-jaw_ctrl" in gen.pose.bones:
        # IK-style jaw: drag the control under the chin and the jaw swings to follow it
        _rig_prop(rig, JAW_PROP, 1.0, 0.0, 1.0,
                  desc="How much the jaw aims at the jaw control (0 lets the facial clip open the mouth)")
        cons = rig.pose.bones[jaw].constraints
        con = cons.new('DAMPED_TRACK')
        con.name = RIGIFY_CON + " Jaw"
        con.target, con.subtarget = gen, "FACE-jaw_ctrl"
        con.track_axis = jaw_axis
        _drive_prop(con, "influence", rig, JAW_PROP)
        cons.move(len(cons) - 1, 0)              # first, so expression sliders and the jaw handle add on top
    if "FACE-eyes" in gen.pose.bones and "CTRL_eyes" in rig.pose.bones:
        for kind, suffix in (('COPY_LOCATION', " Eyes Loc"), ('COPY_ROTATION', " Eyes Rot")):
            con = rig.pose.bones["CTRL_eyes"].constraints.new(kind)
            con.name = RIGIFY_CON + suffix
            con.target, con.subtarget = gen, "FACE-eyes"
        cons = rig.pose.bones["CTRL_eyes"].constraints
        look = cons.get(RIG_CON + " Board Look")
        if look is not None:                      # the face board's Look stick adds on top of the eye control
            cons.move(list(cons).index(look), len(cons) - 1)
    setup_neck_skin(rig)
    rig[RIGIFY_KEY] = json.dumps({"rig": gen.name, "metarig": meta.name, "bones": maps})
    for ob in context.view_layer.objects:
        ob.select_set(ob == gen)
    context.view_layer.objects.active = gen
    context.view_layer.update()
    report({'INFO'}, "CoD AutoShader: " + ("CloudRig" if cloud else "Rigify") +
           " rig '%s' drives %d CoD joints of %s (%d face controls)"
           % (gen.name, len(made), rig.name, len(face_made)))
    return gen


def _rigify_objects(rig):
    info = _rig_json(rig, RIGIFY_KEY, {})
    return bpy.data.objects.get(info.get("rig", "")), bpy.data.objects.get(info.get("metarig", ""))


def remove_rigify(rig):
    ad = rig.animation_data
    if ad is not None:
        for fc in list(ad.drivers):
            if RIGIFY_CON in fc.data_path:
                ad.drivers.remove(fc)
    for pb in rig.pose.bones:
        for c in list(pb.constraints):
            if c.name.startswith(RIGIFY_CON):
                pb.constraints.remove(c)
    gen, meta = _rigify_objects(rig)
    if gen is not None and _rig_json(rig, FACE_MACRO_KEY, {}).get("host") == gen.name:
        del rig[FACE_MACRO_KEY]                   # its face controls go with it (Build Rig puts them back)
        _face_update_drivers(rig)
    for ob in (gen, meta):
        if ob is not None:
            data = ob.data
            bpy.data.objects.remove(ob, do_unlink=True)
            if data is not None and data.users == 0:
                bpy.data.armatures.remove(data)
    for key in (RIGIFY_KEY, RIGIFY_PROP, JAW_PROP):
        if key in rig.keys():
            del rig[key]


def _rigify_source(context):
    """The CoD armature for the selection: the CoD rig itself, or the Rigify rig / metarig made for it."""
    ob = _anim_target(context)
    if ob is None or ob.type != 'ARMATURE':
        return None
    if RIGIFY_KEY in ob.keys() or _is_body(ob):
        return ob
    for other in bpy.data.objects:
        if other.type == 'ARMATURE' and RIGIFY_KEY in other.keys():
            info = _rig_json(other, RIGIFY_KEY, {})
            if ob.name in (info.get("rig"), info.get("metarig")):
                return other
    return ob


class COD_OT_rigify_build(bpy.types.Operator):
    bl_idname = "cod.rigify_build"
    bl_label = "Rigify Rig"
    bl_description = ("Generate a Rigify rig for the selected CoD character (IK/FK arms and legs with pole "
                      "targets, torso and hip pivots, finger and face controls, IK jaw) and make the CoD "
                      "skeleton follow it. The face stays on the CoD face controls")
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        return _rigify_source(context) is not None

    def execute(self, context):
        rig = _rigify_source(context)
        gen = build_rigify(context, rig, self.report, backend=context.scene.cod_autoshader.rig_backend)
        if gen is not None and context.object is gen:
            bpy.ops.object.mode_set(mode='POSE')
        return {'FINISHED'} if gen is not None else {'CANCELLED'}


class COD_OT_rigify_remove(bpy.types.Operator):
    bl_idname = "cod.rigify_remove"
    bl_label = "Remove Rigify Rig"
    bl_description = "Delete the generated Rigify rig and its metarig; the CoD skeleton goes back to its own animation"
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        rig = _rigify_source(context)
        return rig is not None and RIGIFY_KEY in rig.keys()

    def execute(self, context):
        rig = _rigify_source(context)
        if context.object is not None and context.object.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
        remove_rigify(rig)
        for ob in context.view_layer.objects:
            ob.select_set(ob == rig)
        context.view_layer.objects.active = rig
        self.report({'INFO'}, "CoD AutoShader: Rigify rig removed from %s" % rig.name)
        return {'FINISHED'}


class COD_OT_rigify_select(bpy.types.Operator):
    bl_idname = "cod.rigify_select"
    bl_label = "Select Rig"
    bl_description = "Switch between posing the Rigify body rig and the CoD skeleton (face controls)"
    bl_options = {'REGISTER', 'UNDO'}

    target: EnumProperty(items=(('RIGIFY', "Rigify", ""), ('COD', "CoD", "")))

    def execute(self, context):
        rig = _rigify_source(context)
        gen, _ = _rigify_objects(rig) if rig is not None else (None, None)
        ob = gen if self.target == 'RIGIFY' else rig
        if ob is None:
            return {'CANCELLED'}
        if context.object is not None and context.object.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
        for o in context.view_layer.objects:
            o.select_set(o == ob)
        ob.hide_set(False)
        context.view_layer.objects.active = ob
        bpy.ops.object.mode_set(mode='POSE')
        return {'FINISHED'}


RIGIFY_OPERATORS = (COD_OT_rigify_build, COD_OT_rigify_remove, COD_OT_rigify_select)


def _draw_rigify(layout, rig):
    if not (_is_body(rig) or RIGIFY_KEY in rig.keys()):
        return
    settings = _settings(bpy.context)
    cloud = settings.rig_backend == 'CLOUDRIG'
    rigger = "CloudRig" if cloud else "Rigify"
    header, body = layout.panel("cod_rigify", default_closed=False)
    header.label(text="Control Rig: Body + Face", icon='ARMATURE_DATA')
    if not body:
        return
    gen, _ = _rigify_objects(rig)
    body.prop(settings, "rig_backend", text="Rigger")
    if cloud and not _cloudrig_available():
        body.label(text="CloudRig is not installed - get it from extensions.blender.org", icon='ERROR')
    row = body.row(align=True)
    row.scale_y = 1.2
    row.operator(COD_OT_rigify_build.bl_idname, text=("Rebuild %s" if gen else "%s Rig") % rigger,
                 icon='FILE_REFRESH' if gen else 'OUTLINER_OB_ARMATURE')
    if gen is None:
        return
    row.operator(COD_OT_rigify_remove.bl_idname, text="", icon='TRASH')
    if RIGIFY_PROP in rig.keys():
        body.prop(rig, '["%s"]' % RIGIFY_PROP, text="Follow Control Rig", slider=True)
    if JAW_PROP in rig.keys():
        body.prop(rig, '["%s"]' % JAW_PROP, text="Jaw Follows Control", slider=True)
    row = body.row(align=True)
    row.operator(COD_OT_rigify_select.bl_idname, text="Pose Body", icon='POSE_HLT').target = 'RIGIFY'
    row.operator(COD_OT_rigify_select.bl_idname, text="Pose Face", icon='MONKEY').target = 'COD'


RIG_OPERATORS = (*RIGIFY_OPERATORS, COD_OT_rig_build, COD_OT_rig_remove, COD_OT_rig_snap, COD_OT_face_save, COD_OT_face_delete,
                 COD_OT_face_reset)


def _draw_rig(layout, s):
    rig = _rig_target(bpy.context)
    if rig is None or rig.type != 'ARMATURE':
        layout.label(text="Select a character or viewmodel rig", icon='INFO')
        return
    built = _rig_ready(rig)
    if not _is_body(rig):
        # viewmodels and loose heads: the simple IK / face rig (full bodies use Rigify, which builds the face too)
        row = layout.row(align=True)
        row.scale_y = 1.3
        row.operator(COD_OT_rig_build.bl_idname, text="Rebuild Rig" if built else "Build Rig",
                     icon='FILE_REFRESH' if built else 'OUTLINER_OB_ARMATURE')
        if built:
            row.operator(COD_OT_rig_remove.bl_idname, text="", icon='TRASH')
    _draw_rigify(layout, rig)
    if facs_meshes(rig):
        row = layout.row(align=True)
        row.scale_y = 1.2
        have = BS_KEY in rig.keys()
        row.operator(COD_OT_shape_board.bl_idname, text="Rebuild Face Board" if have else "Face Board (Blendshapes)",
                     icon='FILE_REFRESH' if have else 'MONKEY')
        if have:
            row.operator(COD_OT_shape_board.bl_idname, text="", icon='TRASH').remove = True
    row = layout.row(align=True)
    row.prop(s, "face_board", text="Face Board")
    host = bpy.data.objects.get(_rig_json(rig, FACE_MACRO_KEY, {}).get("host", ""))
    if host is not None and host.type == 'ARMATURE':
        get = host.data.collections_all.get if hasattr(host.data, "collections_all") else host.data.collections.get
        board = get(FACE_BOARD_COLL)
        if board is not None:
            row.prop(board, "is_visible", text="Show", toggle=True,
                     icon='HIDE_OFF' if board.is_visible else 'HIDE_ON')
    if not built:
        return

    arm = rig.data
    get_coll = arm.collections_all.get if hasattr(arm, "collections_all") else arm.collections.get
    row = layout.row(align=True)
    for name, text in ((RIG_COLL_CTRL, "Controls"), (RIG_COLL_FACE, "Face"), (RIG_COLL_FACE_DETAIL, "Face Detail")):
        coll = get_coll(name)
        if coll is not None:
            row.prop(coll, "is_visible", text=text, toggle=True,
                     icon='HIDE_OFF' if coll.is_visible else 'HIDE_ON')

    limbs = _rig_json(rig, RIG_LIMBS_KEY, {})
    if limbs:
        header, body = layout.panel("cod_rig_ik", default_closed=False)
        header.label(text="Body IK", icon='CON_KINEMATIC')
        if body:
            col = body.column(align=True)
            for key, L in limbs.items():
                prop = IK_PROP + key
                if prop in rig.keys():
                    r = col.row(align=True)
                    r.prop(rig, '["%s"]' % prop, text=L["label"] + " IK", slider=True)
                    r.operator(COD_OT_rig_snap.bl_idname, text="", icon='CON_KINEMATIC').limb = key
                    op = r.operator(COD_OT_rig_snap.bl_idname, text="", icon='BONE_DATA')
                    op.limb, op.to_ik = key, False
            r = body.row(align=True)
            op = r.operator(COD_OT_rig_snap.bl_idname, text="All to IK", icon='CON_KINEMATIC')
            op.to_ik, op.limb = True, ""
            op = r.operator(COD_OT_rig_snap.bl_idname, text="All to FK", icon='BONE_DATA')
            op.to_ik, op.limb = False, ""

    exprs = _rig_json(rig, FACE_EXPR_KEY, {})
    if rig.get(RIG_FACE_KEY):
        header, body = layout.panel("cod_rig_face", default_closed=False)
        header.label(text="Face", icon='MONKEY')
        if body:
            if EYE_PROP in rig.keys():
                body.prop(rig, '["%s"]' % EYE_PROP, text="Eye Look", slider=True)
            col = body.column(align=True)
            for name, e in exprs.items():
                key = _expr_prop(name)
                if key not in rig.keys():
                    continue
                r = col.row(align=True)
                r.prop(rig, '["%s"]' % key, text=name, slider=True)
                if not e.get("preset"):
                    r.operator(COD_OT_face_delete.bl_idname, text="", icon='X').name = name
            r = body.row(align=True)
            r.operator(COD_OT_face_save.bl_idname, text="Save Expression", icon='ADD')
            r.operator(COD_OT_face_reset.bl_idname, text="Reset", icon='LOOP_BACK')


# --------------------------------------------------------------------------------------------
# Bake: a lighter scene
# --------------------------------------------------------------------------------------------

def _is_helper_bone(name):
    return name.startswith(RIG_PREFIXES)


def bake_rig_animation(context, rig, report=None):
    """Key every CoD joint's evaluated pose on every frame of the scene range into one action, then take off
    the layers and rigs that made it. Returns the number of frames baked."""
    scene = context.scene
    if context.object is not None and context.object.mode != 'OBJECT':
        bpy.ops.object.mode_set(mode='OBJECT')
    bones = [pb for pb in rig.pose.bones if not _is_helper_bone(pb.name)]
    f0, f1 = scene.frame_start, scene.frame_end
    frames = list(range(f0, f1 + 1))
    keep = scene.frame_current
    data = {pb.name: ([], [], []) for pb in bones}
    # blendshape faces: whatever drivers set on the shape keys is keyed as well
    shapes = []
    for ob in bpy.data.objects:
        key = ob.data.shape_keys if ob.type == 'MESH' and ob.parent is rig else None
        ad_k = key.animation_data if key is not None else None
        if ad_k is not None and ad_k.drivers:
            for fc in ad_k.drivers:
                if fc.data_path.startswith("key_blocks[") and fc.data_path.endswith(".value"):
                    shapes.append((ob, key, fc.data_path, []))
    for f in frames:
        scene.frame_set(f)
        if shapes:
            dg = context.evaluated_depsgraph_get()
            for ob, key, path, vals in shapes:
                ev = ob.evaluated_get(dg).data.shape_keys
                vals.append(ev.path_resolve(path) if ev is not None else key.path_resolve(path))
        for pb in bones:
            m = rig.convert_space(pose_bone=pb, matrix=pb.matrix, from_space='POSE', to_space='LOCAL')
            loc, rot, scl = m.decompose()
            locs, rots, scls = data[pb.name]
            if rots and rots[-1].dot(rot) < 0.0:
                rot.negate()                              # keep quaternions continuous
            locs.append(loc)
            rots.append(rot)
            scls.append(scl)
    action = bpy.data.actions.new(rig.name + " (baked)")
    ad = rig.animation_data or rig.animation_data_create()
    ad.action = action                                    # Blender 5 creates curves through the assigned slot

    def curve(path, index, group):
        if hasattr(action, "fcurve_ensure_for_datablock"):
            return action.fcurve_ensure_for_datablock(rig, path, index=index, group_name=group)
        return action.fcurves.new(path, index=index, action_group=group)

    for pb in bones:
        pb.rotation_mode = 'QUATERNION'
        locs, rots, scls = data[pb.name]
        for prop, values, size, rest in (("location", locs, 3, 0.0), ("rotation_quaternion", rots, 4, None),
                                         ("scale", scls, 3, 1.0)):
            for i in range(size):
                vals = [v[i] for v in values]
                ref = (1.0 if i == 0 else 0.0) if rest is None else rest
                if max(abs(v - ref) for v in vals) < 1e-6:
                    continue                              # a channel that never moves needs no curve
                fc = curve('pose.bones["%s"].%s' % (pb.name, prop), i, pb.name)
                fc.keyframe_points.add(len(frames))
                co = [0.0] * (2 * len(frames))
                co[0::2] = frames
                co[1::2] = vals
                fc.keyframe_points.foreach_set("co", co)
                fc.keyframe_points.foreach_set("interpolation", [1] * len(frames))      # LINEAR
                fc.update()
    for ob, key, path, vals in shapes:
        kad = key.animation_data
        for fc in list(kad.drivers):
            if fc.data_path == path:
                kad.drivers.remove(fc)
        if kad.action is None:
            kad.action = bpy.data.actions.new(ob.name + " shapes (baked)")
        sa = kad.action
        if hasattr(sa, "fcurve_ensure_for_datablock"):
            fc = sa.fcurve_ensure_for_datablock(key, path)
        else:
            fc = sa.fcurves.new(path)
        fc.keyframe_points.add(len(frames))
        co = [0.0] * (2 * len(frames))
        co[0::2] = frames
        co[1::2] = vals
        fc.keyframe_points.foreach_set("co", co)
        fc.update()
    if BS_KEY in rig.keys():
        remove_shape_board(rig)
    # what made the motion goes: NLA layers, the control rigs, every constraint on the baked joints
    for track in list(ad.nla_tracks):
        ad.nla_tracks.remove(track)
    if RIGIFY_KEY in rig.keys():
        remove_rigify(rig)
    remove_rig(rig, keep_expressions=False)
    for pb in rig.pose.bones:
        for c in list(pb.constraints):
            pb.constraints.remove(c)
    ad.action = action
    scene.frame_set(keep)
    if report:
        report({'INFO'}, "CoD AutoShader: baked %d frames of %s into '%s' - rig, layers and face drivers removed"
               % (len(frames), rig.name, action.name))
    return len(frames)


BAKE_SKIP_KINDS = {'EYE', 'TEARFILM', 'LENS', 'SCOPE', 'RETICLE', 'NODRAW'}
BAKED_LIVE = "cod_baked_live"          # on a baked material: the name of its live copy
# the packed data map: what each channel holds
BAKE_DATA_CHANNELS = (("Roughness", 0), ("Metallic", 1), ("Specular IOR Level", 2), ("Subsurface Weight", 3))
# the Principled settings a baked material keeps (constants; the linked ones are in its maps)
BAKE_KEEP_INPUTS = ("IOR", "Subsurface Radius", "Subsurface Scale", "Subsurface IOR", "Subsurface Anisotropy",
                    "Specular Tint", "Anisotropic", "Coat Weight", "Coat Roughness", "Coat IOR", "Sheen Weight",
                    "Sheen Roughness", "Sheen Tint", "Emission Color", "Emission Strength", "Transmission Weight",
                    "Diffuse Roughness")


def _surface_bsdf(nt):
    """(Cycles output, the Principled BSDF that is the material) or (output, None) when the surface is more
    than one Principled (mixes with other shaders cannot be flattened safely)."""
    outs = [n for n in nt.nodes if n.type == 'OUTPUT_MATERIAL' and n.target in ('ALL', 'CYCLES')]
    out = next((n for n in outs if n.is_active_output), outs[0] if outs else None)
    if out is None or not out.inputs["Surface"].is_linked:
        return out, None
    node = out.inputs["Surface"].links[0].from_node
    while node.type == 'REROUTE' and node.inputs[0].is_linked:
        node = node.inputs[0].links[0].from_node
    return out, (node if node.type == 'BSDF_PRINCIPLED' else None)


def bakeable_material(mat, include_hair=False):
    if mat is None or mat.library is not None or mat.node_tree is None or not mat.get("cod_shaded"):
        return False
    if mat.get(BAKED_LIVE) or mat.get(TINY_EYE_TAG):
        return False
    kind = mat.get("cod_kind")
    if kind in BAKE_SKIP_KINDS or (kind == 'HAIR' and not include_hair):
        return False
    ad = mat.node_tree.animation_data
    if ad is not None and (ad.drivers or ad.action):
        return False                                       # animated (wrinkles ...): it has to stay live
    return _surface_bsdf(mat.node_tree)[1] is not None


def _bake_size(mat, cap):
    sizes = [max(n.image.size) for n in mat.node_tree.nodes if n.type == 'TEX_IMAGE' and n.image]
    return max(64, min(cap, max(sizes) if sizes else cap))


def _image(name, size, data, alpha=True):
    img = bpy.data.images.get(name)
    if img is not None and tuple(img.size) != (size, size):
        bpy.data.images.remove(img)
        img = None
    if img is None:
        img = bpy.data.images.new(name, size, size, alpha=alpha)
    _set_colorspace(img, data)
    return img


class _BakeTarget:
    """Puts a bake target image node in a material (active, so Cycles bakes into it) and takes it out again."""
    def __init__(self, mat, img):
        self.nt = mat.node_tree
        self.node = self.nt.nodes.new("ShaderNodeTexImage")
        self.node.image = img
        self.nt.nodes.active = self.node

    def remove(self):
        self.nt.nodes.remove(self.node)


def _bake(context, objects, kind):
    for o in context.view_layer.objects:
        o.select_set(o in objects)
    context.view_layer.objects.active = objects[0]
    bpy.ops.object.bake(type=kind, margin=8, use_clear=False, target='IMAGE_TEXTURES',
                        normal_space='TANGENT')


def bake_materials(context, mats, size_cap=2048, report=None):
    """Bake each material's surface into colour + alpha, packed data and normal images on a plain Principled
    BSDF. Returns the materials baked."""
    scene = context.scene
    if context.object is not None and context.object.mode != 'OBJECT':
        bpy.ops.object.mode_set(mode='OBJECT')
    users = {}
    for ob in context.view_layer.objects:
        if ob.type == 'MESH' and ob.visible_get():
            for s in ob.material_slots:
                if s.material in mats:
                    users.setdefault(s.material, []).append(ob)
    mats = [m for m in mats if users.get(m)]
    if not mats:
        return []
    saved = (scene.render.engine, scene.cycles.samples)
    scene.render.engine = 'CYCLES'
    scene.cycles.samples = 1
    rests = []
    for ob in {o for obs in users.values() for o in obs}:
        arm = ob.find_armature()
        if arm is not None and arm.data.pose_position != 'REST':
            rests.append(arm)
            arm.data.pose_position = 'REST'             # bake on the bind pose: no stretched texels
    done = []
    # Cycles rebuilds everything that renders before each bake: with only the material's own objects left in,
    # a character bakes in a fraction of the time
    shown = {o: o.hide_render for o in scene.objects}
    try:
        for mat in mats:
            nt = mat.node_tree
            out, bsdf = _surface_bsdf(nt)
            size = _bake_size(mat, size_cap)
            objs = users[mat]
            for o in scene.objects:
                if o.type in ('MESH', 'CURVE', 'CURVES', 'VOLUME', 'POINTCLOUD', 'LIGHT', 'META', 'FONT'):
                    o.hide_render = o not in objs or shown[o]
            others = {s.material for o in objs for s in o.material_slots if s.material and s.material is not mat}
            stem = re.sub(r"[^\w\-]+", "_", mat.name)[:48]

            def emit_bake(sock, img):
                """Bake whatever drives `sock` (or its constant value) as emission into img."""
                link = out.inputs["Surface"].links[0]
                surface_src = link.from_socket
                em = nt.nodes.new("ShaderNodeEmission")
                if sock.is_linked:
                    nt.links.new(sock.links[0].from_socket, em.inputs["Color"])
                else:
                    v = sock.default_value
                    em.inputs["Color"].default_value = tuple(v[:3]) + (1.0,) if hasattr(v, "__len__") else (v, v, v, 1.0)
                nt.links.new(em.outputs[0], out.inputs["Surface"])
                tgt = _BakeTarget(mat, img)
                dummies = [_BakeTarget(m, _image("cod_bake_dummy", 4, True)) for m in others if m.node_tree]
                try:
                    _bake(context, objs, 'EMIT')
                finally:
                    tgt.remove()
                    for d in dummies:
                        d.remove()
                    nt.nodes.remove(em)
                    nt.links.new(surface_src, out.inputs["Surface"])

            color = _image("%s_color" % stem, size, False)
            emit_bake(bsdf.inputs["Base Color"], color)
            px = np.empty(size * size * 4, np.float32)
            color.pixels.foreach_get(px)
            px = px.reshape(-1, 4)
            alpha_sock = bsdf.inputs.get("Alpha")
            has_alpha = alpha_sock is not None and (alpha_sock.is_linked or alpha_sock.default_value < 0.999)
            if has_alpha:
                tmp = _image("cod_bake_tmp", size, True)
                emit_bake(alpha_sock, tmp)
                a = np.empty(size * size * 4, np.float32)
                tmp.pixels.foreach_get(a)
                px[:, 3] = a.reshape(-1, 4)[:, 0]
            else:
                px[:, 3] = 1.0
            color.pixels.foreach_set(px.ravel())
            data = _image("%s_data" % stem, size, True)
            packed = np.zeros((size * size, 4), np.float32)
            for name, ch in BAKE_DATA_CHANNELS:
                sock = bsdf.inputs.get(name)
                if sock is None:
                    continue
                if sock.is_linked:
                    tmp = _image("cod_bake_tmp", size, True)
                    emit_bake(sock, tmp)
                    a = np.empty(size * size * 4, np.float32)
                    tmp.pixels.foreach_get(a)
                    packed[:, ch] = a.reshape(-1, 4)[:, 0]
                else:
                    packed[:, ch] = float(sock.default_value)
            data.pixels.foreach_set(packed.ravel())
            normal = None
            nsock = bsdf.inputs.get("Normal")
            if nsock is not None and nsock.is_linked:
                normal = _image("%s_normal" % stem, size, True, alpha=False)
                tgt = _BakeTarget(mat, normal)
                dummies = [_BakeTarget(m, _image("cod_bake_dummy", 4, True)) for m in others if m.node_tree]
                try:
                    _bake(context, objs, 'NORMAL')
                finally:
                    tgt.remove()
                    for d in dummies:
                        d.remove()
            # the live material is kept; this one becomes the flat version
            live = mat.copy()
            live.name = mat.name + " [live]"
            live.use_fake_user = True
            # only these: reading some hidden Principled sockets' values crashes Blender 5.1
            consts = {}
            for name in BAKE_KEEP_INPUTS:
                sock = bsdf.inputs.get(name)
                if sock is not None and not sock.is_linked and sock.enabled:
                    v = sock.default_value
                    consts[name] = tuple(v) if hasattr(v, "__len__") else v
            for n in list(nt.nodes):
                nt.nodes.remove(n)
            out = nt.nodes.new("ShaderNodeOutputMaterial")
            out.location = (600, 0)
            p = nt.nodes.new("ShaderNodeBsdfPrincipled")
            p.location = (300, 0)
            for name, value in consts.items():
                if name in p.inputs:
                    try:
                        p.inputs[name].default_value = value
                    except (TypeError, ValueError):
                        pass
            nt.links.new(p.outputs[0], out.inputs["Surface"])
            c = nt.nodes.new("ShaderNodeTexImage")
            c.image, c.location, c.label = color, (-300, 200), "Baked Colour + Alpha"
            nt.links.new(c.outputs["Color"], p.inputs["Base Color"])
            if has_alpha:                       # (the old BSDF is gone by now: never touch its sockets here)
                nt.links.new(c.outputs["Alpha"], p.inputs["Alpha"])
            d = nt.nodes.new("ShaderNodeTexImage")
            d.image, d.location, d.label = data, (-300, -100), "Baked Data (R rough, G metal, B spec, A sss)"
            sep = nt.nodes.new("ShaderNodeSeparateColor")
            sep.location = (-50, -100)
            nt.links.new(d.outputs["Color"], sep.inputs[0])
            for name, ch in BAKE_DATA_CHANNELS:
                if name in p.inputs:
                    src = d.outputs["Alpha"] if ch == 3 else sep.outputs[ch]
                    nt.links.new(src, p.inputs[name])
            if normal is not None:
                nimg = nt.nodes.new("ShaderNodeTexImage")
                nimg.image, nimg.location, nimg.label = normal, (-300, -400), "Baked Normal"
                nm = nt.nodes.new("ShaderNodeNormalMap")
                nm.location = (-50, -400)
                nt.links.new(nimg.outputs["Color"], nm.inputs["Color"])
                nt.links.new(nm.outputs["Normal"], p.inputs["Normal"])
            mat[BAKED_LIVE] = live.name
            for img in (color, data, normal):
                if img is None:
                    continue
                if bpy.data.is_saved:
                    folder = os.path.join(os.path.dirname(bpy.data.filepath), "CoD Baked")
                    os.makedirs(folder, exist_ok=True)
                    img.filepath_raw = os.path.join(folder, img.name + ".png")
                    img.file_format = 'PNG'
                    img.save()
                else:
                    img.pack()
            done.append(mat)
    finally:
        for o, hidden in shown.items():
            o.hide_render = hidden
        for name in ("cod_bake_tmp", "cod_bake_dummy"):
            if bpy.data.images.get(name) is not None:
                bpy.data.images.remove(bpy.data.images[name])
        for arm in rests:
            arm.data.pose_position = 'POSE'
        scene.render.engine, scene.cycles.samples = saved
    if report:
        report({'INFO'}, "CoD AutoShader: baked %d material(s) to textures%s" % (
            len(done), "" if bpy.data.is_saved else " (packed into the .blend - save it to keep them)"))
    return done


def restore_live_materials(mats):
    """Put the live materials back in place of their baked versions."""
    n = 0
    for mat in list(mats):
        live = bpy.data.materials.get(mat.get(BAKED_LIVE, "")) if mat is not None else None
        if live is None:
            continue
        name = mat.name
        mat.user_remap(live)
        bpy.data.materials.remove(mat)
        live.name = name
        live.use_fake_user = False
        n += 1
    return n


def clean_up_scene(context, hidden_eyes=False):
    """Delete hidden helper meshes and unused rig widgets, then purge unused data. Returns (objects, blocks)."""
    gone = 0
    for ob in list(bpy.data.objects):
        if ob.type != 'MESH':
            continue
        mats = [s.material for s in ob.material_slots if s.material is not None]
        nodraw = mats and all(m.get("cod_kind") == 'NODRAW' for m in mats)
        if nodraw or (hidden_eyes and ob.get(TINY_EYE_HIDDEN)):
            bpy.data.objects.remove(ob)
            gone += 1
    shapes = {pb.custom_shape for o in bpy.data.objects if o.type == 'ARMATURE' for pb in o.pose.bones}
    for ob in list(bpy.data.objects):
        if ob.name.startswith("WGT_CoD_") and ob not in shapes:
            bpy.data.objects.remove(ob)
            gone += 1
    def count():
        return sum(len(getattr(bpy.data, k)) for k in ("meshes", "materials", "images", "actions", "node_groups",
                                                        "armatures", "curves", "textures"))
    before = count()
    try:
        bpy.data.orphans_purge(do_local_ids=True, do_linked_ids=True, do_recursive=True)
    except TypeError:
        bpy.data.orphans_purge()
    return gone, before - count()


class COD_OT_bake_animation(bpy.types.Operator):
    bl_idname = "cod.bake_animation"
    bl_label = "Bake Animation"
    bl_description = ("Freeze the selected character's animation into plain keyframes on its CoD skeleton - "
                      "everything the layers, control rig, face board and expression sliders do, on every frame "
                      "of the scene - then remove those. Playback gets much lighter; the rig can be rebuilt later")
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        return _rigify_source(context) is not None

    def execute(self, context):
        rig = _rigify_source(context)
        n = bake_rig_animation(context, rig, self.report)
        for ob in context.view_layer.objects:
            ob.select_set(ob == rig)
        context.view_layer.objects.active = rig
        return {'FINISHED'} if n else {'CANCELLED'}


class COD_OT_bake_materials(bpy.types.Operator):
    bl_idname = "cod.bake_materials"
    bl_label = "Bake Materials"
    bl_description = ("Bake the CoD materials of the selected objects (or the whole scene with nothing selected) "
                      "into three textures each on a plain shader. Faster to load, play and render; the look is "
                      "frozen and the sliders stop affecting them until Restore. Eyes, lenses, scopes and "
                      "animated (wrinkle) skin stay live")
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        s = context.scene.cod_autoshader
        obs = [o for o in context.selected_objects if o.type == 'MESH'] or \
            [o for o in context.view_layer.objects if o.type == 'MESH']
        for o in list(context.selected_objects):
            if o.type == 'ARMATURE':
                obs += [c for c in o.children_recursive if c.type == 'MESH']
        mats = {sl.material for o in obs for sl in o.material_slots if bakeable_material(sl.material, s.bake_hair)}
        if not mats:
            self.report({'WARNING'}, "CoD AutoShader: no CoD materials here that can be baked")
            return {'CANCELLED'}
        done = bake_materials(context, list(mats), int(s.bake_size), self.report)
        return {'FINISHED'} if done else {'CANCELLED'}


class COD_OT_bake_restore(bpy.types.Operator):
    bl_idname = "cod.bake_restore"
    bl_label = "Restore Live Materials"
    bl_description = "Swap the baked materials back for the live CoD materials they were baked from"
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        n = restore_live_materials([m for m in bpy.data.materials if m.get(BAKED_LIVE)])
        self.report({'INFO'}, "CoD AutoShader: %d live material(s) restored" % n)
        return {'FINISHED'}


class COD_OT_clean_up(bpy.types.Operator):
    bl_idname = "cod.clean_up"
    bl_label = "Clean Up Scene"
    bl_description = ("Delete the hidden 'nodraw' shells and unused rig widgets, then purge everything nothing "
                      "uses any more (images, materials, meshes, actions - like File > Clean Up > Purge)")
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        if context.object is not None and context.object.mode != 'OBJECT':
            bpy.ops.object.mode_set(mode='OBJECT')
        obs, blocks = clean_up_scene(context, context.scene.cod_autoshader.clean_hidden_eyes)
        self.report({'INFO'}, "CoD AutoShader: removed %d object(s) and %d unused data-block(s)" % (obs, blocks))
        return {'FINISHED'}


def _draw_bake(layout, s):
    col = layout.column(align=True)
    col.scale_y = 1.15
    col.operator(COD_OT_bake_animation.bl_idname, text="Bake Animation", icon='ACTION')
    sc = bpy.context.scene
    col.label(text="Frames %d-%d (the scene range)" % (sc.frame_start, sc.frame_end), icon='INFO')
    layout.separator()
    col = _split(layout.column(align=True))
    col.prop(s, "bake_size", text="Texture Size")
    col.prop(s, "bake_hair", text="Include Hair")
    row = layout.row(align=True)
    row.scale_y = 1.15
    row.operator(COD_OT_bake_materials.bl_idname, text="Bake Materials", icon='TEXTURE')
    baked = sum(1 for m in bpy.data.materials if m.get(BAKED_LIVE))
    sub = row.row(align=True)
    sub.enabled = baked > 0
    sub.operator(COD_OT_bake_restore.bl_idname, text="", icon='LOOP_BACK')
    if baked:
        layout.label(text="%d baked material(s) - the arrow restores them" % baked, icon='CHECKMARK')
    layout.separator()
    _split(layout.column()).prop(s, "clean_hidden_eyes", text="Delete Hidden CoD Eyes")
    row = layout.row()
    row.scale_y = 1.15
    row.operator(COD_OT_clean_up.bl_idname, text="Clean Up Scene", icon='BRUSH_DATA')


# ---- face board for blendshape faces (T9 / Cold War) ------------------------------------------------------------

BS_MARKERS = ("jawopen", "eyeclosel")           # a FACS head carries these
BS_AMOUNT, BS_SHAPE, BS_KEY = "_cod_bs_", "_cod_bss_", "cod_shape_board"
# board channel -> [(FACS shape, weight)]; l / r are the character's left / right
BS_MAP = {
    "Brow Angry|L": [("furrowl", 1.0), ("proceruslowerl", 0.6)],
    "Brow Angry|R": [("furrowr", 1.0), ("proceruslowerr", 0.6)],
    "Brow Sad": [("procerusupl", 1.0), ("procerusupr", 1.0)],
    "Brow Raise|L": [("outerbrowupl", 1.0)], "Brow Raise|R": [("outerbrowupr", 1.0)],
    "Blink L": [("eyeclosel", 1.0)], "Blink R": [("eyecloser", 1.0)],
    "Eye Wide L": [("eyeraisel", 1.0)], "Eye Wide R": [("eyeraiser", 1.0)],
    "Squint|L": [("squintl", 1.0), ("lidtightl", 0.5)], "Squint|R": [("squintr", 1.0), ("lidtightr", 0.5)],
    "Cheek Raise|L": [("cheekraiserl", 1.0)], "Cheek Raise|R": [("cheekraiserr", 1.0)],
    "Sneer|L": [("nosewrinklerl", 1.0)], "Sneer|R": [("nosewrinklerr", 1.0)],
    "Nose Flare": [("noseflarel", 1.0), ("noseflarer", 1.0)],
    "Smile|L": [("lipcornerpullerl", 1.0)], "Smile|R": [("lipcornerpullerr", 1.0)],
    "Frown|L": [("lipcornerdepressorl", 1.0)], "Frown|R": [("lipcornerdepressorr", 1.0)],
    "Stretch|L": [("lipstretcherl", 1.0)], "Stretch|R": [("lipstretcherr", 1.0)],
    "Pucker|L": [("puckerl", 1.0)], "Pucker|R": [("puckerr", 1.0)],
    "Mouth Left": [("mouthleft", 1.0)], "Mouth Right": [("mouthright", 1.0)],
    "Upper Lip Up": [("upperlipraiserl", 1.0), ("upperlipraiserr", 1.0)],
    "Lower Lip Down": [("lowerlipdepressorl", 1.0), ("lowerlipdepressorr", 1.0)],
    "Upper Lip Up|L": [("upperlipraiserl", 1.0)], "Upper Lip Up|R": [("upperlipraiserr", 1.0)],
    "Lower Lip Down|L": [("lowerlipdepressorl", 1.0)], "Lower Lip Down|R": [("lowerlipdepressorr", 1.0)],
    "Press|L": [("liptightener", 0.5)], "Press|R": [("liptightener", 0.5)],
    "Dimple|L": [("dimplerl", 1.0)], "Dimple|R": [("dimplerr", 1.0)],
    "Funnel": [("funnellowerl", 1.0), ("funnellowerr", 1.0), ("funnelupperl", 1.0), ("funnelupperr", 1.0)],
    "Roll Upper": [("lipsuckupperl", 1.0), ("lipsuckupperr", 1.0)],
    "Roll Lower": [("lipsucklowerl", 1.0), ("lipsucklowerr", 1.0)],
    "Shrug Upper": [("lipmidupperuptweak", 1.0)], "Shrug Lower": [("chinraise", 1.0)],
    "Lips Part": [("lipopenmoreupl", 0.6), ("lipopenmoreupr", 0.6), ("lipopenmorelowerl", 0.6),
                  ("lipopenmorelowerr", 0.6)],
    "Mouth Close": [("lipclosemoreupl", 1.0), ("lipclosemoreupr", 1.0), ("lipclosemorelowerl", 1.0),
                    ("lipclosemorelowerr", 1.0)],
    "Cheek Puff|L": [("cheekpuffl", 1.0)], "Cheek Puff|R": [("cheekpuffr", 1.0)],
    "Cheek Suck|L": [("cheeksuckl", 1.0)], "Cheek Suck|R": [("cheeksuckr", 1.0)],
    "Jaw Open": [("jawopen", 1.0)], "Jaw Left": [("jawleft", 1.0)], "Jaw Right": [("jawright", 1.0)],
    "Jaw Forward": [("jawthrust", 1.0)],
    "Look Left": [("eyeleftl", 1.0), ("eyeleftr", 1.0)], "Look Right": [("eyerightl", 1.0), ("eyerightr", 1.0)],
    "Look Up": [("eyeupl", 1.0), ("eyeupr", 1.0)], "Look Down": [("eyedownl", 1.0), ("eyedownr", 1.0)],
}
BS_LOOK = (("X", 1, "Look Right"), ("X", -1, "Look Left"), ("Z", 1, "Look Up"), ("Z", -1, "Look Down"))
BS_EYE_YAW, BS_EYE_PITCH = 25.0, 18.0     # eyeball turn at full Look stick, degrees


def facs_meshes(rig):
    """The meshes of a rig whose face is FACS blendshapes."""
    out = []
    for ob in bpy.data.objects:
        if ob.type == 'MESH' and ob.parent is rig and ob.data.shape_keys is not None:
            names = {k.name.lower() for k in ob.data.shape_keys.key_blocks}
            if all(m in names for m in BS_MARKERS):
                out.append(ob)
    return out


def remove_shape_board(rig):
    info = _rig_json(rig, BS_KEY, None)
    if info is None:
        return
    for name in info.get("meshes", []):
        ob = bpy.data.objects.get(name)
        key = ob.data.shape_keys if ob is not None and ob.type == 'MESH' else None
        ad = key.animation_data if key is not None else None
        if ad is not None:
            for fc in list(ad.drivers):
                if fc.data_path.startswith("key_blocks[") and fc.data_path.endswith(".value") and any(
                        v.targets[0].data_path.startswith('["%s' % BS_SHAPE) for v in fc.driver.variables):
                    ad.drivers.remove(fc)
    ad = rig.animation_data
    if ad is not None:
        for fc in list(ad.drivers):
            if fc.data_path.startswith(('["%s' % BS_AMOUNT, '["%s' % BS_SHAPE)):
                ad.drivers.remove(fc)
    for k in [k for k in rig.keys() if k.startswith((BS_AMOUNT, BS_SHAPE))]:
        del rig[k]
    for pb in rig.pose.bones:
        for con in list(pb.constraints):
            if con.name == RIG_CON + " Board Look":
                pb.constraints.remove(con)
    names = [b.name for b in rig.data.bones if b.name.startswith(FACE_MACRO_PREFIX + "board")]
    if names:
        eb = _edit_mode(rig)
        for n in names:
            if n in eb:
                eb.remove(eb[n])
        bpy.ops.object.mode_set(mode='OBJECT')
    del rig[BS_KEY]


def build_shape_board(context, rig, report=None):
    """Put the face board on a blendshape head and wire it to the FACS shapes. Returns the shapes driven."""
    meshes = facs_meshes(rig)
    head = rig.data.bones.get("j_head")
    if not meshes or head is None:
        return 0
    if context.object is not None and context.object.mode != 'OBJECT':
        bpy.ops.object.mode_set(mode='OBJECT')
    remove_shape_board(rig)
    names = {k.name for o in meshes for k in o.data.shape_keys.key_blocks[1:]}
    low = {n.lower(): n for n in names}
    bank = {e: [(low[s], w) for s, w in pairs if s in low] for e, pairs in BS_MAP.items()}
    bank = {e: v for e, v in bank.items() if v}
    # head frame: the eyeball joints give forward and the face's scale
    bones = rig.data.bones
    eyes = [b for b in bones if b.name.lower().startswith("j_eyeball")]
    eye_names = [b.name for b in eyes]
    hp = head.head_local.copy()
    up = Vector((0.0, 0.0, 1.0))
    neck = bones.get("j_neck")
    if neck is not None:
        rise = hp - neck.head_local
        if rise.length > 1e-6 and rise.normalized().dot(up) < 0.5:
            up = rise.normalized()
    if len(eyes) >= 2:
        mid = sum((b.head_local for b in eyes), Vector()) / len(eyes)
        u = (eyes[0].head_local - eyes[1].head_local).length / 6.3
    else:
        mid, u = hp + Vector((8.0, 0.0, 6.0)), 1.0
    f = mid - hp
    f -= up * f.dot(up)
    F = f.normalized() if f.length > 1e-6 else Vector((1.0, 0.0, 0.0))
    Lt = up.cross(F).normalized()
    scan = dict(unit=u, fwd=F, up=up, left=Lt, head_pos=hp, eyes=eyes)
    frame = Matrix((-Lt, F, up)).transposed().to_4x4()
    controls = _face_board_controls(bank, scan, frame)
    R = FACE_BOARD_TRAVEL * u
    controls = [(k, m, list(ts) + ([("LOC_" + a, s / R, e) for a, s, e in BS_LOOK if e in bank]
                                    if k == "board_look" else [])) for k, m, ts in controls]
    eb = _edit_mode(rig)
    _face_macro_edit(eb, controls, head.name, Matrix.Identity(4), u)
    bpy.ops.object.mode_set(mode='OBJECT')
    coll = _bone_collection(rig.data, FACE_BOARD_COLL)
    all_colls = list(rig.data.collections_all) if hasattr(rig.data, "collections_all") else list(rig.data.collections)
    has_eyes = any(k == "board_look" for k, _m, _t in controls)
    pulls = {}
    for key, _m, ts in controls:
        pb = rig.pose.bones.get(FACE_MACRO_PREFIX + key)
        if pb is None:
            continue
        _face_board_pose(rig, rig, pb, key, bank, u, coll, all_colls, has_eyes)
        for channel, gain, e in ts:
            pulls.setdefault(e, []).append((pb.name, channel, gain))
    # the eyeballs are their own meshes on j_eyeball joints: the FACS look shapes only move the lids around them,
    # so the Look stick also turns the joints (yaw about the head's up, pitch about its side axis)
    look = rig.pose.bones.get(FACE_MACRO_PREFIX + "board_look")
    for name in eye_names if look is not None else ():
        b = rig.data.bones[name]                   # edit mode rebuilt the bones: fetch them again by name
        pb = rig.pose.bones[name]
        for con in list(pb.constraints):
            if con.name == RIG_CON + " Board Look":
                pb.constraints.remove(con)
        m = b.matrix_local.to_3x3()

        def axis_of(v):
            i = max(range(3), key=lambda k: abs(m.col[k].normalized().dot(v)))
            return i, (1.0 if m.col[i].dot(v) > 0 else -1.0)
        iy, sy = axis_of(up)
        ip, sp = axis_of(Lt)
        if iy == ip:
            continue
        con = pb.constraints.new('TRANSFORM')
        con.name = RIG_CON + " Board Look"
        con.target, con.subtarget = rig, look.name
        con.owner_space = con.target_space = 'LOCAL'
        con.map_from, con.map_to = 'LOCATION', 'ROTATION'
        con.mix_mode_rot = 'AFTER'
        for k, c in enumerate("xyz"):
            setattr(con, "from_min_" + c, -R)
            setattr(con, "from_max_" + c, R)
            if k == iy:          # stick right (+X) turns the eye to the character's right: negative about up
                src, ang = 'X', -math.radians(BS_EYE_YAW) * sy
            elif k == ip:        # stick up (+Z) lifts the gaze: negative about the side axis
                src, ang = 'Z', -math.radians(BS_EYE_PITCH) * sp
            else:
                src, ang = 'Y', 0.0
            setattr(con, "map_to_%s_from" % c, src)
            setattr(con, "to_min_%s_rot" % c, -ang)
            setattr(con, "to_max_%s_rot" % c, ang)
    rig.animation_data_create()

    def driven_prop(key, desc):
        rig[key] = 0.0
        fc = rig.driver_add('["%s"]' % key)
        drv = fc.driver
        drv.type = 'SCRIPTED'
        for v in list(drv.variables):
            drv.variables.remove(v)
        return drv

    # board channels: how far the controls push each one
    for e, ps in pulls.items():
        drv = driven_prop(BS_AMOUNT + _slug(e.replace("|", " ")), e)
        parts = []
        for i, (bone, channel, gain) in enumerate(ps):
            _driver_var(drv, "c%d" % i, host=rig, bone=bone, channel=channel)
            h = _num(gain * 0.5)                       # max(x, 0) = (x + |x|) / 2, in plain maths
            parts.append("c%d*%s+abs(c%d*%s)" % (i, h, i, h))
        drv.expression = "+".join(parts)
    # FACS shapes: their channels, capped at 1
    shape_src = {}
    for e, pairs in bank.items():
        if e in pulls:
            for s, w in pairs:
                shape_src.setdefault(s, []).append((BS_AMOUNT + _slug(e.replace("|", " ")), w))
    for s, srcs in shape_src.items():
        drv = driven_prop(BS_SHAPE + _slug(s), s)
        parts = []
        for i, (prop, w) in enumerate(srcs):
            _driver_var(drv, "a%d" % i, rig=rig, prop=prop)
            parts.append("a%d*%s" % (i, _num(w)) if abs(w - 1.0) > 1e-6 else "a%d" % i)
        drv.expression = "min(1,%s)" % "+".join(parts)
    # correctives: jawopen_lipcornerpullerl is on as much as both of its parts are
    correctives = 0
    for n in sorted(names):
        parts = n.lower().split("_")
        if len(parts) < 2 or not all(p in low for p in parts):
            continue
        comps = [BS_SHAPE + _slug(low[p]) for p in parts]
        if not all(c in rig.keys() for c in comps):
            continue
        drv = driven_prop(BS_SHAPE + _slug(n), n)
        for i, c in enumerate(comps):
            _driver_var(drv, "p%d" % i, rig=rig, prop=c)
        drv.expression = "*".join("p%d" % i for i in range(len(comps)))
        correctives += 1
    driven = 0
    for o in meshes:
        for kb in o.data.shape_keys.key_blocks[1:]:
            prop = BS_SHAPE + _slug(kb.name)
            if prop not in rig.keys():
                continue
            fc = kb.driver_add("value")
            drv = fc.driver
            drv.type = 'SCRIPTED'
            for v in list(drv.variables):
                drv.variables.remove(v)
            _driver_var(drv, "v", rig=rig, prop=prop)
            drv.expression = "v"
            driven += 1
    rig[BS_KEY] = json.dumps({"meshes": [o.name for o in meshes]})
    if report:
        report({'INFO'}, "CoD AutoShader: face board on %s - %d blendshapes on %d meshes (%d correctives)"
               % (rig.name, driven, len(meshes), correctives))
    return driven


class COD_OT_shape_board(bpy.types.Operator):
    bl_idname = "cod.shape_board"
    bl_label = "Face Board (Blendshapes)"
    bl_description = ("Build the face board on a blendshape head (Black Ops Cold War): sliders and joysticks "
                      "that drive its FACS shapes, combination shapes included")
    bl_options = {'REGISTER', 'UNDO'}

    remove: BoolProperty(default=False, options={'SKIP_SAVE'})

    @classmethod
    def poll(cls, context):
        rig = _rig_target(context)
        return rig is not None and rig.type == 'ARMATURE'

    def execute(self, context):
        rig = _rig_target(context)
        if self.remove:
            remove_shape_board(rig)
            return {'FINISHED'}
        n = build_shape_board(context, rig, self.report)
        if not n:
            self.report({'WARNING'}, "CoD AutoShader: no blendshape face on %s" % rig.name)
            return {'CANCELLED'}
        return {'FINISHED'}


# (key, label, header icon, closed by default, draw function, header checkbox property)
TOOL_SECTIONS = (
    ("game", "Game", 'WORLD', False, _draw_game, None),
    ("vm", "Viewmodel", 'ARMATURE_DATA', False, _draw_viewmodel, None),
    ("anim", "Animation", 'ACTION', False, _draw_anim, None),
    ("scene", "Scene", 'SCENE_DATA', True, _draw_scene, None),
    ("surface", "Surface", 'MATERIAL', True, _draw_surface, None),
    ("weapon", "Weapon", 'TOOL_SETTINGS', True, _draw_weapon, "weapon_finish"),
    ("character", "Character", 'USER', True, _draw_character, None),
    ("rig", "Rig", 'OUTLINER_OB_ARMATURE', True, _draw_rig, None),
    ("sights", "Sights", 'HIDE_OFF', True, _draw_sights, "sight_shader"),
    ("bodycam", "Bodycam Look", 'CAMERA_DATA', True, _draw_bodycam, "bodycam"),
    ("maps", "Maps (C2M)", 'WORLD_DATA', True, _draw_c2m, None),
    ("bake", "Bake (Lighter Scene)", 'RENDER_STILL', True, _draw_bake, None),
    ("advanced", "Advanced", 'PREFERENCES', True, _draw_advanced, None),
)


class _ViewSpace:
    bl_space_type = 'VIEW_3D'
    bl_region_type = 'UI'
    bl_category = "CoD"


class _NodeSpace:
    bl_space_type = 'NODE_EDITOR'
    bl_region_type = 'UI'
    bl_category = "CoD"

    @classmethod
    def poll(cls, context):
        return getattr(context.space_data, "tree_type", "") == 'ShaderNodeTree'


# Blender checks that panel callbacks take exactly (self, context), so bind per-section data in closures
def _section_draw(fn):
    def draw(self, context):
        fn(self.layout, _settings(context))
    return draw


def _section_header(icon, header_prop):
    def draw_header(self, context):
        if header_prop:
            self.layout.prop(_settings(context), header_prop, text="")
        else:
            self.layout.label(icon=icon)
    return draw_header


def _make_tool_panels(space, tag, main_closed):
    main_id = "COD_PT_%s_tools" % tag

    def draw_main(self, context):
        _draw_main(self.layout)

    def draw_main_header(self, context):
        self.layout.label(icon='SHADING_TEXTURE')

    classes = [type(main_id, (space, bpy.types.Panel), {
        "bl_idname": main_id, "bl_label": "CoD AutoShader",
        "bl_options": {'DEFAULT_CLOSED'} if main_closed else set(),
        "draw": draw_main, "draw_header": draw_main_header,
    })]
    for key, label, icon, closed, fn, header_prop in TOOL_SECTIONS:
        if key == "rig" and space is _NodeSpace:
            continue                                  # posing belongs in the 3D View
        pid = "COD_PT_%s_%s" % (tag, key)
        classes.append(type(pid, (space, bpy.types.Panel), {
            "bl_idname": pid, "bl_label": label, "bl_parent_id": main_id,
            "bl_options": {'DEFAULT_CLOSED'} if closed else set(),
            "draw": _section_draw(fn), "draw_header": _section_header(icon, header_prop),
        }))
    return classes




# ---- Shader Editor: live controls for the active material -------------------------------------

KIND_LABELS = {'DEFAULT': "Surface", 'SKIN': "Skin", 'HAIR': "Hair", 'EYE': "Eye", 'TEARFILM': "Tear Film",
               'LENS': "Lens", 'SCOPE': "Scope", 'RETICLE': "Reticle Stencil"}


def _material_state(context):
    """(material, nodes, decode group node) for the active material, or Nones."""
    mat = _active_material(context)
    if mat is None or mat.node_tree is None:
        return None, None, None
    nodes = mat.node_tree.nodes
    grp = next((n for n in nodes if n.type == 'GROUP' and n.node_tree and n.node_tree.name.startswith(GROUP_NAME)), None)
    return mat, nodes, grp


def _socket_props(layout, node, pairs):
    col = layout.column(align=True)
    for name, text in pairs:
        sock = node.inputs.get(name)
        if sock is not None and not sock.is_linked:
            col.prop(sock, "default_value", text=text)
    return col



# --------------------------------------------------------------------------------------------
# Cloth on a skinned garment
# --------------------------------------------------------------------------------------------

CLOTH_PIN_GROUP = "CoD Cloth Pin"
CLOTH_MODIFIER = "CoD Cloth"
CLOTH_COLLISION = "CoD Collision"
CLOTH_BURIED = 0.004                 # a vertex this far inside the body (metres) starts interpenetrating
CLOTH_FABRIC = {
    # quality, mass, tension, bending, damping, pin stiffness
    'CANVAS':  (5, 0.30, 60.0, 8.0, 15.0, 6.0),     # flight suit, webbing, heavy jacket
    'COTTON':  (5, 0.20, 25.0, 3.0, 12.0, 5.0),     # shirt, hoodie, trouser leg
    'DRAPE':   (7, 0.10, 12.0, 0.5, 8.0, 4.0),      # scarf, flag, light cape
    'LEATHER': (5, 0.45, 120.0, 20.0, 20.0, 8.0),   # holster flap, stiff coat panel
}


def _vertex_islands(mesh):
    """Connected shells, by vertex index. A CoD garment is usually several."""
    neighbours = [[] for _ in range(len(mesh.vertices))]
    for edge in mesh.edges:
        a, b = edge.vertices
        neighbours[a].append(b)
        neighbours[b].append(a)
    seen, groups = set(), []
    for start in range(len(mesh.vertices)):
        if start in seen:
            continue
        stack, group = [start], set()
        while stack:
            cur = stack.pop()
            if cur in group:
                continue
            group.add(cur)
            stack.extend(n for n in neighbours[cur] if n not in group)
        seen |= group
        groups.append(group)
    return groups


def _collider_trees(colliders, depsgraph):
    from mathutils.bvhtree import BVHTree
    trees = []
    for col in colliders:
        try:
            ev = col.evaluated_get(depsgraph)
            me = ev.to_mesh()
            trees.append(BVHTree.FromPolygons([col.matrix_world @ v.co for v in me.vertices],
                                              [tuple(p.vertices) for p in me.polygons]))
            ev.to_mesh_clear()
        except Exception:
            continue
    return trees


def cloth_pin_weights(ob, settings, colliders):
    """Full hold where the garment is stitched to the body, a light leash at the hem, and a hard hold on
    anything the solver cannot resolve: shells with nothing stitched, and vertices already inside the body."""
    mesh = ob.data
    zs = [v.co.z for v in mesh.vertices]
    if not zs:
        return None
    lo, hi = min(zs), max(zs)
    edge = hi - (hi - lo) * max(settings.cloth_pin, 1e-3)
    hem = min(max(settings.cloth_hem_hold, 0.0), 1.0)
    weights = {}
    for v in mesh.vertices:
        if v.co.z >= edge:
            weights[v.index] = min(1.0, 0.6 + 0.4 * (v.co.z - edge) / max(hi - edge, 1e-6))
        else:
            t = (v.co.z - lo) / max(edge - lo, 1e-6)
            weights[v.index] = hem + (0.6 - hem) * t

    strays = 0
    for group in _vertex_islands(mesh):
        if not any(weights.get(i, 0.0) > hem + 1e-4 for i in group):
            for i in group:
                weights[i] = 1.0                      # nothing holds this shell: let it ride the armature
            strays += 1

    buried = 0
    depsgraph = bpy.context.evaluated_depsgraph_get()
    trees = _collider_trees(colliders, depsgraph)
    if trees:
        ev = ob.evaluated_get(depsgraph)
        me = ev.to_mesh()
        world = [ob.matrix_world @ v.co for v in me.vertices]
        ev.to_mesh_clear()
        for i, p in enumerate(world):
            for tree in trees:
                loc, nor, _idx, dist = tree.find_nearest(p)
                if loc is not None and dist < CLOTH_BURIED and (p - loc).dot(nor) < 0:
                    weights[i] = 1.0
                    buried += 1
                    break

    group = ob.vertex_groups.get(CLOTH_PIN_GROUP) or ob.vertex_groups.new(name=CLOTH_PIN_GROUP)
    for v in mesh.vertices:
        group.add([v.index], weights.get(v.index, hem), 'REPLACE')
    return group, strays, buried


def add_cloth(ob, settings, colliders):
    quality, mass, tension, bending, damping, pin = CLOTH_FABRIC.get(settings.cloth_fabric,
                                                                     CLOTH_FABRIC['CANVAS'])
    result = cloth_pin_weights(ob, settings, colliders)
    strays, buried = (result[1], result[2]) if result else (0, 0)

    for m in [m for m in ob.modifiers if m.type == 'CLOTH']:
        ob.modifiers.remove(m)
    cloth = ob.modifiers.new(CLOTH_MODIFIER, 'CLOTH')
    while ob.modifiers.find(cloth.name) < len(ob.modifiers) - 1:      # behind the armature: sim the pose
        with bpy.context.temp_override(object=ob):
            bpy.ops.object.modifier_move_down(modifier=cloth.name)

    c = cloth.settings
    c.quality = quality
    c.mass = mass
    c.tension_stiffness = c.compression_stiffness = tension
    c.shear_stiffness = tension * 0.7
    c.bending_stiffness = bending
    c.tension_damping = c.compression_damping = c.shear_damping = damping
    c.bending_damping = damping * 0.25
    c.vertex_group_mass = CLOTH_PIN_GROUP
    c.pin_stiffness = pin

    # Collision distances are in world metres even though the springs work in the object's own units, so
    # these must NOT be divided by the rig's scale - doing that is what threw the first sims across the room.
    thickness = max(settings.cloth_thickness, 0.01) / 100.0
    col = cloth.collision_settings
    col.collision_quality = 3
    col.distance_min = thickness
    col.use_self_collision = settings.cloth_self_collide
    col.self_distance_min = thickness * 0.6
    col.friction = 15
    col.self_friction = 5

    for other in colliders:
        for m in [m for m in other.modifiers if m.type == 'COLLISION']:
            other.modifiers.remove(m)
        other.modifiers.new(CLOTH_COLLISION, 'COLLISION')
        other.collision.thickness_outer = thickness
        other.collision.thickness_inner = thickness * 2
        other.collision.damping = 0.4
        other.collision.cloth_friction = 15
    return cloth, strays, buried


class COD_OT_cloth(bpy.types.Operator):
    """Simulate the selected garments as cloth so they stop clipping through the body"""
    bl_idname = "cod.cloth"
    bl_label = "Cloth on Selected"
    bl_options = {'REGISTER', 'UNDO'}

    @classmethod
    def poll(cls, context):
        return any(o.type == 'MESH' for o in context.selected_objects)

    def execute(self, context):
        settings = context.scene.cod_autoshader
        garments = [o for o in context.selected_objects if o.type == 'MESH']
        rigs = {o.parent for o in garments if o.parent and o.parent.type == 'ARMATURE'}
        family = [o for o in bpy.data.objects
                  if o.type == 'MESH' and o.parent in rigs and o not in garments]
        if settings.cloth_collide_skin:
            skin = [o for o in family if o.active_material is not None
                    and o.active_material.get("cod_kind") == 'SKIN']
            near = skin or family
        else:
            near = family
        total_strays = total_buried = 0
        for ob in garments:
            _cloth, strays, buried = add_cloth(ob, settings, near)
            total_strays += strays
            total_buried += buried
        self.report({'INFO'}, "CoD AutoShader: cloth on %d garment(s), %d collider(s); pinned %d loose shell(s) "
                              "and %d buried vertices. Play the timeline to simulate"
                    % (len(garments), len(near), total_strays, total_buried))
        return {'FINISHED'}


class COD_OT_cloth_clear(bpy.types.Operator):
    """Remove the cloth and collision this add-on set up"""
    bl_idname = "cod.cloth_clear"
    bl_label = "Remove Cloth"
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):
        removed = 0
        for ob in bpy.data.objects:
            if ob.type != 'MESH':
                continue
            for m in [m for m in ob.modifiers if m.name in (CLOTH_MODIFIER, CLOTH_COLLISION)]:
                ob.modifiers.remove(m)
                removed += 1
            group = ob.vertex_groups.get(CLOTH_PIN_GROUP)
            if group:
                ob.vertex_groups.remove(group)
        self.report({'INFO'}, "CoD AutoShader: removed %d cloth/collision modifier(s)" % removed)
        return {'FINISHED'}

class COD_PT_node_material(_NodeSpace, bpy.types.Panel):
    bl_idname = "COD_PT_node_material"
    bl_label = "CoD Material"

    def draw_header(self, context):
        self.layout.label(icon='NODE_MATERIAL')

    def draw(self, context):
        layout = self.layout
        mat, nodes, grp = _material_state(context)
        if mat is None:
            layout.label(text="No active material", icon='INFO')
            return
        row = layout.row(align=True)
        row.label(text=mat.name, icon='MATERIAL')
        if mat.get("cod_kind"):
            sub = row.row()
            sub.alignment = 'RIGHT'
            sub.label(text=KIND_LABELS.get(mat["cod_kind"], mat["cod_kind"]))
        row = layout.row()
        row.scale_y = 1.15
        shaded = grp is not None or bool(mat.get("cod_shaded"))
        row.operator(COD_OT_shade_active.bl_idname, text="Reshade" if shaded else "Shade", icon='FILE_REFRESH')
        if not shaded:
            layout.label(text="Not shaded by CoD AutoShader yet", icon='INFO')


class COD_PT_node_mat_paths(_NodeSpace, bpy.types.Panel):
    bl_parent_id = "COD_PT_node_material"
    bl_idname = "COD_PT_node_mat_paths"
    bl_label = "Texture Paths"
    bl_options = {'DEFAULT_CLOSED'}

    def draw(self, context):
        layout = self.layout
        mat, nodes, grp = _material_state(context)
        if mat is None or mat.node_tree is None:
            layout.label(text="No active material", icon='INFO')
            return
        textures = [n for n in mat.node_tree.nodes if n.type == 'TEX_IMAGE' and n.image]
        if not textures:
            layout.label(text="No textures on this material", icon='ERROR')
        colour = any(n.label.startswith("Color") for n in textures)
        normal = any(n.label.startswith("Normal") for n in textures)
        if normal and not colour:
            box = layout.box()
            box.label(text="Normal map only - the colour map was not found", icon='ERROR')
            box.label(text="Set the Export Folder, then Reshade")
        for node in textures:
            col = layout.column(align=True)
            col.label(text=node.label or node.image.name, icon='TEXTURE')
            path = bpy.path.abspath(node.image.filepath) if node.image.filepath else "(packed)"
            col.label(text=os.path.basename(path))
            folder = os.path.dirname(path)
            col.label(text=("..." + folder[-46:]) if len(folder) > 46 else folder, icon='FILE_FOLDER')
        layout.operator(COD_OT_texture_report.bl_idname, icon='TEXT')


class _MaterialSubPanel(_NodeSpace):
    bl_parent_id = "COD_PT_node_material"

    @classmethod
    def poll(cls, context):
        if not _NodeSpace.poll.__func__(cls, context):
            return False
        mat, nodes, grp = _material_state(context)
        return grp is not None and cls.applies(mat, nodes)

    @staticmethod
    def applies(mat, nodes):
        return True


class COD_PT_node_mat_adjust(_MaterialSubPanel, bpy.types.Panel):
    bl_idname = "COD_PT_node_mat_adjust"
    bl_label = "Adjust"

    def draw_header(self, context):
        self.layout.label(icon='MODIFIER')

    def draw(self, context):
        _, _, grp = _material_state(context)
        _split(self.layout)
        _socket_props(self.layout, grp, (("Normal Strength", "Normal"), ("AO Strength", "Occlusion"),
                                         ("Emission Strength", "Emission"), ("Emission Color", "Emission Color")))
        _socket_props(self.layout, grp, (("Roughness Min", "Roughness Min"), ("Roughness Max", "Max")))


class COD_PT_node_mat_hair(_MaterialSubPanel, bpy.types.Panel):
    bl_idname = "COD_PT_node_mat_hair"
    bl_label = "Hair"

    @staticmethod
    def applies(mat, nodes):
        return nodes.get(HAIR_NODE_NAME) is not None or nodes.get(HAIR_CARD_NODE_NAME) is not None

    def draw_header(self, context):
        self.layout.label(icon='STRANDS')

    def draw(self, context):
        _, nodes, _ = _material_state(context)
        card = nodes.get(HAIR_CARD_NODE_NAME)
        if card is not None:
            layout = _split(self.layout)
            _socket_props(layout, card, (("Base Color", "Color"), ("Highlight Color", "Highlight"),
                                         ("Highlight Intensity", "Highlight Intensity")))
            _socket_props(layout, card, (("Roughness", "Roughness"), ("Specular", "Specular"),
                                         ("Anisotropic Roughness", "Aniso Roughness"),
                                         ("Anisotropic Rotation", "Aniso Rotation")))
            _socket_props(layout, card, (("Subsurface Weight", "Subsurface"), ("Translucency Weight", "Translucency"),
                                         ("Sheen", "Sheen"), ("Color Variation", "Color Variation")))
            header, body = layout.panel("cod_mat_hair_card_adv", default_closed=True)
            header.label(text="Advanced")
            if body:
                _socket_props(body, card, (("Diffuse Weight", "Diffuse"), ("Normal Strength", "Normal"),
                                           ("Strand Scale", "Strand Scale"), ("Strand Bump", "Strand Bump"),
                                           ("Backfacing Mask", "Backface Mask"), ("Metallic", "Metallic")))
            return
        hair = nodes[HAIR_NODE_NAME]
        layout = _split(self.layout)
        _socket_props(layout, hair, (("Shine", "White Highlight"), ("Shine Softness", "Softness")))
        _socket_props(layout, hair, (("Color Shine", "Color Highlight"), ("Color Shine Softness", "Softness")))
        _socket_props(layout, hair, (("Backlight", "Backlight"), ("Strand Variation", "Variation")))
        header, body = layout.panel("cod_mat_hair_adv", default_closed=True)
        header.label(text="Advanced")
        if body:
            _socket_props(body, hair, (("Shine Shift", "White Shift"), ("Color Shine Shift", "Color Shift"),
                                       ("Strand Stretch", "Stretch")))


class COD_PT_node_mat_coldwar(_MaterialSubPanel, bpy.types.Panel):
    bl_idname = "COD_PT_node_mat_coldwar"
    bl_label = "Cold War"

    @staticmethod
    def applies(mat, nodes):
        return nodes.get(CW_NODE_NAME) is not None

    def draw_header(self, context):
        self.layout.label(icon='MOD_NOISE')

    def draw(self, context):
        mat, nodes, _ = _material_state(context)
        layout = _split(self.layout)
        grp = nodes.get(CW_NODE_NAME)
        if grp is not None:
            _socket_props(layout, grp, (("Normal Strength", "Normal"),
                                        ("Detail Strength", "Detail"),
                                        ("AO Strength", "Occlusion"),
                                        ("Roughness Min", "Roughness Min"),
                                        ("Dielectric F0", "Dielectric F0"),
                                        ("Metal F0", "Metal F0"),
                                        ("Flip Green", "Flip Green")))
        tiling = nodes.get(CW_TILING_NODE_NAME)
        if tiling is not None:
            layout.prop(tiling.inputs["Scale"], "default_value", index=0, text="Detail Tiling")


class COD_PT_node_mat_eye(_MaterialSubPanel, bpy.types.Panel):
    bl_idname = "COD_PT_node_mat_eye"
    bl_label = "Eye"

    @staticmethod
    def applies(mat, nodes):
        return (nodes.get(EYE_NODE_NAME) is not None or nodes.get(EYE_SHADOW_NODE_NAME) is not None
                or nodes.get(EYE_RELIEF_NODE_NAME) is not None or mat.get("cod_kind") == 'EYE')

    def draw_header(self, context):
        self.layout.label(icon='HIDE_OFF')

    def draw(self, context):
        mat, nodes, _ = _material_state(context)
        layout = _split(self.layout)
        eye = nodes.get(EYE_NODE_NAME)
        if eye is not None:
            _socket_props(layout, eye, (("Iris Depth", "Iris Depth"), ("Iris Radius", "Iris Radius")))
        bsdf = next((n for n in nodes if n.type == 'BSDF_PRINCIPLED'), None)
        if bsdf is not None and mat.get("cod_kind") == 'EYE':
            col = layout.column(align=True)
            for name, text in (("Coat Weight", "Cornea Gloss"), ("Coat Roughness", "Cornea Roughness")):
                sock = _principled_input(bsdf, name)
                if sock is not None:
                    col.prop(sock, "default_value", text=text)
        relief = nodes.get(EYE_RELIEF_NODE_NAME)
        if relief is not None:
            _socket_props(layout, relief, (("Relief", "Iris Relief"), ("Displace", "True Displacement")))
        shadow = nodes.get(EYE_SHADOW_NODE_NAME)
        if shadow is not None:
            layout.prop(shadow.inputs[1], "default_value", text="Lid Shadow")


class COD_PT_node_mat_sss(_MaterialSubPanel, bpy.types.Panel):
    bl_idname = "COD_PT_node_mat_sss"
    bl_label = "Skin"

    @staticmethod
    def applies(mat, nodes):
        return nodes.get(SSS_NODE_NAME) is not None or nodes.get(SKIN_OIL_NODE_NAME) is not None

    def draw_header(self, context):
        self.layout.label(icon='USER')

    def draw(self, context):
        _, nodes, _ = _material_state(context)
        layout = _split(self.layout)
        bsdf = next((n for n in nodes if n.type == 'BSDF_PRINCIPLED'), None)
        sss = nodes.get(SSS_NODE_NAME)
        if sss is not None:
            col = layout.column(align=True, heading="Subsurface")
            if bsdf is not None:
                w = _principled_input(bsdf, "Subsurface Weight", "Subsurface")
                if w is not None:
                    col.prop(w, "default_value", text="Weight")
            col.prop(sss.inputs[1], "default_value", text="Scale (cm)")
        oil = nodes.get(SKIN_OIL_NODE_NAME)
        if oil is not None:
            layout.column(align=True).prop(oil.inputs[1], "default_value", text="Oil / Sheen")


class COD_PT_node_mat_sight(_NodeSpace, bpy.types.Panel):
    bl_idname = "COD_PT_node_mat_sight"
    bl_label = "Sight"
    bl_parent_id = "COD_PT_node_material"

    @classmethod
    def poll(cls, context):
        if not _NodeSpace.poll.__func__(cls, context):
            return False
        mat, nodes, _ = _material_state(context)
        return nodes is not None and (nodes.get(SIGHT_NODE_NAME) is not None
                                      or nodes.get(LENS_REFLECTION_NODE_NAME) is not None)

    def draw_header(self, context):
        self.layout.label(icon='HIDE_OFF')

    def draw(self, context):
        mat, nodes, _ = _material_state(context)
        layout = _split(self.layout)
        reflection = nodes.get(LENS_REFLECTION_NODE_NAME)
        if reflection is not None:
            layout.prop(reflection.outputs[0], "default_value", text="Lens Reflection")
        sight = nodes.get(SIGHT_NODE_NAME)
        if sight is None:
            return
        light = nodes.get(RETICLE_NODE_NAME)
        if light is not None:
            col = layout.column(align=True)
            col.prop(light.inputs["Color"], "default_value", text="Reticle Color")
            col.prop(light.inputs["Strength"], "default_value", text="Brightness")
            _socket_props(layout, sight, (("Dot Size", "Dot Size"), ("Ring Size", "Circle Size"),
                                          ("Line Width", "Line Width")))
        if mat.get("cod_kind") == 'SCOPE':
            _socket_props(layout, sight, (("Zoom", "Zoom"), ("Eye Relief", "Eye Relief")))
            _socket_props(layout, sight, (("Line Width", "Crosshair Width"), ("Ring Size", "Post Start")))
            header, body = layout.panel("cod_mat_scope_adv", default_closed=True)
            header.label(text="Advanced")
            if body:
                _socket_props(body, sight, (("Portal Offset (cm)", "Portal Offset"),))
            row = layout.row()
            row.alignment = 'RIGHT'
            row.label(text="Zoomed view needs Cycles", icon='INFO')


class COD_PT_node_mat_advanced(_MaterialSubPanel, bpy.types.Panel):
    bl_idname = "COD_PT_node_mat_advanced"
    bl_label = "CoD Decode"
    bl_options = {'DEFAULT_CLOSED'}

    def draw_header(self, context):
        self.layout.label(icon='PREFERENCES')

    def draw(self, context):
        _, _, grp = _material_state(context)
        layout = _split(self.layout)
        _socket_props(layout, grp, (("Metal Mask", "Metal Mask"), ("Insulator Range", "Insulator Range"),
                                    ("Dielectric F0", "Dielectric F0"), ("F0 Floor", "F0 Floor")))
        _socket_props(layout, grp, (("CoD Gloss Curve", "Gloss Curve"), ("Gloss Exponent", "Exponent"),
                                    ("Gloss Bias", "Bias")))


UI_CLASSES = (
    _make_tool_panels(_ViewSpace, "view", main_closed=False)
    + [COD_PT_node_material, COD_PT_node_mat_adjust, COD_PT_node_mat_hair,
       COD_PT_node_mat_coldwar, COD_PT_node_mat_eye,
       COD_PT_node_mat_sss, COD_PT_node_mat_sight, COD_PT_node_mat_advanced,
       COD_PT_node_mat_paths]
    + _make_tool_panels(_NodeSpace, "node", main_closed=True)
)


def _menu_import(self, context):
    self.layout.operator(COD_OT_import_cast.bl_idname, text="CoD Cast + AutoShader (.cast)")
    self.layout.operator(COD_OT_import_vm.bl_idname, text="CoD Viewmodel: arms + gun (.cast)")
    self.layout.operator(COD_OT_merge_parts.bl_idname, text="CoD Character parts, merged (.fbx / .cast)")
    self.layout.operator(COD_OT_import_anim.bl_idname, text="CoD Animation, layered (.cast)")


classes = (
    COD_OT_cloth_clear,
    COD_OT_texture_report,
    COD_OT_cloth,CoDSettings, COD_OT_shade_selected, COD_OT_shade_all, COD_OT_shade_active, COD_OT_import_cast,
           COD_OT_bodycam_preset, COD_OT_shade_c2m, COD_OT_import_c2m,
           COD_OT_bake_animation, COD_OT_bake_materials, COD_OT_bake_restore, COD_OT_clean_up,
           COD_OT_shape_board,
           COD_OT_assemble_vm, COD_OT_import_vm, COD_OT_merge_parts, CoDSkinItem, COD_OT_pick_skins, COD_OT_add_ammo,
           COD_OT_clear_ammo, COD_OT_import_anim, COD_OT_clear_anim, COD_OT_add_sounds, COD_OT_game_sky,
           COD_OT_clear_sounds, COD_OT_add_clip,
           COD_OT_add_clip_search, COD_OT_vm_camera, *RIG_OPERATORS, *UI_CLASSES)


def _load_logos():
    global _logo_previews
    _logo_previews = bpy.utils.previews.new()
    folder = os.path.join(os.path.dirname(__file__), "logos")
    if os.path.isdir(folder):
        for f in sorted(os.listdir(folder)):
            if f.lower().endswith(".png"):
                _logo_previews.load(f[:-4].lower(), os.path.join(folder, f), 'IMAGE')


def _drop_import_menus():
    """Remove every copy of our File > Import entries, including ones a reload or a failed uninstall left behind
    (those belong to an older module object, so a plain remove() would miss them)."""
    menu = bpy.types.TOPBAR_MT_file_import
    funcs = getattr(menu.draw, "_draw_funcs", None)
    if funcs is None:
        try:
            menu.remove(_menu_import)
        except (ValueError, RuntimeError):
            pass
        return
    for f in list(funcs):
        if getattr(f, "__name__", "") == "_menu_import" and getattr(f, "__module__", "") == __name__:
            funcs.remove(f)


def register():
    _load_logos()
    for c in classes:
        bpy.utils.register_class(c)
    bpy.types.Scene.cod_autoshader = bpy.props.PointerProperty(type=CoDSettings)
    _drop_import_menus()
    bpy.types.TOPBAR_MT_file_import.append(_menu_import)


def unregister():
    _drop_import_menus()
    del bpy.types.Scene.cod_autoshader
    for c in reversed(classes):
        bpy.utils.unregister_class(c)
    global _logo_previews
    if _logo_previews is not None:
        bpy.utils.previews.remove(_logo_previews)
        _logo_previews = None
    global _skin_previews
    if _skin_previews is not None:
        bpy.utils.previews.remove(_skin_previews)
        _skin_previews = None
