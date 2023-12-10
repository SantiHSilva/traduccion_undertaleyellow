function scr_determine_item_purchasable() //gml_Script_scr_determine_item_purchasable
{
    switch argument[0]
    {
        case "Adult Soda":
        case "Wild Revolver":
            return 0;
        default:
            return 1;
    }

}

