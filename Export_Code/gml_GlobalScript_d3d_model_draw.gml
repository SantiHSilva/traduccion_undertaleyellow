function d3d_model_draw(argument0, argument1, argument2, argument3, argument4) //gml_Script_d3d_model_draw
{
    var m = argument0
    var tex = argument4
    var vertsize = 36
    var vertuvoffset = 28
    if (tex != -1 && tex != m[(9 << 0)])
    {
        var texuvs = texture_get_uvs(tex)
        var uspan = (texuvs[2] - texuvs[0])
        var vspan = (texuvs[3] - texuvs[1])
        var ubase = texuvs[0]
        var vbase = texuvs[1]
        if (m[(0 << 0)] != undefined && m[(3 << 0)] != undefined)
        {
            var numverts = (buffer_tell(m[(3 << 0)]) / 8)
            buffer_seek(m[(3 << 0)], buffer_seek_start, 0)
            var __uvpos = vertuvoffset
            var __src = m[(3 << 0)]
            var __dest = m[(0 << 0)]
            for (var __i = 0; __i < numverts; __i++)
            {
                var __u = buffer_read(__src, buffer_f32)
                var __v = buffer_read(__src, buffer_f32)
                __u = ((__u * uspan) + ubase)
                __v = ((__v * vspan) + vbase)
                buffer_poke(__dest, __uvpos, buffer_f32, __u)
                buffer_poke(__dest, (__uvpos + 4), buffer_f32, __v)
                __uvpos += vertsize
            }
        }
        if (m[(1 << 0)] != undefined && m[(4 << 0)] != undefined)
        {
            numverts = (buffer_tell(m[(4 << 0)]) / 8)
            buffer_seek(m[(4 << 0)], buffer_seek_start, 0)
            __uvpos = vertuvoffset
            __src = m[(4 << 0)]
            __dest = m[(1 << 0)]
            for (__i = 0; __i < numverts; __i++)
            {
                __u = buffer_read(__src, buffer_f32)
                __v = buffer_read(__src, buffer_f32)
                __u = ((__u * uspan) + ubase)
                __v = ((__v * vspan) + vbase)
                buffer_poke(__dest, __uvpos, buffer_f32, __u)
                buffer_poke(__dest, (__uvpos + 4), buffer_f32, __v)
                __uvpos += vertsize
            }
        }
        if (m[(2 << 0)] != undefined && m[(5 << 0)] != undefined)
        {
            numverts = (buffer_tell(m[(5 << 0)]) / 8)
            buffer_seek(m[(5 << 0)], buffer_seek_start, 0)
            __uvpos = vertuvoffset
            __src = m[(5 << 0)]
            __dest = m[(2 << 0)]
            for (__i = 0; __i < numverts; __i++)
            {
                __u = buffer_read(__src, buffer_f32)
                __v = buffer_read(__src, buffer_f32)
                __u = ((__u * uspan) + ubase)
                __v = ((__v * vspan) + vbase)
                buffer_poke(__dest, __uvpos, buffer_f32, __u)
                buffer_poke(__dest, (__uvpos + 4), buffer_f32, __v)
                __uvpos += vertsize
            }
        }
        array_set(m, (9 << 0), tex)
        if (m[(6 << 0)] != undefined)
        {
            vertex_delete_buffer(m[(6 << 0)])
            array_set(m, (6 << 0), undefined)
        }
        if (m[(7 << 0)] != undefined)
        {
            vertex_delete_buffer(m[(7 << 0)])
            array_set(m, (7 << 0), undefined)
        }
        if (m[(8 << 0)] != undefined)
        {
            vertex_delete_buffer(m[(8 << 0)])
            array_set(m, (8 << 0), undefined)
        }
    }
    var currColour = (draw_get_colour() | ((draw_get_alpha() * 255) << 24))
    if (currColour != m[(10 << 0)] && (m[(13 << 0)] > 0 || m[(14 << 0)] > 0 || m[(15 << 0)] > 0))
    {
        var __numPointCols = m[(13 << 0)]
        var __numLineCols = m[(14 << 0)]
        var __numTriCols = m[(15 << 0)]
        if (m[(0 << 0)] != undefined)
        {
            var __offsets = m[(16 << 0)]
            __dest = m[(0 << 0)]
            for (__i = 0; __i < __numPointCols; __i++)
                buffer_poke(__dest, __offsets[__i], buffer_u32, currColour)
        }
        if (m[(1 << 0)] != undefined)
        {
            __offsets = m[(17 << 0)]
            __dest = m[(1 << 0)]
            for (__i = 0; __i < __numLineCols; __i++)
                buffer_poke(__dest, __offsets[__i], buffer_u32, currColour)
        }
        if (m[(2 << 0)] != undefined)
        {
            __offsets = m[(18 << 0)]
            __dest = m[(2 << 0)]
            for (__i = 0; __i < __numTriCols; __i++)
                buffer_poke(__dest, __offsets[__i], buffer_u32, currColour)
        }
        if (m[(6 << 0)] != undefined)
        {
            vertex_delete_buffer(m[(6 << 0)])
            array_set(m, (6 << 0), undefined)
        }
        if (m[(7 << 0)] != undefined)
        {
            vertex_delete_buffer(m[(7 << 0)])
            array_set(m, (7 << 0), undefined)
        }
        if (m[(8 << 0)] != undefined)
        {
            vertex_delete_buffer(m[(8 << 0)])
            array_set(m, (8 << 0), undefined)
        }
        array_set(m, (10 << 0), currColour)
    }
    var mW = matrix_get(2)
    var mT = matrix_build(argument1, argument2, argument3, 0, 0, 0, 1, 1, 1)
    var mNew = matrix_multiply(mT, mW)
    matrix_set(2, mNew)
    var __oldrep = gpu_get_texrepeat()
    gpu_set_texrepeat(1)
    if (m[(2 << 0)] != undefined)
    {
        if (m[(8 << 0)] == undefined)
        {
            array_set(m, (8 << 0), vertex_create_buffer_from_buffer(m[(2 << 0)], global.__d3dPrimVF))
            vertex_freeze(m[(8 << 0)])
        }
        vertex_submit(m[(8 << 0)], 4, argument4)
    }
    if (m[(1 << 0)] != undefined)
    {
        if (m[(7 << 0)] == undefined)
        {
            array_set(m, (7 << 0), vertex_create_buffer_from_buffer(m[(1 << 0)], global.__d3dPrimVF))
            vertex_freeze(m[(7 << 0)])
        }
        vertex_submit(m[(7 << 0)], 2, argument4)
    }
    if (m[(0 << 0)] != undefined)
    {
        if (m[(6 << 0)] == undefined)
        {
            array_set(m, (6 << 0), vertex_create_buffer_from_buffer(m[(0 << 0)], global.__d3dPrimVF))
            vertex_freeze(m[(6 << 0)])
        }
        vertex_submit(m[(6 << 0)], 1, argument4)
    }
    matrix_set(2, mW)
    gpu_set_texrepeat(__oldrep)
}

