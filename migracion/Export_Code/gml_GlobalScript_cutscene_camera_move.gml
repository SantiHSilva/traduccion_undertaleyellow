function cutscene_camera_move() //gml_Script_cutscene_camera_move
{
    if (!instance_exists(obj_camera))
        instance_create((__view_get((0 << 0), 0) + (__view_get((2 << 0), 0) * 0.5)), (__view_get((1 << 0), 0) + (__view_get((3 << 0), 0) * 0.5)), obj_camera)
    __view_set((9 << 0), 0, 1120)
    obj_camera.move = 1
    obj_camera.xx = argument[0]
    obj_camera.yy = argument[1]
    obj_camera.spd = argument[2]
    if (obj_camera.x == argument[0] && obj_camera.y == argument[1])
    {
        if (argument_count > 3 && argument[3] == 1)
            return 1;
        obj_camera.move = 0
        obj_camera.on_target = 0
        obj_camera.xx = 0
        obj_camera.yy = 0
        cutscene_advance()
        return 1;
    }
    else
        return 0;
}

