damage_number = scr_determine_damage_number_enemy("flowey", "void", "void")
image_speed = 0.5
image_index = 0
move = 0
move_speed_create = 3
move_speed_attack = 0
move_speed_attack_max = 4
move_speed_attack_increase = 0.05
distance_counter = 0
distance_counter_max = 30
angle_spread = 30
no_loop = 0
var pellet_count = instance_number(obj_battle_enemy_attack_fpellets)
angle = (pellet_count * angle_spread)
