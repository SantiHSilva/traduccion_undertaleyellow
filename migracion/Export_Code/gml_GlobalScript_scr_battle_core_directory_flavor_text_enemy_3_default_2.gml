function scr_battle_core_directory_flavor_text_enemy_3_default_2() //gml_Script_scr_battle_core_directory_flavor_text_enemy_3_default_2
{
    var battle_enemy_name = global.battle_enemy_name
    var enemy_mode_3 = global.enemy_mode_3
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "trihecta separated")
            message[0] = "* Ta is finding new ways to cause#  trouble."
    }
}
