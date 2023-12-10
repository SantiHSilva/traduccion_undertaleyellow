function scr_damage_special_condition_reticle_yellow() //gml_Script_scr_damage_special_condition_reticle_yellow
{
    if (global.battling_boss == 1)
        var battle_enemy_name = global.battle_enemy_name
    else
    {
        var act_number = global.act_number
        switch act_number
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1
                break
            case 2:
                battle_enemy_name = global.battle_enemy_name_2
                break
            case 3:
                battle_enemy_name = global.battle_enemy_name_3
                break
            default:
                battle_enemy_name = global.battle_enemy_name_1
        }

    }
    if (battle_enemy_name == "micro froggit")
    {
        if (outline <= (small_circle * 0.25))
            global.enemy_vulnerable = 1
        else
            global.enemy_vulnerable = 0
    }
}

