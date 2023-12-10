function scr_inventory_check_space() //gml_Script_scr_inventory_check_space
{
    var i = 1
    while (i <= 8)
    {
        if (global.item_slot[i] == "Nothing")
            return 1;
        else
        {
            if (i == 8)
                return 0;
            i++
            continue
        }
    }
}

