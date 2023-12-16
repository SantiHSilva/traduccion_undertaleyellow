function d3d_model_block(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) //gml_Script_d3d_model_block
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
    d3d_model_primitive_begin(__ind, 4)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z1, 0, 0, -1, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x1, __y2, __z1, 0, 0, -1, 0, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z1, 0, 0, -1, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z1, 0, 0, -1, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y1, __z1, 0, 0, -1, __hrepeat, 0)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z1, 0, 0, -1, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z2, 0, 0, 1, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y1, __z2, 0, 0, 1, __hrepeat, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z2, 0, 0, 1, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z2, 0, 0, 1, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x1, __y2, __z2, 0, 0, 1, 0, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z2, 0, 0, 1, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x1, __y2, __z1, 0, 1, 0, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x1, __y2, __z2, 0, 1, 0, 0, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z2, 0, 1, 0, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z2, 0, 1, 0, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z1, 0, 1, 0, __hrepeat, 0)
    d3d_model_vertex_normal_texture(__ind, __x1, __y2, __z1, 0, 1, 0, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z1, 1, 0, 0, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z2, 1, 0, 0, 0, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y1, __z2, 1, 0, 0, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y1, __z2, 1, 0, 0, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x2, __y1, __z1, 1, 0, 0, __hrepeat, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y2, __z1, 1, 0, 0, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y1, __z1, 0, -1, 0, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y1, __z2, 0, -1, 0, 0, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z2, 0, -1, 0, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z2, 0, -1, 0, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z1, 0, -1, 0, __hrepeat, 0)
    d3d_model_vertex_normal_texture(__ind, __x2, __y1, __z1, 0, -1, 0, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z1, -1, 0, 0, 0, 0)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z2, -1, 0, 0, 0, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x1, __y2, __z2, -1, 0, 0, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x1, __y2, __z2, -1, 0, 0, __hrepeat, __vrepeat)
    d3d_model_vertex_normal_texture(__ind, __x1, __y2, __z1, -1, 0, 0, __hrepeat, 0)
    d3d_model_vertex_normal_texture(__ind, __x1, __y1, __z1, -1, 0, 0, 0, 0)
    d3d_model_primitive_end(__ind)
}

