function scr_determine_item_droppable_yellow(argument0) //gml_Script_scr_determine_item_droppable_yellow
{
    var item_slot = argument0
    switch item_slot
    {
        case "Missing Poster":
        case "Snowdin Map":
        case "Matches":
        case "Lukewarm Coffee":
        case "Soggy Mitten":
        case "H. Acid":
            return 0;
        case "Pickaxe":
        case "Flint":
        case "Steel Buckle":
            if (global.dunes_flag[4] >= 2)
                return 1;
            else
                return 0;
            break
        default:
            return 1;
    }

}

