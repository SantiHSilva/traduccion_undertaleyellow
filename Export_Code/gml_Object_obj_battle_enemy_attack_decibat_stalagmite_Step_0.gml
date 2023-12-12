if instance_exists(obj_heart_battle_fighting_parent)
{
    if (image_alpha < 1 && can_move == 0)
    {
        image_alpha += 0.1
        if (image_alpha > 1)
            image_alpha = 1
        if (image_alpha == 1)
            can_move = 1
    }
    if (can_move == 1)
    {
        x += hsp
        vsp += grav
        if (vsp > terminal_velocity)
            vsp = terminal_velocity
        y += vsp
        if (bbox_top > __view_get((3 << 0), 0))
            instance_destroy()
    }
}
