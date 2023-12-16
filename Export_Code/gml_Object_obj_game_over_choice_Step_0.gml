if no_loop
{
}
if (image_alpha < 1)
{
    image_alpha += 0.2
    return;
}
var menu_option_number = 1
if retry_enabled
    menu_option_number += 1
if (rhythm_enabled || autofire_enabled)
    menu_option_number += 1
if (global.down_keyp && menu_option_number > 1)
{
    if (menu_option_selected < menu_option_number)
        menu_option_selected += 1
    else
        menu_option_selected = 1
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if (global.up_keyp && menu_option_number > 1)
{
    if (menu_option_selected > 1)
        menu_option_selected -= 1
    else
        menu_option_selected = menu_option_number
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
    else if (menu_option_selected == 3)
    {
        if rhythm_enabled
        {
            if (global.option_autorhythm == 1)
                global.option_autorhythm = 0
            else
                global.option_autorhythm = 1
        }
        if autofire_enabled
        {
            if (global.option_autoshoot == 1)
                global.option_autoshoot = 0
            else
                global.option_autoshoot = 1
        }
        audio_play_sound(snd_confirm, 1, false)
    }
}
