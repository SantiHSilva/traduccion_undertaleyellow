function d3d_transform_set_rotation_y(argument0) //gml_Script_d3d_transform_set_rotation_y
{
    var c = dcos(argument0)
    var s = dsin(argument0)
    var m = matrix_build_identity()
    m[0] = c
    m[2] = s
    m[8] = (-s)
    m[10] = c
    matrix_set(2, m)
}

