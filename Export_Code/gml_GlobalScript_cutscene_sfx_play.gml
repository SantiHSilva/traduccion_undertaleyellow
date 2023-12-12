function cutscene_sfx_play(argument0, argument1) //gml_Script_cutscene_sfx_play
{
    if (!audio_is_playing(argument0))
    {
        audio_play_sound(argument0, 1, false)
        audio_sound_gain(argument0, argument1, 0)
    }
    cutscene_advance()
    return 1;
}

