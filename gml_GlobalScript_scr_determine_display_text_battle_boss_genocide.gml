function scr_determine_display_text_battle_boss_genocide() //gml_Script_scr_determine_display_text_battle_boss_genocide
{
    var game_mode = global.game_mode
    var battle_enemy_name = global.battle_enemy_name
    if (global.game_mode == "customs")
    {
    }
    else if (global.game_mode == "yellow")
    {
        switch battle_enemy_name
        {
            case "decibat":
                if (!instance_exists(obj_piece))
                    return 1;
                else
                    return 0;
                break
            default:
                return 1;
        }

    }
}

