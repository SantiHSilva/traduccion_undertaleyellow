function scr_determine_last_text_move_select() //gml_Script_scr_determine_last_text_move_select
{
    var battle_enemy_name = global.battle_enemy_name
    switch battle_enemy_name
    {
        case "craniex":
        case "ms mettaton":
            return 4;
        default:
            return 1;
    }

}

