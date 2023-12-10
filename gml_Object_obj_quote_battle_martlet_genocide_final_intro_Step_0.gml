script_execute(gml_Script_scr_controls_text)
if instance_exists(obj_quote_bubble_battle)
{
    if (draw_enabled == 0)
        obj_quote_bubble_battle.visible = false
    else
        obj_quote_bubble_battle.visible = true
}
script_execute(gml_Script_scr_cutscene_battle_martlet_final_intro)
if (draw_enabled == 0)
{
}
if key_revert_pressed
{
    characters = message_length
    message_draw = string_copy(message[message_current], 0, characters)
}
if (global.enemy_sparing && message_current >= 2)
{
    if (message_current == 2 && (!alarm[0]))
    {
        alarm[0] = 60
        obj_guardener_body.guardener_stop_animating = 1
    }
    voice_pitch = 0.5
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
    if (key_select_pressed && skippable == 1)
    {
        if (message_current < message_end)
            message_adv = 1
        else
        {
            with (obj_heart_battle_fighting_parent)
                moveable = 1
            with (obj_quote_bubble_battle)
                instance_destroy()
            instance_destroy()
        }
    }
}
if (message_adv == 1)
{
    message_current += 1
    message_length = string_length(message[message_current])
    characters = 0
    message_draw = ""
    draw_enabled = 1
    message_adv = 0
}
script_execute(gml_Script_scr_text_counter)
