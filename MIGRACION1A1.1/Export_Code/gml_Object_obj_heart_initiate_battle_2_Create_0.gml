depth = ((-room_height) - 10000)
point_x1 = x
point_y1 = y
point_x2 = (__view_get((0 << 0), 0) + 24)
point_y2 = (__view_get((1 << 0), 0) + 227)
script_execute(gml_Script_scr_determine_heart_initiate_battle_position_yellow)
angle = point_direction(point_x1, point_y1, point_x2, point_y2)
power_x = power(abs((point_x1 - point_x2)), 2)
power_y = power(abs((point_y1 - point_y2)), 2)
move_factor = 15
move_speed = (sqrt((power_x + power_y)) / move_factor)
no_loop = 0
audio_play_sound(snd_soul_battle_start, 20, false)
sprite_index = spr_heart_yellow_overworld
