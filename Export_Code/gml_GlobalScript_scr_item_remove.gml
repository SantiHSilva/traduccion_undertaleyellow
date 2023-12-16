function scr_item_remove(argument0) //gml_Script_scr_item_remove
{
    i = 1
    while (i <= 8)
    {
        if (global.item_slot[i] == argument0)
        {
            while (i < 8)
            {
                global.item_slot[i] = global.item_slot[(i + 1)]
                i += 1
            }
            global.item_slot[8] = "Nothing"
            return 1;
        }
        else
        {
            if (i == 8)
                return 0;
            i += 1
            continue
        }
    }
}

