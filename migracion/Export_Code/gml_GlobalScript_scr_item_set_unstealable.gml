function scr_item_set_unstealable() //gml_Script_scr_item_set_unstealable
{
    var selection = argument[0]
    switch selection
    {
        case "Wild Revolver":
        case "Silver Ammo":
        case "Fancy Holster":
        case "Honeydew Pin":
            ds_list_add(global.steal_list, selection)
            return 1;
        default:
            return 1;
    }

}

