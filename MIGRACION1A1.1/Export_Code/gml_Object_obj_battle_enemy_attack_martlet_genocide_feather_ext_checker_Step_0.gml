if (can_move == 1)
{
    if (can_fade_out == 1)
    {
        if (feather_alpha > 0)
        {
            feather_alpha -= 0.1
            if (feather_alpha < 0)
                feather_alpha = 0
            if (feather_alpha == 0)
            {
                instance_destroy()
                return;
            }
        }
    }
    for (i = 0; i < fcreate_count; i += 1)
    {
        if instance_exists(id_feather[i])
        {
            with (id_feather[i])
                event_user(0)
        }
    }
    feather_radius += feather_speed
    if (can_fade_out == 0)
    {
        var fade_out_result = 1
        i = 0
        while (i < fcreate_count)
        {
            if (id_feather[i].x <= obj_dialogue_box_battle_transformation_any.bbox_right && id_feather[i].x >= obj_dialogue_box_battle_transformation_any.bbox_left && id_feather[i].y <= obj_dialogue_box_battle_transformation_any.bbox_bottom && id_feather[i].y >= obj_dialogue_box_battle_transformation_any.bbox_top)
            {
                fade_out_result = 0
                break
            }
            else
            {
                i += 1
                continue
            }
        }
        can_fade_out = fade_out_result
    }
}
