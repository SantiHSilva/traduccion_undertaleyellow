function d3d_model_load(argument0, argument1) //gml_Script_d3d_model_load
{
    var __ind = argument0
    var __fname = argument1
    var __file = file_text_open_read(__fname)
    if (__file == -1)
        return -1;
    var __version = file_text_read_real(__file)
    if (__version != 100)
    {
        file_text_close(__file)
        return -1;
    }
    file_text_readln(__file)
    var __numthings = file_text_read_real(__file)
    file_text_readln(__file)
    d3d_model_clear(__ind)
    for (var __currthing = 0; __currthing < __numthings; __currthing++)
    {
        var __kind = round(file_text_read_real(__file))
        for (var __i = 0; __i < 10; __i++)
            __args[__i] = file_text_read_real(__file)
        file_text_readln(__file)
        switch __kind
        {
            case (0 << 0):
                d3d_model_primitive_begin(__ind, round(__args[0]))
                break
            case (1 << 0):
                d3d_model_primitive_end(__ind)
                break
            case (2 << 0):
                d3d_model_vertex(__ind, __args[0], __args[1], __args[2])
                break
            case (3 << 0):
                d3d_model_vertex_color(__ind, __args[0], __args[1], __args[2], round(__args[3]), __args[4])
                break
            case (4 << 0):
                d3d_model_vertex_texture(__ind, __args[0], __args[1], __args[2], __args[3], __args[4])
                break
            case (5 << 0):
                d3d_model_vertex_texture_color(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], round(__args[5]), __args[6])
                break
            case (6 << 0):
                d3d_model_vertex_normal(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5])
                break
            case (7 << 0):
                d3d_model_vertex_normal_color(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], round(__args[6]), __args[7])
                break
            case (8 << 0):
                d3d_model_vertex_normal_texture(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7])
                break
            case (9 << 0):
                d3d_model_vertex_normal_texture_color(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7], round(__args[8]), __args[9])
                break
            case (10 << 0):
                d3d_model_block(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7])
                break
            case (11 << 0):
                d3d_model_cylinder(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7], round(__args[8]), round(__args[9]))
                break
            case (12 << 0):
                d3d_model_cone(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7], round(__args[8]), round(__args[9]))
                break
            case (13 << 0):
                d3d_model_ellipsoid(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7], round(__args[8]))
                break
            case (14 << 0):
                d3d_model_wall(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7])
                break
            case (15 << 0):
                d3d_model_floor(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7])
                break
        }

    }
    file_text_close(__file)
}

