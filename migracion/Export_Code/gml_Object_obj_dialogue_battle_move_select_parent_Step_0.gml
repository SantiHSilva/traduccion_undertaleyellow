if (characters < message_length)
{
    if (counter == 0)
    {
        script_execute(gml_Script_scr_text_increase_auto)
        script_execute(gml_Script_scr_talking_text)
    }
    else
        can_talk = 0
}
else
    can_talk = 0
script_execute(gml_Script_scr_text_counter)
