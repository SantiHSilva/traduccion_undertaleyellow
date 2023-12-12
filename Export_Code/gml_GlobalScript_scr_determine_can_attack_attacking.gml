function scr_determine_can_attack_attacking() //gml_Script_scr_determine_can_attack_attacking
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
                if (global.enemy_sparing == 1)
                    return 0;
                else
                    return 1;
                break
            case "dalv":
                if (global.enemy_sparing == 1 || global.action_2_important == 1)
                    return 0;
                else
                    return 1;
                break
            case "insomnitot solo":
                if (global.enemy_sparing == 1 && global.enemy_low_hp == 0)
                    return 0;
                else
                    return 1;
                break
            case "insomnitot duo":
                if (((global.enemy_sparing == 1 && global.enemy_low_hp == 0) || (global.enemy_dead + global.enemy_spared) >= 1) && ((global.enemy_sparing_2 == 1 && global.enemy_low_hp_2 == 0) || (global.enemy_dead_2 + global.enemy_spared_2) >= 1))
                    return 0;
                else
                    return 1;
                break
            case "know cone insomnitot duo":
                if ((global.enemy_dead + global.enemy_spared) >= 1 && global.enemy_sparing_2 == 1 && global.enemy_low_hp_2 == 0)
                    return 0;
                else
                    return 1;
                break
            case "cactony slither duo":
                return 1;
            case "martlet pacifist":
                var enemy_mode = global.enemy_mode
                switch enemy_mode
                {
                    case 2:
                    case 3:
                    case 7:
                        return 1;
                    case 4:
                        if (global.turns_passed == 3)
                            return 1;
                        else
                            return 0;
                        break
                    case 5:
                        if (global.turns_passed <= 4)
                            return 1;
                        else
                            return 0;
                        break
                    case 6:
                        if (global.last_action_selected == "Action 3 Phase 2" || global.last_action_selected == "Action 3 Phase 1")
                            return 1;
                        else
                            return 0;
                        break
                    default:
                        return 0;
                }

                break
            case "martlet genocide":
                enemy_mode = global.enemy_mode
                switch enemy_mode
                {
                    case 2:
                        if (global.hit_count >= 3)
                            return 1;
                        else
                            return 0;
                        break
                    case 3:
                        return 1;
                    default:
                        return 0;
                }

                break
            case "dummy training pacifist":
                return 0;
            default:
                return 1;
        }

    }
}

