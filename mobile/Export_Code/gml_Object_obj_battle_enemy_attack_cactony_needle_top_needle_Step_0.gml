if (launched == 0)
{
    x += lengthdir_x(prep_speed, image_angle)
    y += lengthdir_y(prep_speed, image_angle)
}
else
{
    if (move == 1)
    {
        i = 0
        while (i < attack_mult)
        {
            x += lengthdir_x(attack_speed, image_angle)
            y += lengthdir_y(attack_speed, image_angle)
            if place_meeting(x, y, obj_attack_boundary_box)
            {
                move = 0
                alarm[0] = fade_alarm
                break
            }
            else
            {
                i++
                continue
            }
        }
    }
    if (fade == 1)
    {
        if (image_alpha > 0)
        {
            image_alpha -= 0.1
            if (image_alpha <= 0)
                instance_destroy()
        }
    }
}
