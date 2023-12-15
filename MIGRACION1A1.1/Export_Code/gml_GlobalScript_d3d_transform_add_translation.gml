function d3d_transform_add_translation(argument0, argument1, argument2) //gml_Script_d3d_transform_add_translation
{
    var mT = matrix_build_identity()
    mT[12] = argument0
    mT[13] = argument1
    mT[14] = argument2
    var m = matrix_get(2)
    var mR = matrix_multiply(m, mT)
    matrix_set(2, mR)
}

