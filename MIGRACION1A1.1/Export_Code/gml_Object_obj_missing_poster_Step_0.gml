if live_call()
    return global.live_result;
if (event_fade_in == 1 && draw_alpha < 1)
    draw_alpha += 0.1
else
    event_fade_in = 0
if (event_fade_out == 1)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.1
    else
    {
        event_fade_out = 0
        instance_destroy()
    }
    return;
}
if (keyboard_multicheck_pressed(0) || keyboard_multicheck_pressed(1))
{
    if ((!event_fade_out) && (!event_fade_in))
    {
        audio_play_sound(snd_mainmenu_select, 1, false)
        event_fade_out = 1
    }
}
