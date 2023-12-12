execute_normal = 0
execute_random = 0
text_effect = "circle"
text_effect_2 = "circle"
color_count = 0
depth = -1000
if (global.battle_enemy_name == "dunebud duo")
{
    if (global.enemy_dead == 1 && global.fight_number == 2 && global.battle_menu_number == 1)
    {
        message[0] = "?~"
        message_end = 0
    }
    else
        execute_normal = 1
}
else
    execute_normal = 1
if (execute_normal == 1)
{
    if (global.enemy_sparing_2 == 1 && global.enemy_low_hp_2 == 0)
    {
        message[0] = "heHe~"
        message_end = 0
    }
    else if (global.enemy_low_hp_2 == 1)
    {
        random_number = irandom_range(0, 1)
        if (random_number == 0)
        {
            message[0] = "Bwaa~"
            message_end = 0
        }
        else if (random_number == 1)
        {
            message[0] = "Grrr~"
            message_end = 0
        }
    }
    else if (global.last_action_selected_2 == "Action 1 Message 0")
    {
        message[0] = "Oo??"
        message_end = 0
    }
    else if (global.last_action_selected_2 == "Action 2 Message 0")
    {
        message[0] = "Awawa~"
        message_end = 0
    }
    else if (global.last_action_selected_2 == "Action 3 Message 0" || global.last_action_selected_2 == "Action 3 Message 1")
    {
        message[0] = "Uuuu~"
        message_end = 0
    }
    else
    {
        execute_random = 1
        if (execute_random == 1)
        {
            random_number = irandom_range(0, 3)
            if (random_number == 0)
            {
                message[0] = "Swip#Swap~"
                message_end = 0
            }
            else if (random_number == 1)
            {
                message[0] = "Gwob#Gwub~"
                message_end = 0
            }
            else if (random_number == 2)
            {
                message[0] = "Awoooo~"
                message_end = 0
            }
            else if (random_number == 3)
            {
                message[0] = "Wiggle#Woggle~"
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
circle_text_angle = global.circle_text_angle_default
circle_text_angle_direction = 1
