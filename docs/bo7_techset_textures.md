# Black Ops 7 techset textures - what sits in which slot

BO7 exports name their textures by hash (`image_6178282d…`), so the slot number in `_mat_info` is
what identifies a texture. The roles below were checked two ways: against Modern Warfare II exports,
which carry the original names (`_c`, `_n`, `_g`, `_o`, `_e`, `_alpha`, `_scatter`), and against the
pixels themselves across 206 BO7 materials in your exports.

## The slots that matter

| Slot | What it is | Channels | Used | Real textures | Typical size | Mean RGBA | MWII equivalent | Confidence |
|---|---|---|---|---|---|---|---|---|
| `0x03` | Infrared | IR view mask; black when unused | 206 | 3 | 2048x2048 | [0.144, 0.143, 0.144, 0.845] | 0x1b _ir | verified: BO7 names end in _ir / _infrared, MWII 0x1b |
| `0x04` | Unused | always $black in these exports | 206 | 0 | - | - |  | verified empty |
| `0x05` | Thermal | greyscale heat map for the thermal scope | 206 | 204 | 512x512 | [0.486, 0.484, 0.486, 1.0] | 0x1d _thermalmap | verified: BO7 names end in _thermalmap, MWII 0x1d |
| `0x0a` | Mask (rarely used) | greyscale; a real texture in 2 of 206 materials, $white otherwise | 206 | 2 | 1024x1024 | [0.639, 0.639, 0.639, 1.0] |  | unclear |
| `0x0b` | Wrinkle colour | extra colour map blended by the face wrinkle rig | 5 | 5 | 4096x4096 | [0.378, 0.288, 0.26, 1.0] | - | verified: only on face skin techsets |
| `0x0c` | Wrinkle normal+gloss | packed like NOG, blended by the wrinkle rig | 5 | 5 | 4096x4096 | [1.0, 0.495, 0.996, 0.501] | - | verified: only on face skin techsets |
| `0x12` | Mask (rarely used) | greyscale; a real texture in 2 of 206 materials, $black otherwise | 206 | 2 | 1024x1024 | [0.35, 0.35, 0.35, 1.0] |  | unclear |
| `0x3f` | Unused | always $black in these exports | 206 | 0 | - | - |  | verified empty |
| `0x40` | Unused | always $black in these exports | 206 | 0 | - | - |  | verified empty |
| `0x41` | Unused | always $black in these exports | 206 | 0 | - | - |  | verified empty |
| `0x42` | Relief / round mask | soft disc, named _r; used by scope lens relief | 206 | 5 | 512x1024 | [0.017, 0.017, 0.017, 1.0] |  | verified: name _r, scope lens |
| `0x47` | CS - colour + metal | RGB = fused diffuse+specular colour (sRGB), A = metal mask (A<=0.1 dielectric F0, A>0.1 metal) | 206 | 206 | 2048x2048 | [0.189, 0.155, 0.143, 0.605] | 0x00 _c & _s | verified: matches MWII 0x0 '_c & _s' |
| `0x48` | NOG - normal + occlusion + gloss | R = gloss, G = normal X, B = ambient occlusion, A = normal Y (hemi-octahedron, DirectX Y) | 206 | 206 | 2048x2048 | [0.574, 0.494, 0.974, 0.5] | 0x04 _n & _o & _g | verified: matches MWII 0x4 '_n & _o & _g' |
| `0x49` | Emissive | glow colour, black when unused | 206 | 9 | 2048x1024 | [0.231, 0.182, 0.233, 1.0] | 0x08 _e | verified: matches MWII 0x8 '_e' |
| `0x4a` | Opacity | alpha mask for hair cards, foliage, nets | 206 | 43 | 2048x2048 | [0.685, 0.685, 0.685, 1.0] | 0x0c _alpha | verified: matches MWII 0xc '_alpha' |
| `0x4b` | Mask (rarely used) | greyscale; 1 real texture in 206 materials, $black otherwise | 206 | 1 | 1024x1024 | [0.035, 0.035, 0.035, 1.0] |  | unclear |
| `0x4c` | Mask (rarely used) | greyscale; 4 real textures in 206 materials, $white otherwise | 206 | 4 | 1024x1024 | [0.964, 0.964, 0.964, 1.0] |  | unclear |
| `0x4d` | Per-strand / flat colour | hair: per-card random value; scope: flat lens colour | 206 | 11 | 4x4 | [0.511, 0.511, 0.511, 1.0] |  | verified on hair + scope |
| `0x4e` | Techset parameters | skin: scatter colour + thickness (MWII '_scatter & _m'); newer BO7 skin/cloth: single red channel; lens: tint | 206 | 153 | 1x1 | [0.418, 0.337, 0.061, 0.946] | 0x26 white & _t / _m / _z (scatter) | verified role, contents vary by techset |
| `0x51` | Unused | always $white here | 206 | 0 | - | - |  | verified empty |
| `0x52` | Unused | always $white here | 206 | 0 | - | - |  | verified empty |
| `0x54` | Skin scattering LUT | wide thin strip (e.g. 1024x8) read as a lookup table | 9 | 9 | 1024x8 | [0.555, 1.0, 1.0, 0.435] | - | verified: strip shape, skin only |
| `0x55` | Unused | always $white here | 206 | 0 | - | - |  | verified empty |
| `0x57` | Layer 2 colour | second material layer, packed like CS | 17 | 4 | 512x256 | [0.562, 0.459, 0.496, 0.818] |  | verified: pixel stats match CS |
| `0x58` | Layer 2 NOG | second layer normal/occlusion/gloss | 17 | 14 | 256x256 | [0.351, 0.49, 0.995, 0.506] |  | verified: pixel stats match NOG |
| `0x59` | Layer 2 extra | mask / detail for layer 2 | 17 | 2 | 2048x1024 | [0.33, 0.218, 0.356, 1.0] |  | likely |
| `0x5a` | Face techset extra | only on the layered face-skin techset; empty here | 17 | 0 | - | - |  | unknown |
| `0x5b` | Face techset extra | only on the layered face-skin techset; empty here | 17 | 0 | - | - |  | unknown |
| `0x5c` | Face techset extra | only on the layered face-skin techset; empty here | 17 | 0 | - | - |  | unknown |
| `0x5d` | Face techset extra | only on the layered face-skin techset; empty here | 17 | 0 | - | - |  | unknown |
| `0x5e` | Face techset extra | 1x1 constant - a parameter rather than a texture | 17 | 7 | 1x1 | [0.25, 0.25, 0.25, 0.25] |  | unknown |
| `0x61` | Layer mask | greyscale blend mask between layers (name _v2 seen) | 17 | 11 | 256x512 | [0.953, 0.953, 0.953, 1.0] |  | likely |
| `0x62` | Roughness / detail (_r3) | greyscale, name ends _r3 | 17 | 1 | 2048x1024 | [0.008, 0.008, 0.008, 1.0] |  | likely |
| `0x64` | Face techset extra | only on the layered face-skin techset; empty here | 3 | 0 | - | - |  | unknown |
| `0x65` | Face techset extra | only on the layered face-skin techset; empty here | 17 | 0 | - | - |  | unknown |
| `0x67` | Layer 3 colour | third layer, packed like CS (1x1 constants on these characters) | 7 | 4 | 1x1 | [0.116, 0.097, 0.095, 0.842] |  | likely |
| `0x68` | Layer 3 NOG | third layer normal/occlusion/gloss (pixel stats match NOG) | 7 | 4 | 1x1 | [0.437, 0.492, 0.983, 0.504] |  | likely |
| `0x69` | Layer 3 extra | colour / mask for layer 3 | 7 | 1 | 512x256 | [0.639, 0.421, 0.696, 1.0] |  | unknown |
| `0x6a` | Layer 3 mask | greyscale mask | 7 | 2 | 1024x1024 | [0.141, 0.141, 0.141, 1.0] |  | unknown |
| `0x6b` | Face techset extra | empty here | 7 | 0 | - | - |  | unknown |
| `0x6c` | Face techset extra | empty here | 7 | 0 | - | - |  | unknown |
| `0x6d` | Face techset extra | empty here | 7 | 0 | - | - |  | unknown |
| `0x6e` | Face techset parameter | 1x1 colour constant | 7 | 2 | 1x1 | [0.66, 0.592, 0.582, 0.972] |  | unknown |
| `0x71` | Face techset parameter | small constant map | 7 | 4 | 4x4 | [0.729, 0.729, 0.729, 1.0] |  | unknown |
| `0x72` | Face detail strip | wide strip, likely a lookup / detail band | 7 | 2 | 2048x256 | [0.344, 0.343, 0.344, 1.0] |  | unknown |
| `0x75` | Face techset extra | empty here | 7 | 0 | - | - |  | unknown |

## How to read the two packed textures

**CS (`0x47`) - colour and metal.** RGB is the fused diffuse + specular colour in sRGB. Alpha is the
metal mask with an insulator range: at or below 0.1 the surface is a dielectric and the value itself is
its F0 reflectance; above 0.1 it is metal. Many techsets do not use the mask and store a constant 1.0,
so treat alpha as metal only when it is bimodal (values bunched at the ends).

**NOG (`0x48`) - normal, occlusion, gloss.** R is gloss, G is normal X, B is ambient occlusion and A is
normal Y. The normal is hemi-octahedron encoded with DirectX-style Y. Rebuild it with
`ex = 2G-1`, `ey = 2A-1`, `N = normalize(((ex+ey)/2, (ey-ex)/2, 1 - |(ex+ey)/2| - |(ex-ey)/2|))`.
Gloss becomes roughness through the CoD WWII curve: `alpha = sqrt(2 / (1 + 2^(18*gloss)))`,
and Blender's roughness is `sqrt(alpha)`.

## Skin, hair and eyes

- A face uses the wrinkle pair `0x0b` (colour) and `0x0c` (normal+gloss) and often the scattering LUT
  `0x54`, a wide thin strip. Those slots are how the add-on recognises skin.
- Plain skin (arms, necks, teeth) has no markers; it is identified by its techset instead. In your
  exports `techset_627327c7c7de9f75` is that skin techset (it is used by `..._arm_l`, the body arm and
  the teeth), and `techset_7a1043cab1f4b8fd` is the face skin techset with wrinkles.
- Hair carries an opacity map in `0x4a` and a per-strand value in `0x4d`.
- Scope lenses put the relief disc in `0x42`/`0x4e` and the flat lens colour in `0x4d`.

## MWII, for comparison (its names are not hashed)

| Slot | Name pattern | Role |
|---|---|---|
| `0x00` | `_c` & `_s` | CS colour + metal |
| `0x04` | `_n` & `_o` & `_g` | NOG |
| `0x08` | `_e` | emissive |
| `0x0c` | `_alpha` | opacity |
| `0x1b` | `_ir` | infrared |
| `0x1d` | `_thermalmap` | thermal |
| `0x22` | `_tr` | lens dirt / transmission |
| `0x26` | `white` & `_t` / `_m` / `_z` | techset parameters: lens tint, skin scatter + thickness |
| `0x32` | `_cm` | camo mask |
| `0x3d` | `_dm` | detail map |
| `0x34` | `_t` | tint |

The add-on reads BO7 numbering when `0x47`/`0x48` are present and MWII numbering otherwise, so both
export styles shade without any setting.
