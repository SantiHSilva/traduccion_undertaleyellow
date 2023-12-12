if (fade_out == 1)
{
    if (image_alpha > 1)
        image_alpha -= 0.2
    else
    {
        instance_create(0, 0, obj_game_over_choice)
        instance_destroy()
    }
    return;
}
var battle_enemy_name = global.battle_enemy_name
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
        script_execute(gml_Script_scr_talking_game_over)
    }
    else
        can_talk = 0
}
if (characters == message_length && no_loop == 0)
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
            fade_out = 1
            no_loop = 1
        }
    }
}
script_execute(gml_Script_scr_text_counter)
