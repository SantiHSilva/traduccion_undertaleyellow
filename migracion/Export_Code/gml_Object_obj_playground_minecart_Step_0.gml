if (keyboard_multicheck_pressed(0) && scr_interact() && can_rumble == 0)
{
    alarm[0] = 90
    can_rumble = 1
    image_speed = 0.2
    audio_play_sound(snd_dunes_28_cart, 1, false)
}
if (image_speed > 0 && can_rumble == 0)
{
    if on_animation_end()
    {
        image_speed = 0
        image_index = 0
    }
}
