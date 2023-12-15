function scr_battle_core_directory_flavor_text_enemy_1_action_3() //gml_Script_scr_battle_core_directory_flavor_text_enemy_1_action_3
{
    var battle_enemy_name = global.battle_enemy_name
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* Craniex parece estar#  cansÃ¡ndose de tus chistes."
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "insomnitot solo")
            message[0] = "* A Insomnitot se le dificulta#  mantenerse consciente."
        else if (battle_enemy_name == "insomnitot duo")
            message[0] = "* A Insomnitot se le dificulta#  mantenerse consciente."
        else if (battle_enemy_name == "bowll solo")
            message[0] = "* Bowll empiaza a juntar las#  piezas."
    }
}

