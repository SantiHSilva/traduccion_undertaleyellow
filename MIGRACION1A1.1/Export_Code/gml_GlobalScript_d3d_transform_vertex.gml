function d3d_transform_vertex(argument0, argument1, argument2) //gml_Script_d3d_transform_vertex
{
    var m = matrix_get(2)
    return matrix_transform_vertex(m, argument0, argument1, argument2);
}

