function __background_set_showcolour(argument0) //gml_Script___background_set_showcolour
{
    var __newvis = argument0
    var __colinfo = __background_get_colour_element()
    if (__colinfo[0] == -1)
        return 0;
    layer_background_visible(__colinfo[0], __newvis)
    return __newvis;
}

