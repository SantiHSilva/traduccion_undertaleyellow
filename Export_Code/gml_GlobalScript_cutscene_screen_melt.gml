function cutscene_screen_melt() //gml_Script_cutscene_screen_melt
{
    if (!instance_exists(obj_screen_melt_effect))
        instance_create_depth(0, 0, -1000, obj_screen_melt_effect)
    return 0;
}

