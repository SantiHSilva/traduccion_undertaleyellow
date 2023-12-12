damage_number = scr_determine_damage_number_enemy("flower girls", "void", "void")
var box = 3153
dir = choose(1, -1)
if (dir == 1)
    x -= (sprite_width - 200)
move_speed = 4
alarm[0] = 20
can_move = 0
flowers_instance = instance_create(x, y, choose(2546, 2547))
