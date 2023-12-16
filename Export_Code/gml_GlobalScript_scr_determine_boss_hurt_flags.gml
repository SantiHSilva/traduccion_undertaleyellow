function scr_determine_boss_hurt_flags() //gml_Script_scr_determine_boss_hurt_flags
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
    if (battle_enemy_name == "froggit intro")
    {
    }
    else if (battle_enemy_name == "flowey intro")
    {
    }
    else if (battle_enemy_name == "flier a")
    {
    }
    else if (battle_enemy_name == "penilla a")
    {
    }
    else if (battle_enemy_name == "sweet corn a")
    {
    }
    else if (battle_enemy_name == "crispy scroll a")
    {
    }
    else if (battle_enemy_name == "rorrim a")
    {
    }
    else if (battle_enemy_name == "decibat")
    {
        if (global.current_hp_enemy < global.max_hp_enemy)
            global.dark_ruins_boss_hurt[1] = 1
    }
    else if (battle_enemy_name == "dalv")
    {
        if (global.current_hp_enemy < global.max_hp_enemy)
            global.dark_ruins_boss_hurt[2] = 1
    }
    else if (battle_enemy_name == "micro froggit")
    {
        if (global.current_hp_enemy < global.max_hp_enemy)
            global.dark_ruins_boss_hurt[3] = 1
    }
    else if (battle_enemy_name == "frostermit a")
    {
    }
    else if (battle_enemy_name == "insomnitot a")
    {
    }
    else if (battle_enemy_name == "know cone a")
    {
    }
    else if (battle_enemy_name == "trihecta" || battle_enemy_name == "tri")
    {
    }
    else if (battle_enemy_name == "martlet pacifist")
    {
    }
    else if (battle_enemy_name == "martlet genocide")
    {
    }
    else if (battle_enemy_name == "shufflers")
    {
    }
}

