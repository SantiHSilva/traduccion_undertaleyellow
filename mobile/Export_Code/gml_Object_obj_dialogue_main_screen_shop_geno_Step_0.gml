if (action[message_current] != "Override")
{
    script_execute(gml_Script_scr_controls_text)
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
            script_execute(talk_script[message_current])
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
        }
    }
    script_execute(gml_Script_scr_text_counter)
}
