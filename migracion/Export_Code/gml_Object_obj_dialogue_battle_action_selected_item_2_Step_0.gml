key_select = keyboard_multicheck(0)
key_select_pressed = keyboard_multicheck_pressed(0)
key_revert_pressed = keyboard_multicheck_pressed(1)
if key_revert_pressed
{
    characters = message_length
    message_draw = string_copy(message[message_current], 0, characters)
}
if (characters < message_length && counter == 0)
{
    script_execute(gml_Script_scr_text_increase)
    switch current_char
    {
        case " ":
        case "*":
            can_talk = 0
            break
        default:
            can_talk = 1
            audio_play_sound(snd_footsteps_water_1, 20, false)
    }

}
else
{
    can_talk = 0
    if (message_current == 0 && no_loop == 0 && message_current == message_end)
    {
        alarm[0] = 20
        no_loop = 1
    }
    else if key_select_pressed
    {
        if (message_current < message_end && message_end > 0)
        {
            message_current += 1
            message_length = string_length(message[message_current])
            characters = 0
            message_draw = ""
        }
        else if (message_current >= 1 && message_current == message_end)
        {
            global.item_slot[1] = global.item_slot[2]
            global.item_slot[2] = global.item_slot[3]
            global.item_slot[3] = global.item_slot[4]
            global.item_slot[4] = global.item_slot[5]
            global.item_slot[5] = global.item_slot[6]
            global.item_slot[6] = global.item_slot[7]
            global.item_slot[7] = global.item_slot[8]
            global.item_slot[8] = "Nothing"
            global.enemy_attacking = 1
            instance_destroy()
        }
    }
}
script_execute(gml_Script_scr_text_counter)
