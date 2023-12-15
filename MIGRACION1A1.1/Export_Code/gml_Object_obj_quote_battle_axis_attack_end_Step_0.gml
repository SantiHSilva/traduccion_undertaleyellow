script_execute(gml_Script_scr_controls_text)
var current_turn = global.special_action_count
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
        script_execute(gml_Script_scr_talking_axis)
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
        else if (global.route == 2 && (current_turn == 4 || current_turn == 7 || current_turn == 8))
        {
            if (current_turn == 4)
                instance_create(0, 0, obj_steamworks_35_in_battle_cutscene_1)
            if (current_turn == 7)
                instance_create(0, 0, obj_steamworks_35_in_battle_cutscene_2)
            if (current_turn == 8)
                instance_create(0, 0, obj_steamworks_35_in_battle_cutscene_3)
            with (obj_quote_bubble_battle)
                instance_destroy()
            instance_destroy()
        }
        else
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0)
            with (obj_quote_bubble_battle)
                instance_destroy()
            instance_destroy()
        }
    }
}
if (current_turn == 4 && message_current == 3)
{
    if (!instance_exists(obj_battle_enemy_axis_generator))
    {
        instance_create(-40, obj_axis_body.y, obj_battle_enemy_axis_generator)
        instance_create((room_width + 40), obj_axis_body.y, obj_battle_enemy_axis_generator)
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
