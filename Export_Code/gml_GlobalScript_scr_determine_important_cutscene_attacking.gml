function scr_determine_important_cutscene_attacking() //gml_Script_scr_determine_important_cutscene_attacking
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
            case "froggit intro":
                return 1;
            case "martlet pacifist":
                var enemy_mode = global.enemy_mode
                switch enemy_mode
                {
                    case 10:
                    case 11:
                    case 12:
                        return 1;
                    default:
                        return 0;
                }

                break
            case "martlet genocide":
                enemy_mode = global.enemy_mode
                switch enemy_mode
                {
                    case 5:
                    case 6:
                        return 1;
                    default:
                        return 0;
                }

                break
            default:
                return 0;
        }

    }
}

