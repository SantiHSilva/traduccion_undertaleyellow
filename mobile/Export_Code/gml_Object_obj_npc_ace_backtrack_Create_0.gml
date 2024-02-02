event_inherited()
npc_voice_sfx = 106
up_sprite_idle = 135
right_sprite_idle = 132
down_sprite_idle = 130
left_sprite_idle = 134
npc_id = (room_get_name(room) + object_get_name(object_index))
if is_undefined(ds_map_find_value(global.npc_map, npc_id))
    ds_map_add(global.npc_map, npc_id, 0)
npc_flag = ds_map_find_value(global.npc_map, npc_id)
