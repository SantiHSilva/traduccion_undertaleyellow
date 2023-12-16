function d3d_set_projection(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) //gml_Script_d3d_set_projection
{
    var m = matrix_build_lookat(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
    var cam = camera_get_active()
    camera_set_view_mat(cam, m)
    if (!global.__d3d)
    {
        var mproj = matrix_build_projection_ortho(camera_get_view_width(cam), camera_get_view_height(cam), 1, 32000)
        camera_set_proj_mat(cam, mproj)
    }
    camera_apply(cam)
}

