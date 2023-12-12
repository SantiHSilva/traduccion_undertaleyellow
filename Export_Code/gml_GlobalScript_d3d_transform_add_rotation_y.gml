function d3d_transform_add_rotation_y(argument0) //gml_Script_d3d_transform_add_rotation_y
{
    var c = dcos(argument0)
    var s = dsin(argument0)
    var mT = matrix_build_identity()
    mT[0] = c
    mT[2] = s
    mT[8] = (-s)
    mT[10] = c
    var m = matrix_get(2)
    var mR = matrix_multiply(m, mT)
    matrix_set(2, mR)
}

