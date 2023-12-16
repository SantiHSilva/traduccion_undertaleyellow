var enemy_dead_2 = global.enemy_dead_2
var enemy_spared_2 = global.enemy_spared_2
if (enemy_dead_2 == 0 && enemy_spared_2 == 0)
    image_alpha = global.image_alpha_enemy_attacking
if (enemy_dead_2 == 1)
    instance_destroy()
else if (enemy_spared_2 == 1)
    instance_destroy()
if (damage_disjoint_count > 0)
    damage_disjoint_count -= 1
else if (enemy_dead_2 == 0 && enemy_spared_2 == 0)
{
    if (global.enemy_low_hp_2 == 1 && global.current_hp_enemy_2 < global.max_hp_enemy_2)
        sprite_index = spr_know_cone_hand_right
    else
        sprite_index = spr_know_cone_hand_right
}
if (instance_exists(obj_text_damage_count) && global.fight_number == 2 && no_loop_damage_disjoint_count == 0)
{
    damage_disjoint_count = 12
    no_loop_damage_disjoint_count = 1
}
else if (!instance_exists(obj_text_damage_count))
    no_loop_damage_disjoint_count = 0
if (damage_disjoint_count == 12)
    damage_disjoint_x = -50
else if (damage_disjoint_count == 10)
    damage_disjoint_x = 50
else if (damage_disjoint_count == 8)
    damage_disjoint_x = -20
else if (damage_disjoint_count == 6)
    damage_disjoint_x = 20
else if (damage_disjoint_count == 4)
    damage_disjoint_x = -10
else if (damage_disjoint_count == 2)
    damage_disjoint_x = 10
else if (damage_disjoint_count == 0)
    damage_disjoint_x = 0
if (damage_disjoint_count > 0 || global.current_hp_enemy_2 <= 0)
    image_alpha = 0
x = (draw_position_x + damage_disjoint_x)
y = (draw_position_y + damage_disjoint_y)
