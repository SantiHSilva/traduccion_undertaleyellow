function d3d_transform_add_rotation_z(argument0) //gml_Script_d3d_transform_add_rotation_z
{
    var c = dcos(argument0)
    var s = dsin(argument0)
    var mT = matrix_build_identity()
    mT[0] = c
    mT[1] = (-s)
    mT[4] = s
    mT[5] = c
    var m = matrix_get(2)
    var mR = matrix_multiply(m, mT)
    matrix_set(2, mR)
}

