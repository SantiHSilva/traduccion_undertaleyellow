function cutscene_sfx_play_at_frame() //gml_Script_cutscene_sfx_play_at_frame
{
    with (argument[0])
    {
        if (argument[1] >= (image_index - image_speed) && argument[1] <= (image_index + image_speed))
        {
            if (!audio_is_playing(argument[2]))
                audio_play_sound(argument[2], 1, false)
            return 1;
        }
    }
    return 0;
}

