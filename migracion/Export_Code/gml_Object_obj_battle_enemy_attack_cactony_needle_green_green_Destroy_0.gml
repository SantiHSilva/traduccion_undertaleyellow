if (heart_collided == 1)
{
    var enemy_count = global.enemy_count
    if (global.battle_enemy_name_1 == "cactony a" && global.enemy_low_hp == 0 && global.enemy_dead == 0 && global.enemy_spared == 0)
    {
        if (global.action_1_selected_count >= 1)
            global.enemy_sparing = 1
    }
    if (enemy_count >= 2)
    {
        if (global.battle_enemy_name_2 == "cactony b" && global.enemy_low_hp_2 == 0 && global.enemy_dead_2 == 0 && global.enemy_spared_2 == 0)
        {
            if (global.action_1_selected_count_2 >= 1)
                global.enemy_sparing = 1
        }
    }
    if (enemy_count >= 3)
    {
        if (global.battle_enemy_name_3 == "cactony c" && global.enemy_low_hp_3 == 0 && global.enemy_dead_3 == 0 && global.enemy_spared_3 == 0)
        {
            if (global.action_1_selected_count_3 >= 1)
                global.enemy_sparing = 1
        }
    }
}
