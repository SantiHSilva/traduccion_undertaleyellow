var _temp_local_var_1;
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
        script_execute(gml_Script_scr_talking_ceroba)
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
        else
        {
            var can_attack = 1
            var _temp_local_var_1 = global.turns_passed
            can_attack = 1
            if (can_attack == 1)
            {
                with (obj_heart_battle_fighting_parent)
                    moveable = 1
            }
            else
            {
                with (obj_dialogue_box_battle_transformation_any)
                    event_user(0)
            }
            with (obj_quote_bubble_battle)
                instance_destroy()
            instance_destroy()
        }
    }
}
script_execute(gml_Script_scr_text_counter)
