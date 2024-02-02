execute_normal = 0
execute_random = 0
execute_normal = 1
if (execute_normal == 1)
{
    if (global.enemy_low_hp == 1)
    {
        if (obj_quote_bubble_battle.position == 0)
        {
            random_number = irandom_range(0, 0)
            if (random_number == 0)
            {
                message[0] = "I won't let us#fall."
                message_end = 0
            }
        }
        else if (obj_quote_bubble_battle.position == 1)
        {
            random_number = irandom_range(0, 0)
            if (random_number == 0)
            {
                message[0] = "As if this day#couldn't get#worse."
                message_end = 0
            }
        }
        else if (obj_quote_bubble_battle.position == 2)
        {
            random_number = irandom_range(0, 0)
            if (random_number == 0)
            {
                message[0] = "P-please let me#down now."
                message_end = 0
            }
        }
    }
    else
    {
        execute_random = 1
        if (execute_random == 1)
        {
            if (obj_quote_bubble_battle.position == 0)
            {
                random_number = irandom_range(0, 2)
                if (random_number == 0)
                {
                    message[0] = "Dontfalldont-#falldontfall!"
                    message_end = 0
                }
                else if (random_number == 1)
                {
                    message[0] = "Be careful up#there, okay?"
                    message_end = 0
                }
                else if (random_number == 2)
                {
                    message[0] = "You guys are#clinging on#tight, right?"
                    message_end = 0
                }
            }
            if (obj_quote_bubble_battle.position == 1)
            {
                random_number = irandom_range(0, 2)
                if (random_number == 0)
                {
                    message[0] = "I'm tired of#being overlooked."
                    message_end = 0
                }
                else if (random_number == 1)
                {
                    message[0] = "These two clowns#get all the#attention."
                    message_end = 0
                }
                else if (random_number == 2)
                {
                    message[0] = "Does anyone hear#me? It's like#I'm not even#talking."
                    message_end = 0
                }
            }
            if (obj_quote_bubble_battle.position == 2)
            {
                random_number = irandom_range(0, 2)
                if (random_number == 0)
                {
                    message[0] = "I'm on top of#the WORLD!!!"
                    message_end = 0
                }
                else if (random_number == 1)
                {
                    message[0] = "Look ma! No#hands!"
                    message_end = 0
                }
                else if (random_number == 2)
                {
                    message[0] = "I'm the king of#the castle! WOOT!"
                    message_end = 0
                }
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
