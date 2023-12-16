function d3d_transform_set_rotation_z(argument0) //gml_Script_d3d_transform_set_rotation_z
{
    var c = dcos(argument0)
    var s = dsin(argument0)
    var m = matrix_build_identity()
    m[0] = c
    m[1] = (-s)
    m[4] = s
    m[5] = c
    matrix_set(2, m)
}

