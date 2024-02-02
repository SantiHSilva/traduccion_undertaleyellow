if (obj_dialogue_box_battle.image_alpha > 0)
{
    script_execute(gml_Script_scr_controls_text)
    if (can_check_display_text == 1)
        display_text = script_execute(gml_Script_scr_determine_display_text_battle_boss_genocide)
    if (display_text == 1)
    {
        if key_revert_pressed
        {
            characters = message_length
            message_draw = string_copy(message[message_current], 0, characters)
        }
        if (characters < message_length)
        {
            if (counter == 0)
            {
                script_execute(gml_Script_scr_text_increase)
                script_execute(gml_Script_scr_talking_text)
            }
            else
                can_talk = 0
        }
        else
        {
            can_talk = 0
            if key_select_pressed
            {
                if (message_current < message_end)
                {
                    message_current += 1
                    message_length = string_length(message[message_current])
                    characters = 0
                    message_draw = ""
                }
                else if (moveable == 1)
                {
                    instance_create(0, 0, obj_battle_fade_out_screen)
                    moveable = 0
                }
            }
        }
        script_execute(gml_Script_scr_text_counter)
    }
}
