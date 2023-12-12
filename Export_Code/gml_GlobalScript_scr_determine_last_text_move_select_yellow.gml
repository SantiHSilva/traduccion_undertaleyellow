function scr_determine_last_text_move_select_yellow() //gml_Script_scr_determine_last_text_move_select_yellow
{
    var battle_enemy_name = global.battle_enemy_name
    switch battle_enemy_name
    {
        case "flier solo":
            return 4;
        case "flier trio":
            return 8;
        case "penilla solo":
        case "flier penilla duo":
            return 5;
        default:
            return 1;
    }

}

