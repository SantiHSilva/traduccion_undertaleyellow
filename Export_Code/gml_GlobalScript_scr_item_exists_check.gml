function scr_item_exists_check(argument0) //gml_Script_scr_item_exists_check
{
    var i = 1
    while (i <= 8)
    {
        if (global.item_slot[i] == argument0)
            return 1;
        else
        {
            if (i == 8)
                return 0;
            i += 1
            continue
        }
    }
}

