function tile_layer_depth(argument0, argument1) //gml_Script_tile_layer_depth
{
    var __depth = argument0
    var __newdepth = argument1
    var __layers = layer_get_all()
    var __numlayers = array_length_1d(__layers)
    __layerstomove[0] = -1
    var __numlayerstomove = 0
    var __layertouse = -1
    var __i = 0
    while (__i < __numlayers)
    {
        var __layerdepth = layer_get_depth(__layers[__i])
        if (__layerdepth == __depth)
        {
            __layerstomove[__numlayerstomove] = __layers[__i]
            __numlayerstomove++
            __i++
            continue
        }
        else if (layer_get_depth(__layers[__i]) == __newdepth)
        {
            __layertouse = __layers[__i]
            break
        }
        else
        {
            __i++
            continue
        }
    }
    if (__layertouse == -1)
        __layertouse = layer_create(__newdepth)
    for (__i = 0; __i < __numlayerstomove; __i++)
    {
        var __els = layer_get_all_elements(__layerstomove[__i])
        var __numels = array_length_1d(__els)
        for (var __j = 0; __j < __numels; __j++)
        {
            if (layer_get_element_type(__els[__j]) == 7)
                layer_element_move(__els[__j], __layertouse)
        }
    }
}

