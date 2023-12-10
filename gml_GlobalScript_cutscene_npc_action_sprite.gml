function cutscene_npc_action_sprite() //gml_Script_cutscene_npc_action_sprite
{
    with (argument[0])
    {
        if (sprite_index != argument[1] || (image_speed == 0 && image_index < (image_number - 1)))
        {
            action_sprite = 1
            sprite_index = argument[1]
            image_speed = argument[2]
            image_index = 0
            if (argument[3] == 1)
                action_sprite_stop = 1
            else
                action_sprite_stop = 0
        }
        else
        {
            if (image_index >= (image_number - 1))
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
                    image_index = (image_number - 1)
                    with (other)
                        cutscene_advance()
                    return 1;
                }
            }
            if (argument_count > 5)
            {
                if (argument[6] >= (image_index - image_speed) && argument[6] <= (image_index + image_speed))
                {
                    if (!audio_is_playing(argument[5]))
                        audio_play_sound(argument[5], 1, false)
                }
            }
        }
    }
    return 0;
}

