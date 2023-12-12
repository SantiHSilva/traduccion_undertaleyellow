var MSG_ADVANCE = 0
var message_length = string_length(message[message_current])
if (fade_out == 1)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.1
    else
        instance_destroy()
    return;
}
else if (draw_alpha < 1)
    draw_alpha += 0.1
if (message_reset == 1)
{
    message_reset = 0
    message = 0
    event_perform(ev_create, 0)
    return;
}
if (keyboard_multicheck_pressed(1) && skippable == 1)
    cutoff = message_length
if (cutoff < message_length)
{
    if (counter == 0)
    {
        cutoff += 1
        script_execute(gml_Script_scr_text_talk)
    }
}
else if (keyboard_multicheck_pressed(0) && skippable == 1)
{
    if (choice == 0)
        MSG_ADVANCE = 1
}
script_execute(gml_Script_scr_text_counter_overworld)
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
    if global.down_keyp
    {
        if (p < 5 && ch[(p + 1)] != "")
            p += 1
        else
            p = 1
        audio_play_sound(snd_mainmenu_select, 1, false)
    }
    if global.up_keyp
    {
        if (p > 1 && ch[(p - 1)] != "")
            p -= 1
        else
            p = 5
        audio_play_sound(snd_mainmenu_select, 1, false)
    }
    if keyboard_multicheck_pressed(0)
    {
        outcome = p
        choice = 0
        audio_play_sound(snd_confirm, 1, false)
    }
}
if MSG_ADVANCE
{
    if ((message_current + 1) < array_length_1d(message))
    {
        message_current += 1
        cutoff = 0
    }
    else
        global.dialogue_open = 0
}
