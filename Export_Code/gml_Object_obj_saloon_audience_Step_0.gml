if (crowd_animate == 1)
{
    if (image_speed == 0)
    {
        audio_sound_gain(crowd_sound, 1, 250)
        image_speed = 0.2
    }
    if (crowd_animate_interact_noloop == 1 && global.dialogue_open == 0)
    {
        crowd_animate_interact_noloop = 0
        crowd_animate = 0
    }
}
else if (image_speed == 0.2)
{
    audio_sound_gain(crowd_sound, 0, 250)
    image_speed = 0
    image_index = 0
}
else
{
    if (global.route == 1 && global.sworks_flag[0] > 0)
        return;
    if (scr_interact() && keyboard_multicheck_pressed(0) && crowd_animate_interact_noloop == 0)
    {
        scr_text()
        with (msg)
        {
            message[0] = "* (Everyone is wrapped up in#  conversation.)"
            message[1] = "* (Quite the popular spot!)"
        }
        crowd_animate = 1
        crowd_animate_interact_noloop = 1
    }
}
