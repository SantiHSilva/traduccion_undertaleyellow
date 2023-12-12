function cutscene_audio_fade() //gml_Script_cutscene_audio_fade
{
    audio_sound_gain(argument[0], argument[1], argument[2])
    if (argument[4] == 0)
    {
        if (audio_sound_get_gain(argument[0]) <= argument[3])
        {
            cutscene_advance()
            if (argument_count > 5 && argument[5] == 1)
                audio_stop_sound(argument[0])
            return 1;
        }
    }
    else if (audio_sound_get_gain(argument[0]) >= argument[3])
    {
        cutscene_advance()
        if (argument_count > 5 && argument[5] == 1)
            audio_stop_sound(argument[0])
        return 1;
    }
    return 0;
}

