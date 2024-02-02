function scr_item_stats_armor(argument0) //gml_Script_scr_item_stats_armor
{
    switch argument0
    {
        case "Worn Hat":
            if (global.option_easymode == 1)
                return 3;
            else
                return 0;
        case "Nice Hat":
            if (global.option_easymode == 1)
                return 5;
            else
                return 0;
        default:
            return 0;
    }

}

