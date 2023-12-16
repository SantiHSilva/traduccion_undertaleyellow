event_inherited()
if (hp_self <= 0)
{
    if (jump_noloop == 0)
    {
        jump_noloop = 1
        vspeed = -12
        gravity = 0.5
        image_speed = 0
    }
    image_alpha -= 0.1
    if (image_alpha <= 0)
        image_alpha = 0
}
