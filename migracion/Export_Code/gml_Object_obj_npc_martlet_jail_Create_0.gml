event_inherited()
npc_voice_sfx = 102
up_sprite_idle = 262
right_sprite_idle = 263
down_sprite_idle = 265
left_sprite_idle = 268
npc_id = (room_get_name(room) + object_get_name(object_index))
if is_undefined(ds_map_find_value(global.npc_map, npc_id))
    ds_map_add(global.npc_map, npc_id, 0)
npc_flag = ds_map_find_value(global.npc_map, npc_id)
martlet_second_cutscene = 0
cutscene_timer = 0
scene = 0
waiter = 0