execute_normal = 0
execute_random = 0
if (global.battle_enemy_name == "trihecta separated")
{
    if (((global.enemy_dead == 1 && global.fight_number == 1) || (global.enemy_dead_3 == 1 && global.fight_number == 3)) && global.battle_menu_number == 1)
    {
        random_number = irandom_range(0, 2)
        if (random_number == 0)
        {
            message[0] = "NO!!"
            message_end = 0
        }
        else if (random_number == 1)
        {
            message[0] = "Please, no!"
            message_end = 0
        }
        else if (random_number == 2)
        {
            message[0] = "That was my#sibling!"
            message_end = 0
        }
    }
    else
        execute_normal = 1
}
else
    execute_normal = 1
if (execute_normal == 1)
{
    if (global.last_action_selected_2 == "Action 1 Message 0")
    {
        message[0] = "Cut it out, will#ya?"
        message_end = 0
    }
    else if (global.last_action_selected_2 == "Action 3 Message 0")
    {
        message[0] = "You both are#cool, I guess."
        message_end = 0
    }
    else if (global.enemy_low_hp_2 == 1)
    {
        random_number = irandom_range(0, 4)
        if (random_number == 0)
        {
            message[0] = "I need to run#away."
            message_end = 0
        }
        else if (random_number == 1)
        {
            message[0] = "Why..."
            message_end = 0
        }
        else if (random_number == 2)
        {
            message[0] = "This wasn't#supposed to#happen..."
            message_end = 0
        }
        else if (random_number == 3)
        {
            message[0] = "Now I know why#we shouldn't#separate..."
            message_end = 0
        }
        else if (random_number == 4)
        {
            message[0] = "Oww..."
            message_end = 0
        }
    }
    else
    {
        execute_random = 1
        if (execute_random == 1)
        {
            random_number = irandom_range(0, 2)
            if (random_number == 0)
            {
                message[0] = "I finally feel#like my own#monster. It's#liberating."
                message_end = 0
            }
            else if (random_number == 1)
            {
                message[0] = "It's nice to not#be stepped on for#once."
                message_end = 0
            }
            else if (random_number == 2)
            {
                message[0] = "I've never felt#so free."
                message_end = 0
            }
        }
    }
}
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
