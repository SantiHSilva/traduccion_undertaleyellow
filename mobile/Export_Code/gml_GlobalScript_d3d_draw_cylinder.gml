function d3d_draw_cylinder(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) //gml_Script_d3d_draw_cylinder
{
    var __x1 = argument0
    var __y1 = argument1
    var __z1 = argument2
    var __x2 = argument3
    var __y2 = argument4
    var __z2 = argument5
    var __tex = argument6
    var __hrepeat = argument7
    var __vrepeat = argument8
    var __closed = argument9
    var __steps = argument10
    if (__steps < 3)
        __steps = 3
    if (__steps > 128)
        __steps = 128
    __cc[__steps] = 0
    __ss[__steps] = 0
    for (var __i = 0; __i <= __steps; __i++)
    {
        var __rad = (((__i * 2) * pi) / __steps)
        __cc[__i] = cos(__rad)
        __ss[__i] = sin(__rad)
    }
    var __mx = ((__x2 + __x1) / 2)
    var __my = ((__y2 + __y1) / 2)
    var __rx = ((__x2 - __x1) / 2)
    var __ry = ((__y2 - __y1) / 2)
    var __oldrep = gpu_get_texrepeat()
    gpu_set_texrepeat(1)
    if (__closed == 1)
    {
        d3d_primitive_begin_texture(6, __tex)
        d3d_vertex_normal_texture(__mx, __my, __z2, 0, 0, 1, 0, __vrepeat)
        for (__i = 0; __i <= __steps; __i++)
            d3d_vertex_normal_texture((__mx + (__cc[__i] * __rx)), (__my + (__ss[__i] * __ry)), __z2, 0, 0, 1, 0, __vrepeat)
        d3d_primitive_end()
    }
    d3d_primitive_begin_texture(5, __tex)
    for (__i = 0; __i <= __steps; __i++)
    {
        d3d_vertex_normal_texture((__mx + (__cc[__i] * __rx)), (__my + (__ss[__i] * __ry)), __z2, __cc[__i], __ss[__i], 0, ((__hrepeat * __i) / __steps), __vrepeat)
        d3d_vertex_normal_texture((__mx + (__cc[__i] * __rx)), (__my + (__ss[__i] * __ry)), __z1, __cc[__i], __ss[__i], 0, ((__hrepeat * __i) / __steps), 0)
    }
    d3d_primitive_end()
    if (__closed == 1)
    {
        d3d_primitive_begin_texture(6, __tex)
        d3d_vertex_normal_texture(__mx, __my, __z1, 0, 0, -1, 0, 0)
        for (__i = __steps; __i >= 0; __i--)
            d3d_vertex_normal_texture((__mx + (__cc[__i] * __rx)), (__my + (__ss[__i] * __ry)), __z1, 0, 0, -1, 0, 0)
        d3d_primitive_end()
    }
    gpu_set_texrepeat(__oldrep)
}

