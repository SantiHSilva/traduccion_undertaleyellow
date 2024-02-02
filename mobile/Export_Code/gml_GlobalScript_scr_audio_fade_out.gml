function scr_audio_fade_out(argument0, argument1) //gml_Script_scr_audio_fade_out
{
    var snd = argument0
    var fade_len = argument1
    if (!audio_is_playing(snd))
        return 0;
    audio_sound_gain(snd, 0, fade_len)
    if instance_exists(obj_audio_fade_helper)
    {
        with (obj_audio_fade_helper)
        {
            if (audio_to_fade == snd)
                return 0;
        }
    }
    with (instance_create(0, 0, obj_audio_fade_helper))
        audio_to_fade = snd
}

