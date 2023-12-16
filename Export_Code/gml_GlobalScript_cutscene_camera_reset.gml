function cutscene_camera_reset() //gml_Script_cutscene_camera_reset
{
    if instance_exists(obj_camera)
        instance_destroy(obj_camera)
    camera_set_view_target(view_camera[0], 1031)
    if (argument_count > 0 && argument[0] == 1)
        return 1;
    else
        cutscene_advance()
    return 1;
}

