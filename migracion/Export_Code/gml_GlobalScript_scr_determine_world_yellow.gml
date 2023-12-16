function scr_determine_world_yellow() //gml_Script_scr_determine_world_yellow
{
    var current_world_value = global.player_world_value
    switch current_world_value
    {
        case 0:
            return "Ruins";
        case 1:
            return "Dark Ruins";
        case 2:
            return "Lower Snowdin";
        default:
            return "Ruins";
    }

}

