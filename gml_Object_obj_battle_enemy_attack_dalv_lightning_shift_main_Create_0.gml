damage_number = scr_determine_damage_number_enemy("dalv", "void", "void")
disjoint = 35
y -= disjoint
image_speed = 0.6
image_index = 0
image_alpha = 0
draw_position_y = y
move = 0
move_speed = 0
move_speed_increase = 1
move_speed_max = 60
sign_modifier = -1
time_elapsed = 0
time_max = 225
time_increase = 1
max_rise = abs(((y - obj_dialogue_box_battle_transformation_any.bbox_top) - 17))
instance_create(x, (y + (disjoint * 2)), obj_battle_enemy_attack_dalv_lightning_shift_second)
