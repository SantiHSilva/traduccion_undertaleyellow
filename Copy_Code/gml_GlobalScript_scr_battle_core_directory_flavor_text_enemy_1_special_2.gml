function scr_battle_core_directory_flavor_text_enemy_1_special_2() //gml_Script_scr_battle_core_directory_flavor_text_enemy_1_special_2
{
    var battle_enemy_name = global.battle_enemy_name
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "martlet pacifist")
            message[0] = "* Martlet está buscando en su#  guía procedimientos de#  primeros auxilios."
        else if (battle_enemy_name == "axis")
            message[0] = "* Axis está sientendo algo..."
    }
}

