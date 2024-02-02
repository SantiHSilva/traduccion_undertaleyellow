if (!instance_exists(obj_pl))
    return;
if (global.flag[12] == 1)
    swit = 1
if keyboard_multicheck_pressed(0)
{
    if (scr_interact() == 1)
    {
        if (swit == 0)
        {
            swit = 1
            audio_play_sound(snd_switch, 1, false)
            global.flag[12] = 1
        }
    }
}
if (swit == 1)
    image_index = 1
if (swit == 0)
    image_index = 0
if (image_index == 1)
{
    with (obj_spikes)
        image_index = 1
}
else if (image_index == 0)
{
    with (obj_spikes)
        image_index = 0
}
