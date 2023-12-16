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
        if (fade_out_timer > 0)
            fade_out_timer -= 1
        else
            can_fade_out = 1
    }
}
