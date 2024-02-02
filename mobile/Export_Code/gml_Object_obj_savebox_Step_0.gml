obj_pl.state = gml_Script_scr_frozen_state
if (p1 == 1 && global.right_keyp)
{
    p1 = 0
    p2 = 1
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if (p2 == 1 && global.left_keyp)
{
    p2 = 0
    p1 = 1
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if (keyboard_multicheck_pressed(0) && ready == 1)
{
    if (p1 == 1)
    {
        audio_play_sound(snd_savedgame, 1, false)
        color2 = 65535
        if (global.current_hp_self < global.max_hp_self)
            global.current_hp_self = global.max_hp_self
        global.save_count += 1
        scr_savegame()
        alarm[0] = 1
        p1 = 0
    }
    if (p2 == 1)
    {
        statBox = 1
        audio_play_sound(snd_confirm, 1, false)
    }
    if (color2 == 65535 && done == 1)
    {
        statBox = 1
        audio_play_sound(snd_confirm, 1, false)
    }
}
ready = 1
