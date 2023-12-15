if (global.current_hp_enemy_3 < 0)
    global.current_hp_enemy_3 = 0
if (global.current_hp_enemy_draw_3 > global.current_hp_enemy_3)
    global.current_hp_enemy_draw_3 -= ((global.last_hp_enemy_3 - global.current_hp_enemy_3) / 10)
if (global.current_hp_enemy_draw_3 <= global.current_hp_enemy_3)
    global.current_hp_enemy_draw_3 = global.current_hp_enemy_3
if (global.current_hp_enemy_draw_3 == global.current_hp_enemy_3 && execute_code == 1 && no_loop == 0)
{
    if (instance_exists(obj_text_damage_count) && obj_text_damage_count.y == obj_text_damage_count.starting_point)
    {
        alarm[1] = 15
        no_loop = 1
    }
    else if (instance_exists(obj_text_miss) && obj_text_miss.y == obj_text_miss.starting_point)
    {
        alarm[1] = 15
        no_loop = 1
    }
}
