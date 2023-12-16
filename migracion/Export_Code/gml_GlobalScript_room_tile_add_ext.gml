function room_tile_add_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) //gml_Script_room_tile_add_ext
{
    var __ind = argument0
    var __back = argument1
    var __left = argument2
    var __top = argument3
    var __width = argument4
    var __height = argument5
    var __x = argument6
    var __y = argument7
    var __depth = argument8
    var __xscale = argument9
    var __yscale = argument10
    var __alpha = argument11
    if (room_exists(__ind) == 0)
        return -1;
    var __currroom = layer_get_target_room()
    layer_set_target_room(__ind)
    var __layers = layer_get_all()
    var __numlayers = array_length_1d(__layers)
    var __layertouse = -1
    var __i = 0
    while (__i < __numlayers)
    {
        if (layer_get_depth(__layers[__i]) == __depth)
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
        __layertouse = layer_create(__depth)
    var __tile = layer_tile_create(__layertouse, __x, __y, __back, __left, __top, __width, __height)
    layer_tile_xscale(__tile, __xscale)
    layer_tile_yscale(__tile, __yscale)
    layer_tile_alpha(__tile, __alpha)
    layer_set_target_room(__currroom)
    return __tile;
}

