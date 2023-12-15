function scr_audio_fade(argument0, argument1) //gml_Script_scr_audio_fade
{
    var snd = argument0
    var fade_len = argument1
    with (obj_radio)
    {
        audio_other_fade = 1
        audio_to_fade = snd
        audio_fade_length = fade_len
    }
}

