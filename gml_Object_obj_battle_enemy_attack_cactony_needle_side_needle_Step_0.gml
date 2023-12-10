if (fade == 0 && image_alpha < 1)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.1
        if (image_alpha >= 1)
        {
            image_alpha = 1
            move = 1
            audio_play_sound(snd_undyne_spear_fly, 20, false)
        }
    }
}
if (move == 1)
{
    i = 0
    while (i < attack_mult)
    {
        if (bd_dist_passed == 1)
            image_angle -= (attack_direction * angle_increase)
        x += lengthdir_x(attack_speed, image_angle)
        y += lengthdir_y(attack_speed, image_angle)
        if (abs((x - default_x)) >= bd_dist_min)
            bd_dist_passed = 1
        if (bd_dist_passed == 1 && place_meeting(x, y, obj_attack_boundary_box))
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
