function d3d_model_clear(argument0) //gml_Script_d3d_model_clear
{
    var __m = argument0
    if (__m[(0 << 0)] != undefined)
    {
        buffer_delete(__m[(0 << 0)])
        __m[(0 << 0)] = undefined
    }
    if (__m[(1 << 0)] != undefined)
    {
        buffer_delete(__m[(1 << 0)])
        __m[(1 << 0)] = undefined
    }
    if (__m[(2 << 0)] != undefined)
    {
        buffer_delete(__m[(2 << 0)])
        __m[(2 << 0)] = undefined
    }
    if (__m[(3 << 0)] != undefined)
    {
        buffer_delete(__m[(3 << 0)])
        __m[(3 << 0)] = undefined
    }
    if (__m[(4 << 0)] != undefined)
    {
        buffer_delete(__m[(4 << 0)])
        __m[(4 << 0)] = undefined
    }
    if (__m[(5 << 0)] != undefined)
    {
        buffer_delete(__m[(5 << 0)])
        __m[(5 << 0)] = undefined
    }
    if (__m[(6 << 0)] != undefined)
    {
        vertex_delete_buffer(__m[(6 << 0)])
        __m[(6 << 0)] = undefined
    }
    if (__m[(7 << 0)] != undefined)
    {
        vertex_delete_buffer(__m[(7 << 0)])
        __m[(7 << 0)] = undefined
    }
    if (__m[(8 << 0)] != undefined)
    {
        vertex_delete_buffer(__m[(8 << 0)])
        __m[(8 << 0)] = undefined
    }
    __m[(11 << 0)] = 0
    __m[(13 << 0)] = 0
    __m[(14 << 0)] = 0
    __m[(15 << 0)] = 0
}

