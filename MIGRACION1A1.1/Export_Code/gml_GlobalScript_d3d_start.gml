function d3d_start() //gml_Script_d3d_start
{
    var ret = global.__d3d
    global.__d3d = 1
    gpu_set_ztestenable(1)
    gpu_set_zwriteenable(1)
    return ret;
}

