function __d3d_model_add_vertex(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) //gml_Script___d3d_model_add_vertex
{
    var m = argument0
    var i = (2 << 0)
    var uv_i = (5 << 0)
    var colarrayi = (18 << 0)
    var colnum = (15 << 0)
    switch m[(12 << 0)]
    {
        case 1:
            i = (0 << 0)
            uv_i = (3 << 0)
            colarrayi = (16 << 0)
            colnum = (13 << 0)
            break
        case 2:
        case 3:
            i = (1 << 0)
            uv_i = (4 << 0)
            colarrayi = (17 << 0)
            colnum = (14 << 0)
            break
    }

    var colarray = m[colarrayi]
    var b = m[i]
    if (b == undefined)
    {
        b = buffer_create(36, buffer_grow, 1)
        array_set(m, i, b)
    }
    var uvb = m[uv_i]
    if (uvb == undefined)
    {
        uvb = buffer_create(8, buffer_grow, 1)
        array_set(m, uv_i, uvb)
    }
    var globalcol = 0
    if (argument7 == 65536)
        globalcol = 1
    var c = m[(11 << 0)]
    switch m[(12 << 0)]
    {
        case 1:
        case 2:
        case 4:
            buffer_write(b, buffer_f32, argument1)
            buffer_write(b, buffer_f32, argument2)
            buffer_write(b, buffer_f32, argument3)
            buffer_write(b, buffer_f32, argument4)
            buffer_write(b, buffer_f32, argument5)
            buffer_write(b, buffer_f32, argument6)
            buffer_write(b, buffer_u32, argument7)
            buffer_write(b, buffer_f32, argument8)
            buffer_write(b, buffer_f32, argument9)
            buffer_write(uvb, buffer_f32, argument8)
            buffer_write(uvb, buffer_f32, argument9)
            c++
            if globalcol
            {
                colarray[m[colnum]] = (buffer_tell(b) - 12)
                array_set_post(m, colnum, (array_get(m, colnum) + 1))
            }
            break
        case 3:
            if (c >= 2)
            {
                buffer_write(b, buffer_f32, m[(19 << 0)])
                buffer_write(b, buffer_f32, m[(20 << 0)])
                buffer_write(b, buffer_f32, m[(21 << 0)])
                buffer_write(b, buffer_f32, m[(22 << 0)])
                buffer_write(b, buffer_f32, m[(23 << 0)])
                buffer_write(b, buffer_f32, m[(24 << 0)])
                buffer_write(b, buffer_u32, m[(25 << 0)])
                buffer_write(b, buffer_f32, m[(26 << 0)])
                buffer_write(b, buffer_f32, m[(27 << 0)])
                buffer_write(uvb, buffer_f32, m[(26 << 0)])
                buffer_write(uvb, buffer_f32, m[(27 << 0)])
                c++
                if globalcol
                {
                    colarray[m[colnum]] = (buffer_tell(b) - 12)
                    array_set_post(m, colnum, (array_get(m, colnum) + 1))
                }
            }
            array_set(m, (19 << 0), argument1)
            array_set(m, (20 << 0), argument2)
            array_set(m, (21 << 0), argument3)
            array_set(m, (22 << 0), argument4)
            array_set(m, (23 << 0), argument5)
            array_set(m, (24 << 0), argument6)
            array_set(m, (25 << 0), argument7)
            array_set(m, (26 << 0), argument8)
            array_set(m, (27 << 0), argument9)
            buffer_write(b, buffer_f32, argument1)
            buffer_write(b, buffer_f32, argument2)
            buffer_write(b, buffer_f32, argument3)
            buffer_write(b, buffer_f32, argument4)
            buffer_write(b, buffer_f32, argument5)
            buffer_write(b, buffer_f32, argument6)
            buffer_write(b, buffer_u32, argument7)
            buffer_write(b, buffer_f32, argument8)
            buffer_write(b, buffer_f32, argument9)
            buffer_write(uvb, buffer_f32, argument8)
            buffer_write(uvb, buffer_f32, argument9)
            c++
            if globalcol
            {
                colarray[m[colnum]] = (buffer_tell(b) - 12)
                array_set_post(m, colnum, (array_get(m, colnum) + 1))
            }
            break
        case 5:
            if (c >= 3)
            {
                buffer_write(b, buffer_f32, m[(19 << 0)])
                buffer_write(b, buffer_f32, m[(20 << 0)])
                buffer_write(b, buffer_f32, m[(21 << 0)])
                buffer_write(b, buffer_f32, m[(22 << 0)])
                buffer_write(b, buffer_f32, m[(23 << 0)])
                buffer_write(b, buffer_f32, m[(24 << 0)])
                buffer_write(b, buffer_u32, m[(25 << 0)])
                buffer_write(b, buffer_f32, m[(26 << 0)])
                buffer_write(b, buffer_f32, m[(27 << 0)])
                buffer_write(uvb, buffer_f32, m[(26 << 0)])
                buffer_write(uvb, buffer_f32, m[(27 << 0)])
                c++
                buffer_write(b, buffer_f32, m[(28 << 0)])
                buffer_write(b, buffer_f32, m[(29 << 0)])
                buffer_write(b, buffer_f32, m[(30 << 0)])
                buffer_write(b, buffer_f32, m[(31 << 0)])
                buffer_write(b, buffer_f32, m[(32 << 0)])
                buffer_write(b, buffer_f32, m[(33 << 0)])
                buffer_write(b, buffer_u32, m[(34 << 0)])
                buffer_write(b, buffer_f32, m[(35 << 0)])
                buffer_write(b, buffer_f32, m[(36 << 0)])
                buffer_write(uvb, buffer_f32, m[(35 << 0)])
                buffer_write(uvb, buffer_f32, m[(36 << 0)])
                c++
                if globalcol
                {
                    colarray[m[colnum]] = (buffer_tell(b) - 48)
                    array_set_post(m, colnum, (array_get(m, colnum) + 1))
                    colarray[m[colnum]] = (buffer_tell(b) - 12)
                    array_set_post(m, colnum, (array_get(m, colnum) + 1))
                }
            }
            array_set(m, (19 << 0), m[(28 << 0)])
            array_set(m, (20 << 0), m[(29 << 0)])
            array_set(m, (21 << 0), m[(30 << 0)])
            array_set(m, (22 << 0), m[(31 << 0)])
            array_set(m, (23 << 0), m[(32 << 0)])
            array_set(m, (24 << 0), m[(33 << 0)])
            array_set(m, (25 << 0), m[(34 << 0)])
            array_set(m, (26 << 0), m[(35 << 0)])
            array_set(m, (27 << 0), m[(36 << 0)])
            array_set(m, (28 << 0), argument1)
            array_set(m, (29 << 0), argument2)
            array_set(m, (30 << 0), argument3)
            array_set(m, (31 << 0), argument4)
            array_set(m, (32 << 0), argument5)
            array_set(m, (33 << 0), argument6)
            array_set(m, (34 << 0), argument7)
            array_set(m, (35 << 0), argument8)
            array_set(m, (36 << 0), argument9)
            buffer_write(b, buffer_f32, argument1)
            buffer_write(b, buffer_f32, argument2)
            buffer_write(b, buffer_f32, argument3)
            buffer_write(b, buffer_f32, argument4)
            buffer_write(b, buffer_f32, argument5)
            buffer_write(b, buffer_f32, argument6)
            buffer_write(b, buffer_u32, argument7)
            buffer_write(b, buffer_f32, argument8)
            buffer_write(b, buffer_f32, argument9)
            buffer_write(uvb, buffer_f32, argument8)
            buffer_write(uvb, buffer_f32, argument9)
            if globalcol
            {
                colarray[m[colnum]] = (buffer_tell(b) - 12)
                array_set_post(m, colnum, (array_get(m, colnum) + 1))
            }
            c++
            break
        case 6:
            if (c == 0)
            {
                array_set(m, (19 << 0), argument1)
                array_set(m, (20 << 0), argument2)
                array_set(m, (21 << 0), argument3)
                array_set(m, (22 << 0), argument4)
                array_set(m, (23 << 0), argument5)
                array_set(m, (24 << 0), argument6)
                array_set(m, (25 << 0), argument7)
                array_set(m, (26 << 0), argument8)
                array_set(m, (27 << 0), argument9)
            }
            if (c >= 3)
            {
                buffer_write(b, buffer_f32, m[(19 << 0)])
                buffer_write(b, buffer_f32, m[(20 << 0)])
                buffer_write(b, buffer_f32, m[(21 << 0)])
                buffer_write(b, buffer_f32, m[(22 << 0)])
                buffer_write(b, buffer_f32, m[(23 << 0)])
                buffer_write(b, buffer_f32, m[(24 << 0)])
                buffer_write(b, buffer_u32, m[(25 << 0)])
                buffer_write(b, buffer_f32, m[(26 << 0)])
                buffer_write(b, buffer_f32, m[(27 << 0)])
                buffer_write(uvb, buffer_f32, m[(26 << 0)])
                buffer_write(uvb, buffer_f32, m[(27 << 0)])
                c++
                buffer_write(b, buffer_f32, m[(28 << 0)])
                buffer_write(b, buffer_f32, m[(29 << 0)])
                buffer_write(b, buffer_f32, m[(30 << 0)])
                buffer_write(b, buffer_f32, m[(31 << 0)])
                buffer_write(b, buffer_f32, m[(32 << 0)])
                buffer_write(b, buffer_f32, m[(33 << 0)])
                buffer_write(b, buffer_u32, m[(34 << 0)])
                buffer_write(b, buffer_f32, m[(35 << 0)])
                buffer_write(b, buffer_f32, m[(36 << 0)])
                buffer_write(uvb, buffer_f32, m[(35 << 0)])
                buffer_write(uvb, buffer_f32, m[(36 << 0)])
                c++
                if globalcol
                {
                    colarray[m[colnum]] = (buffer_tell(b) - 48)
                    array_set_post(m, colnum, (array_get(m, colnum) + 1))
                    colarray[m[colnum]] = (buffer_tell(b) - 12)
                    array_set_post(m, colnum, (array_get(m, colnum) + 1))
                }
            }
            array_set(m, (28 << 0), argument1)
            array_set(m, (29 << 0), argument2)
            array_set(m, (30 << 0), argument3)
            array_set(m, (31 << 0), argument4)
            array_set(m, (32 << 0), argument5)
            array_set(m, (33 << 0), argument6)
            array_set(m, (34 << 0), argument7)
            array_set(m, (35 << 0), argument8)
            array_set(m, (36 << 0), argument9)
            buffer_write(b, buffer_f32, argument1)
            buffer_write(b, buffer_f32, argument2)
            buffer_write(b, buffer_f32, argument3)
            buffer_write(b, buffer_f32, argument4)
            buffer_write(b, buffer_f32, argument5)
            buffer_write(b, buffer_f32, argument6)
            buffer_write(b, buffer_u32, argument7)
            buffer_write(b, buffer_f32, argument8)
            buffer_write(b, buffer_f32, argument9)
            buffer_write(uvb, buffer_f32, argument8)
            buffer_write(uvb, buffer_f32, argument9)
            c++
            if globalcol
            {
                colarray[m[colnum]] = (buffer_tell(b) - 12)
                array_set_post(m, colnum, (array_get(m, colnum) + 1))
            }
            break
    }

    array_set(m, (11 << 0), c)
    array_set(m, colarrayi, colarray)
}

