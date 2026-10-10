"""Run with Blender --background --factory-startup --python this_file."""
import importlib.util
import math
from pathlib import Path
import sys

import bpy

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("cod_autoshader", ROOT / "cod_autoshader" / "__init__.py")
addon = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = addon
spec.loader.exec_module(addon)
addon.register()
if bpy.data.objects.get('Cube'):
    bpy.data.objects['Cube'].hide_render = True

scene = bpy.context.scene
settings = scene.cod_autoshader
folder = Path(r"C:\Users\joker\Downloads\exported_files\bo7\Camos\sat_camo_event_camo_s4_merc_anim_05")
settings.weapon_camo_folder = str(folder)
settings.weapon_camo = 1.0
settings.weapon_camo_scale = 1.0
maps = addon.camo_maps(str(folder))
assert maps["profile"] == "SAT_MERC_05" and maps["animated"]
assert maps["normal"].endswith("_n.png") and 0.3 < maps["gloss"] < 0.4


def build(name, slots, region='ANY'):
    settings.weapon_camo_region = region
    mat = bpy.data.materials.new(name)
    mat.use_nodes = True
    nt = mat.node_tree
    nt.nodes.clear()

    def tex(path, data, packed, label):
        node = nt.nodes.new("ShaderNodeTexImage")
        node.image = addon.load_image(path, data, packed)
        node.label = label
        return node

    finish = {}
    mask, color, bump, helpers = addon._weapon_camo_source(nt, slots, settings, tex, finish)
    assert color is not None and bump is not None
    assert finish["gloss"] == maps["gloss"]
    normal_node = bump.node
    assert normal_node.inputs['Vector'].links[0].from_node.bl_idname == 'ShaderNodeMapping'
    clock = nt.nodes.get("CoD Camo Time")
    assert clock is not None
    assert len(nt.animation_data.drivers) == 1
    return mat, clock


material, clock = build("Camo animation test", {})
masked, _ = build("Masked camo", {"camo": maps["blend"]})
blueprint, _ = build("Blueprint camo", {"layer2": maps["blend"]}, 'LAYER')
bpy.ops.mesh.primitive_plane_add(size=2)
plane = bpy.context.object
for mat in (material, masked, blueprint):
    plane.data.materials.append(mat)
settings.weapon_finish = True
settings.weapon_camo_region = 'ANY'
weapon = bpy.data.materials.new('wpn_test_receiver')
weapon.use_nodes = True
slots = dict.fromkeys(addon.SLOT_ROLES)
slots.update(model='wpn_test_vm', game='BO7', camo=maps['blend'])
for _ in range(2):
    addon.build_material(weapon, slots, settings, 'AUTO', kind='DEFAULT')
    assert weapon.node_tree.nodes.get('CoD Camo Time')
    assert len(weapon.node_tree.animation_data.drivers) == 1, 'Reshade left duplicate drivers'
    assert weapon.node_tree.nodes[addon.WEAPON_NODE_NAME].inputs['Camo Color'].is_linked
plane.data.materials.append(weapon)
scene.render.fps = 30
scene.render.fps_base = 1.0


def at(frame, subframe=0.0):
    scene.frame_set(frame, subframe=subframe)
    bpy.context.view_layer.update()
    return clock.outputs[0].default_value


assert math.isclose(at(1), 0.0, abs_tol=1e-5)
assert math.isclose(at(31), 1.0, abs_tol=1e-5)
assert math.isclose(at(16, 0.5), 15.5 / 30, abs_tol=1e-5)
scene.render.fps_base = 1.001
assert math.isclose(at(31), 1.001, abs_tol=1e-5)
settings.weapon_camo_speed = -2.0
assert math.isclose(at(31), -2.002, abs_tol=1e-5)
settings.weapon_camo_speed = 0.0
settings.weapon_camo_phase = 3.0
assert math.isclose(at(91), 3.0, abs_tol=1e-5)
settings.weapon_camo_animate = False
assert math.isclose(at(91), 0.0, abs_tol=1e-5)
settings.weapon_camo_animate = True
settings.weapon_camo_speed = 1.0
settings.weapon_camo_phase = 0.0
scene.render.fps_base = 1.0
assert math.isclose(at(31), 1.0, abs_tol=1e-5)
for mat in bpy.data.materials:
    if mat.node_tree and mat.node_tree.animation_data:
        assert all(fc.driver.is_valid for fc in mat.node_tree.animation_data.drivers)

# A real textured material makes animation observable in rendered frames.
nt = material.node_tree
color = next(n for n in nt.nodes if n.label == "Camo Star Overlay").outputs[0]
emission = nt.nodes.new("ShaderNodeEmission")
nt.links.new(color, emission.inputs['Color'])
output = nt.nodes.new("ShaderNodeOutputMaterial")
nt.links.new(emission.outputs[0], output.inputs['Surface'])
scene.camera.location = (0, 0, 3)
scene.camera.rotation_euler = (0, 0, 0)
scene.camera.data.type = 'ORTHO'
scene.camera.data.ortho_scale = 2.1
scene.render.engine = 'CYCLES'
scene.cycles.samples = 1
scene.render.resolution_x = 256
scene.render.resolution_y = 256
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = 'PNG'
for frame in (1, 121):
    scene.frame_set(frame)
    scene.render.filepath = str(ROOT / 'renders' / ('bo7_camo_frame_%04d.png' % frame))
    bpy.ops.render.render(write_still=True)

pixels = []
for frame in (1, 121):
    image = bpy.data.images.load(str(ROOT / 'renders' / ('bo7_camo_frame_%04d.png' % frame)))
    pixels.append(list(image.pixels[:]))
    bpy.data.images.remove(image)
assert sum(abs(a - b) for a, b in zip(*pixels)) / len(pixels[0]) > 0.01, 'Rendered cam