script_execute(gml_Script_scr_controls_text)
if (transforming == 0)
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
            script_execute(gml_Script_scr_talking_martlet)
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
            else if (transform == 1)
            {
                instance_create(obj_martlet_g_body.x, obj_martlet_g_body.y, obj_martlet_g_fight_mode)
                with (obj_quote_bubble_battle)
                    instance_destroy()
                transforming = 1
            }
            else
            {
                if (attack == 1)
                {
                    with (obj_heart_battle_fighting_parent)
                        moveable = 1
                }
                else
                    script_execute(gml_Script_scr_martlet_genocide_no_attack)
                with (obj_quote_bubble_battle)
                    instance_destroy()
                instance_destroy()
            }
        }
    }
    script_execute(gml_Script_scr_text_counter)
}
if (transforming == 1 && (!instance_exists(obj_martlet_g_fight_mode)))
{
    if (attack == 1)
    {
        with (obj_heart_battle_fighting_parent)
            moveable = 1
    }
    else
        script_execute(gml_Script_scr_martlet_genocide_no_attack)
    instance_destroy()
}
