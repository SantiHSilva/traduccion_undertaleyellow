function d3d_transform_set_rotation_x(argument0) //gml_Script_d3d_transform_set_rotation_x
{
    var c = dcos(argument0)
    var s = dsin(argument0)
    var m = matrix_build_identity()
    m[5] = c
    m[6] = (-s)
    m[9] = s
    m[10] = c
    matrix_set(2, m)
}

