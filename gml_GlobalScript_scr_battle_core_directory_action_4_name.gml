function scr_battle_core_directory_action_4_name() //gml_Script_scr_battle_core_directory_action_4_name
{
    if (global.battling_boss == 1)
    {
        var battle_enemy_name = global.battle_enemy_name
        if (global.action_4_important == 1)
            draw_set_color(global.action_4_color)
        else
            draw_set_color(c_white)
    }
    else
    {
        var act_number = global.act_number
        switch act_number
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1
                if (global.action_4_important == 1)
                    draw_set_color(global.action_4_color)
                else
                    draw_set_color(c_white)
                break
            case 2:
                battle_enemy_name = global.battle_enemy_name_2
                if (global.action_4_important_2 == 1)
                    draw_set_color(global.action_4_color_2)
                else
                    draw_set_color(c_white)
                break
            case 3:
                battle_enemy_name = global.battle_enemy_name_3
                if (global.action_4_important_3 == 1)
                    draw_set_color(global.action_4_color_3)
                else
                    draw_set_color(c_white)
                break
            default:
                battle_enemy_name = global.battle_enemy_name_1
                if (global.action_4_important == 1)
                {
                    draw_set_color(global.action_4_color)
                    break
                }
                else
                    draw_set_color(c_white)
        }

    }
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
    }
}

