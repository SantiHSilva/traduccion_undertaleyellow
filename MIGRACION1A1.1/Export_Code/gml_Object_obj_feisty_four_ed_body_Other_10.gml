if (!instance_exists(obj_feisty_four_ed_legs))
{
    instance_destroy()
    return;
}
var enemy_dead = global.enemy_dead
var enemy_spared = global.enemy_spared
var enemy_mode = global.enemy_mode
if (enemy_dead == 1)
    instance_destroy()
else if (enemy_spared == 1)
    instance_destroy()
if (damage_disjoint_count > 0)
    damage_disjoint_count -= 1
else if (enemy_dead == 0 && enemy_spared == 0)
{
    if (global.current_hp_enemy <= 0)
        sprite_index = spr_feisty_four_ed_body
    else
        sprite_index = spr_feisty_four_ed_body
}
if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == 0)
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
if (damage_disjoint_count > 0)
    image_alpha = 0
if (obj_feisty_four_ed_legs.animating == 1)
{
    x = (obj_feisty_four_ed_legs.x - difference_x)
    y = obj_feisty_four_ed_legs.hand_left_displacement_y
}
else
{
    x = (obj_feisty_four_ed_legs.x - difference_x)
    y = (obj_feisty_four_ed_legs.y - difference_y)
}
