if no_loop
{
}
if (image_alpha < 1)
{
    image_alpha += 0.2
    return;
}
if ((global.down_keyp || global.up_keyp) && retry_enabled)
{
    if (menu_option_selected == 1)
        menu_option_selected = 2
    else
        menu_option_selected = 1
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if keyboard_multicheck_pressed(0)
{
    if (menu_option_selected == 1)
    {
        instance_create(0, 0, obj_death_screen_fade_out_retry_screen)
        no_loop = 1
        audio_sound_gain(mus_gameover_yellow, 0, 1200)
    }
    else if (menu_option_selected == 2)
    {
        instance_create(0, 0, obj_death_screen_fade_out_screen)
        no_loop = 1
        audio_sound_gain(mus_gameover_yellow, 0, 1200)
    }
}
