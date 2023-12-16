if live_call()
    return global.live_result;
if (global.dialogue_open == 0)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.03
    else
        instance_destroy()
    return;
}
var MSG_ADVANCE = 0
var message_length = string_length(message[message_current])
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
        cutoff += 0.5
        script_execute(gml_Script_scr_text_talk)
    }
}
else if (keyboard_multicheck_pressed(0) && skippable == 1)
{
    if (choice == 0)
        MSG_ADVANCE = 1
}
if (message_timer > -1 && cutoff == message_length)
{
    if (mT == -1)
        mT = message_timer
    if (mT > 0)
        mT -= 1
    else if (mT == 0)
    {
        mT = -1
        fade_out = 1
    }
}
script_execute(gml_Script_scr_text_counter_overworld)
script_execute(gml_Script_scr_text_choices)
if (fade_out == 1)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.03
    else
    {
        fade_out = 0
        MSG_ADVANCE = 1
    }
}
if (MSG_ADVANCE || force_skip)
{
    if ((message_current + 1) < array_length_1d(message))
    {
        message_current += 1
        cutoff = 0
        draw_alpha = 1
    }
    else
        global.dialogue_open = 0
    force_skip = 0
}