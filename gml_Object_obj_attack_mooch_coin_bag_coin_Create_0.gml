damage_number = scr_determine_damage_number_enemy("mooch", "void", "void")
var battle_box = obj_dialogue_box_battle_transformation_any
travel_distance = 25
direction = point_direction(x, y, battle_box.x, battle_box.y)
avg_speed = 2.8
speed = (avg_speed * 2)
speed_dec = (avg_speed / (travel_distance / avg_speed))
image_alpha = 0
image_speed = (1/3)
depth = -50
audio_play_sound(snd_feisty_mooch_coin_appear, 1, false)
