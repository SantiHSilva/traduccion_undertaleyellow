function d3d_model_wall(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) //gml_Script_d3d_model_wall
{
    var __ind = argument0
    var __x1 = argument1
    var __y1 = argument2
    var __z1 = argument3
    var __x2 = argument4
    var __y2 = argument5
    var __z2 = argument6
    var __hrepeat = argument7
    var __vrepeat = argument8
    var __xdiff = (__x2 - __x1)
    var __ydiff = (__y2 - __y1)
    var __lsquared = ((__xdiff * __xdiff) + (__ydiff * __ydiff))
    if (__lsquared == 0)
        return 0;
    var __l = sqrt(__lsquared)
    var __nx = (__ydiff / __l)
    var __ny = ((-__xdiff) / __l)
    d3d_model_primitive_begin(__ind, 6)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z1, __nx, __ny, 0, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z1, __nx, __ny, 0, __hrepeat, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z2, __nx, __ny, 0, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z2, __nx, __ny, 0, 0, __vrepeat)
    d3d_model_primitive_end(__ind)
}

