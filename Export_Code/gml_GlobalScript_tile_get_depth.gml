function tile_get_depth(argument0) //gml_Script_tile_get_depth
{
    var __index = argument0
    var __layerid = layer_get_element_layer(__index)
    return layer_get_depth(__layerid);
}

