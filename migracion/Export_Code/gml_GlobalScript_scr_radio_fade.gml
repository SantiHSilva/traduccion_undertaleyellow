function scr_radio_fade(argument0, argument1) //gml_Script_scr_radio_fade
{
    var fade_vol = argument0
    var fade_len = argument1
    with (obj_radio)
        audio_sound_gain(current_song, fade_vol, fade_len)
}

