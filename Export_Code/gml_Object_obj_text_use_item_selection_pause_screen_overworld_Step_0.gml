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
        script_execute(gml_Script_scr_talking_normal)
    }
    else
        can_talk = 0
}
else if (characters == message_length)
{
    can_talk = 0
    if (message_current == (con_message_number - 1) && no_loop == 0 && item_category == "consumable")
    {
        alarm[0] = 20
        no_loop = 1
    }
    else if key_select_pressed
    {
        var case_end = 0
        if (message_current < message_end && (!((message_current == (con_message_number - 1) && item_category == "consumable"))))
        {
            message_current += 1
            message_length = string_length(message[message_current])
            characters = 0
            message_draw = ""
        }
        else if (message_current == message_end)
        {
            if (item_category == "consumable")
            {
                for (i = global.item_pause_screen_number; i < 8; i += 1)
                    global.item_slot[i] = global.item_slot[(i + 1)]
                global.item_slot[8] = "Nothing"
            }
            case_end = 1
        }
        if (case_end == 1)
        {
            global.text_box_open = 0
            with (obj_stats_screen_pause_screen_overworld)
                instance_destroy()
            with (obj_main_selection_pause_screen_overworld)
                instance_destroy()
            with (obj_frisk)
                moveable = 1
            instance_destroy()
        }
    }
}
script_execute(gml_Script_scr_text_counter)
