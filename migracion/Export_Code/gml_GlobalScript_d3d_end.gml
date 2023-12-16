function d3d_end() //gml_Script_d3d_end
{
    var ret = global.__d3d
    global.__d3d = 0
    gpu_set_ztestenable(0)
    gpu_set_zwriteenable(0)
    return ret;
}

