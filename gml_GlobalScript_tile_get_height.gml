function tile_get_height(argument0) //gml_Script_tile_get_height
{
    var __index = argument0
    var __reg = layer_tile_get_region(__index)
    if (array_length_1d(__reg) == 0)
        return 0;
    return __reg[3];
}

