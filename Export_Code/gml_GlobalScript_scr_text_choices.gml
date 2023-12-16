function scr_text_choices() //gml_Script_scr_text_choices
{
    if live_call()
        return global.live_result;
    if variable_instance_exists(id, "ch_delay")
    {
        if (ch_delay > 0)
        {
            ch_delay--
            return;
        }
        else
            ch_delay = -1
    }
    if (variable_instance_exists(id, "ch_alpha") && variable_instance_exists(id, "alpha_fade"))
    {
        if (variable_instance_exists(id, "alpha_fade_out") && alpha_fade_out == 1)
        {
            if (ch_alpha > 0.01)
            {
                ch_alpha = lerp(ch_alpha, 0, 0.2)
                return;
            }
            else
            {
                ch_alpha = 0
                outcome = p
                choice = 0
                alpha_fade_out = 0
                alpha_fade = 0
            }
        }
        else if (alpha_fade == 1)
        {
            if (ch_alpha < 0.99)
                ch_alpha = lerp(ch_alpha, 1, 0.15)
            else
                ch_alpha = 1
            if (ch_alpha < 0.75)
            {
            }
        }
    }
    if (outcome == p && choice == 0)
    {
        if ((message_current + 1) < array_length_1d(message))
        {
            message_current += 1
            cutoff = 0
        }
        else
            global.dialogue_open = 0
        outcome = 0
    }
    if (message_current == ch_msg)
        choice = 1
    if (choice == 1 && cutoff >= string_length(message[message_current]))
    {
        switch p
        {
            case 1:
                if (global.right_keyp && ch[2] != "")
                    p = 2
                if (global.down_keyp && ch[3] != "")
                    p = 3
                break
            case 2:
                if global.left_keyp
                    p = 1
                if global.down_keyp
                {
                    if (ch[4] != "")
                        p = 4
                    else if (ch[3] != "")
                        p = 3
                }
                break
            case 3:
                if (global.right_keyp && ch[4] != "")
                    p = 4
                if global.up_keyp
                    p = 1
                break
            case 4:
                if global.up_keyp
                    p = 2
                if global.left_keyp
                    p = 3
                break
        }

        if (ch[2] != "" && (global.right_keyp || global.down_keyp || global.up_keyp || global.left_keyp))
            audio_play_sound(snd_mainmenu_select, 1, false)
        if keyboard_multicheck_pressed(0)
        {
            if (variable_instance_exists(id, "alpha_fade") && alpha_fade == 1)
                alpha_fade_out = 1
            else
            {
                outcome = p
                choice = 0
            }
            audio_play_sound(snd_confirm, 1, false)
        }
    }
}

