if selection_confirmed
    instance_destroy()
if (fade_out == 1)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.15
    else
        selection_confirmed = 1
}
if (draw_alpha < 1)
{
    draw_alpha += 0.15
    return;
}
if global.right_keyp
{
    if (selection == 0)
        selection = 1
    else
        selection = 0
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if global.left_keyp
{
    if (selection == 1)
        selection = 0
    else
        selection = 1
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if (keyboard_multicheck_pressed(0) || train_timer == 0)
{
    audio_play_sound(snd_confirm, 1, false)
    fade_out = 1
}
if (train_timer > 0)
    train_timer -= 1
