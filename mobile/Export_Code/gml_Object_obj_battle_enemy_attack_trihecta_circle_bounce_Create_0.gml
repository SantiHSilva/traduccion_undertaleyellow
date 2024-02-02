if (global.battle_enemy_name_1 == "trihecta")
    damage_number = scr_determine_damage_number_enemy("trihecta", "void", "void")
else
    damage_number = scr_determine_damage_number_enemy("tri", "hec", "ta")
if (x < obj_dialogue_box_battle_transformation_any.bbox_left)
    var sign_factor = 1
else
    sign_factor = -1
x_speed = (sign_factor * irandom_range(2, 4))
execute_end = 0
bounce_sound_execute = 1
bounce_sound_can_check = 0
image_speed = 0.5
image_index = 0
