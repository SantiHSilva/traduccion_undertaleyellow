function scr_fasttravel_add(argument0) //gml_Script_scr_fasttravel_add
{
    for (var i = 0; i < ds_list_size(global.fast_travel_list); i++)
    {
        if (ds_list_find_value(global.fast_travel_list, i) == argument0)
            return 0;
    }
    ds_list_add(global.fast_travel_list, argument0)
    ds_list_sort(global.fast_travel_list, 0)
}

