if (can_spiral == 1)
{
    if (can_fade_out == 1)
    {
        if (feather_alpha > 0)
        {
            feather_alpha -= 0.1
            if (feather_alpha < 0)
                feather_alpha = 0
            if (feather_alpha == 0)
                instance_destroy()
        }
    }
    global.id_store = id
    frotate_angle_diff = 0
    for (i = 0; i < fcreate_count; i += 1)
    {
        frotate_angle_use = (frotate_angle_diff + feather_angle_master)
        if (frotate_angle_use < 0)
            frotate_angle_use += 360
        else if (frotate_angle_use >= 360)
            frotate_angle_use -= 360
        frotate_x = (x + (feather_radius * cos(degtorad(frotate_angle_use))))
        frotate_y = (y - (feather_radius * sin(degtorad(frotate_angle_use))))
        if instance_exists(id_feather[i])
        {
            with (id_feather[i])
                event_user(0)
        }
        frotate_angle_diff -= fcreate_decrease
        if (frotate_angle_diff < 0)
            frotate_angle_diff += 360
    }
    feather_angle_master += feather_angle_speed
    if (feather_angle_master >= 360)
        feather_angle_master -= 360
    feather_radius += feather_radius_increase
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
