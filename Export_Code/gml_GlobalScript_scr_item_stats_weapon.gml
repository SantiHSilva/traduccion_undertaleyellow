function scr_item_stats_weapon(argument0) //gml_Script_scr_item_stats_weapon
{
    switch argument0
    {
        case "Toy Knife":
            return 3;
        case "Toy Gun":
        case "Wild Revolver":
            return 0;
        default:
            return 0;
    }

}

