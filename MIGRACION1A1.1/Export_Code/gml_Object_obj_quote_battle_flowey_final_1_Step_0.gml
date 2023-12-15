if (characters < message_length)
{
    if (counter == 0)
    {
        characters += increase
        if (characters > message_length)
            characters = message_length
        message_draw = string_copy(message[message_current], 0, characters)
        current_char = string_char_at(message_draw, characters)
        script_execute(gml_Script_scr_talking_flowey_1)
    }
    else
        can_talk = 0
}
else
{
    if (!alarm[0])
        alarm[0] = 60
    can_talk = 0
    if (advance_message == 1)
    {
        if (message_current < message_end)
        {
            if (message_current == 3)
            {
                while (instance_number(obj_battle_enemy_attack_friendliness_pellets_yellow) < 5)
                    instance_create(obj_flowey_intro_yellow.x, obj_flowey_intro_yellow.y, obj_battle_enemy_attack_friendliness_pellets_yellow)
            }
            message_current += 1
            message_length = string_length(message[message_current])
            characters = 0
            message_draw = ""
        }
        else
        {
            with (obj_battle_enemy_attack_friendliness_pellets_yellow)
            {
                while (distance_counter < distance_counter_max)
                {
                    x += lengthdir_x(move_speed_create, angle)
                    y += lengthdir_y(move_speed_create, angle)
                    distance_counter += 1
                }
                move = 1
            }
            with (obj_quote_bubble_battle)
                instance_destroy()
            instance_destroy()
        }
        advance_message = 0
    }
}
script_execute(gml_Script_scr_text_counter)
