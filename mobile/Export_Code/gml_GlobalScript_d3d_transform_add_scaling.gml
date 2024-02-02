function d3d_transform_add_scaling(argument0, argument1, argument2) //gml_Script_d3d_transform_add_scaling
{
    var mT = matrix_build_identity()
    mT[0] = argument0
    mT[5] = argument1
    mT[10] = argument2
    var m = matrix_get(2)
    var mR = matrix_multiply(m, mT)
    matrix_set(2, mR)
}

