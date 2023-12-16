function cutscene_npc_action_sprite_reverse() //gml_Script_cutscene_npc_action_sprite_reverse
{
    with (argument[0])
    {
        if (sprite_index != argument[1] || image_speed == 0)
        {
            action_sprite = 1
            sprite_index = argument[1]
            image_speed = (-argument[2])
            image_index = (image_number - 1)
        }
        else
        {
            if ((image_index + image_speed) <= 0)
            {
                if (argument[3] == 0)
                {
                    action_sprite = 0
                    image_speed = 0
                    with (other)
                        cutscene_advance()
                    return 1;
                }
                else
                {
                    if (argument_count > 4)
                        image_speed = argument[4]
                    with (other)
                        cutscene_advance()
                    return 1;
                }
            }
            if (argument_count > 5)
            {
                if (argument[6] >= (image_index + image_speed) && argument[6] <= (image_index - image_speed))
                {
                    if (!audio_is_playing(argument[5]))
                        audio_play_sound(argument[5], 1, false)
                }
            }
        }
    }
    return 0;
}

