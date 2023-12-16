function d3d_set_perspective(argument0) //gml_Script_d3d_set_perspective
{
    var __persp = argument0
    if (global.__d3d == 0)
        __persp = 0
    var __mat = camera_get_proj_mat(camera_get_default())
    if __persp
        __mat[11] = 1
    else
        __mat[11] = 0
    camera_set_proj_mat(camera_get_default(), __mat)
    var __numcams = 0
    var __cams = []
    for (var __i = 0; __i < 8; __i++)
    {
        if (view_camera[__i] != -1)
        {
            __cams[(__numcams * 3)] = view_camera[__i]
            __cams[((__numcams * 3) + 1)] = view_camera[__i]
            __cams[((__numcams * 3) + 2)] = view_camera[__i]
            __numcams++
        }
    }
    for (var __currroom = room_first; __currroom != -1; __currroom = room_next(__currroom))
    {
        for (__i = 0; __i < 8; __i++)
        {
            var __cam = room_get_camera(__currroom, __i)
            if (__cam != -1)
            {
                __cams[__numcams] = __cam
                __numcams++
            }
        }
    }
    for (__i = 0; __i < __numcams; __i++)
    {
        __cam = __cams[__i]
        __mat = camera_get_proj_mat(__cam)
        var __ispersp = __mat[11] != 0
        if (__ispersp != __persp)
        {
            if (camera_get_view_width(__cam) > 0)
            {
                var __width = camera_get_view_width(__cam)
                var __height = camera_get_view_height(__cam)
                if __persp
                {
                    var __projmat = matrix_build_projection_perspective(1, (-((__height / __width))), 1, 32000)
                    camera_set_proj_mat(__cam, __projmat)
                }
                else
                {
                    __projmat = matrix_build_projection_ortho(__width, __height, -16000, 16000)
                    camera_set_proj_mat(__cam, __projmat)
                }
            }
        }
    }
}

