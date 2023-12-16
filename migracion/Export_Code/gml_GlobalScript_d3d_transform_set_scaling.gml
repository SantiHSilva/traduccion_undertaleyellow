function d3d_transform_set_scaling(argument0, argument1, argument2) //gml_Script_d3d_transform_set_scaling
{
    var m = matrix_build_identity()
    m[0] = argument0
    m[5] = argument1
    m[10] = argument2
    matrix_set(2, m)
}

