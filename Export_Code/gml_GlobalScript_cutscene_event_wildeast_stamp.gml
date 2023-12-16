function cutscene_event_wildeast_stamp(argument0, argument1, argument2, argument3, argument4) //gml_Script_cutscene_event_wildeast_stamp
{
    if (!instance_exists(obj_wild_east_stamp))
    {
        with (instance_create((__view_get((0 << 0), 0) + (__view_get((2 << 0), 0) / 2)), (__view_get((1 << 0), 0) + (__view_get((3 << 0), 0) / 2)), obj_wild_east_stamp))
        {
            sprite_index = argument0
            event_sound = argument1
            fade_timer = argument2
            shake_intensity = argument3
            animation_delay = argument4
        }
    }
    else if (obj_wild_east_stamp.image_alpha <= 0)
    {
        cutscene_advance()
        instance_destroy(obj_wild_east_stamp)
        return 1;
    }
    return 0;
}

