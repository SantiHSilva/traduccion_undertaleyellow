function cutscene_camera_freeze() //gml_Script_cutscene_camera_freeze
{
    if instance_exists(obj_camera)
        instance_destroy(obj_camera)
    var xx = __view_get((9 << 0), 0).x
    var yy = __view_get((9 << 0), 0).y
    if (argument_count > 0)
    {
        xx = argument[0]
        yy = argument[1]
    }
    instance_create(xx, yy, obj_camera)
    __view_set((9 << 0), 0, 1119)
    obj_camera.move = 0
    cutscene_advance()
    return 1;
}

