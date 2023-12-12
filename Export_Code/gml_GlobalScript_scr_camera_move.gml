function scr_camera_move(argument0, argument1, argument2) //gml_Script_scr_camera_move
{
    if (!instance_exists(obj_camera))
    {
        instance_create(__view_get((9 << 0), 0).x, __view_get((9 << 0), 0).y, obj_camera)
        __view_set((9 << 0), 0, 1119)
    }
    else
    {
        obj_camera.x = __view_get((9 << 0), 0).x
        obj_camera.y = __view_get((9 << 0), 0).y
        __view_set((9 << 0), 0, 1119)
    }
    obj_camera.move = 1
    obj_camera.xx = argument0
    obj_camera.yy = argument1
    obj_camera.spd = argument2
    if (abs((argument0 - obj_camera.x)) <= argument2 && abs((argument1 - obj_camera.y)) <= argument2)
        return 1;
    else
        return 0;
}

