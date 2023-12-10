if live_call()
    return global.live_result;
if global.down_keyp
{
    if (position < position_max)
        position += 1
    else
        position = 0
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if global.up_keyp
{
    if (position > 0)
        position -= 1
    else
        position = position_max
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if keyboard_multicheck_pressed(0)
{
    audio_play_sound(snd_confirm, 1, false)
    switch position
    {
        case 0:
            if (!file_exists("Save.sav"))
                room_goto(rm_mmfirst)
            else
                room_goto(rm_mainmenu)
            audio_stop_sound(mus_menu_options)
            scr_savecontrols()
            break
        case 1:
            room_goto(rm_joystickconfig)
            break
        case 2:
            if (global.option_screenshake_toggle == 1)
                global.option_screenshake_toggle = 0
            else
                global.option_screenshake_toggle = 1
            break
        case 3:
            if (global.option_retry_toggle == 1)
                global.option_retry_toggle = 0
            else
                global.option_retry_toggle = 1
            break
        case 4:
            if (global.option_autorun == 1)
                global.option_autorun = 0
            else
                global.option_autorun = 1
            break
        case 5:
            if (global.option_autoshoot == 1)
                global.option_autoshoot = 0
            else
                global.option_autoshoot = 1
            break
    }

}
