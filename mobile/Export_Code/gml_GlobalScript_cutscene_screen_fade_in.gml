function cutscene_screen_fade_in() //gml_Script_cutscene_screen_fade_in
{
    if (!instance_exists(obj_screen_fade_effect))
    {
        cutscene_advance()
        return 1;
    }
    else
    {
        obj_screen_fade_effect.fade_speed = argument[0]
        if (obj_screen_fade_effect.fade_stage < 2)
            obj_screen_fade_effect.fade_stage = 2
    }
    return 0;
}

