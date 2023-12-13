execute_normal = 0
execute_random = 0
if (global.battle_enemy_name == "flier trio")
{
    if (((global.enemy_dead == 1 && global.fight_number == 1) || (global.enemy_dead_2 == 1 && global.fight_number == 2)) && global.battle_menu_number == 1)
    {
        message[0] = "¡Ese era mi hermano!"
        message[1] = "¡Tenía metas en#la vida!"
        message_end = 1
    }
    else
        execute_normal = 1
}
else
    execute_normal = 1
if (execute_normal == 1)
{
    if (global.last_action_selected_3 == "Action 1 Low HP")
    {
        message[0] = "¡No te me acerques!"
        message_end = 0
    }
    else if (global.last_action_selected_3 == "Action 1 Message 0")
    {
        random_number = irandom_range(0, 1)
        if (random_number == 0)
        {
            message[0] = "Yo... Este no soy#realmente yo..."
            message_end = 0
        }
        else if (random_number == 1)
        {
            message[0] = "Tienes razón.#Algo tiene#que cambiar."
            message_end = 0
        }
    }
    else if (global.last_action_selected_3 == "Action 2 Low HP")
    {
        message[0] = "No lo acepto."
        message_end = 0
    }
    else if (global.last_action_selected_3 == "Action 2 Message 0")
    {
        random_number = irandom_range(0, 1)
        if (random_number == 0)
        {
            message[0] = "¡Así es!#¡Sabía que te diste cuenta!"
            message_end = 0
        }
        else if (random_number == 1)
        {
            message[0] = "Si, totalmente#de acuerdo."
            message_end = 0
        }
    }
    else if (global.last_action_selected_3 == "Action 3 Low HP")
    {
        message[0] = "Lo mismo#digo."
        message_end = 0
    }
    else if (global.last_action_selected_3 == "Action 3 Message 0")
    {
        random_number = irandom_range(0, 1)
        if (random_number == 0)
        {
            message[0] = "¡No tienes sentido#de las tendencias#de la moda moderna!"
            message_end = 0
        }
        else if (random_number == 1)
        {
            message[0] = "Eso me dolio#en un nivel personal."
            message_end = 0
        }
    }
    else if (global.enemy_low_hp_3 == 1)
    {
        random_number = irandom_range(0, 1)
        if (random_number == 0)
        {
            message[0] = "Solo hay que#mantenerlo... fresco."
            message_end = 0
        }
        else if (random_number == 1)
        {
            message[0] = "¿Así es como#acaba?"
            message_end = 0
        }
    }
    else
    {
        if (global.battle_enemy_name == "flier trio")
        {
            if ((((global.enemy_dead + global.enemy_spared) + global.enemy_dead_2) + global.enemy_spared_2) < 2)
            {
                random_number = irandom_range(0, 2)
                if (random_number == 0)
                {
                    message[0] = "¿Quién quiere hacer#una barbacoa?"
                    message_end = 0
                }
                else if (random_number == 1)
                {
                    message[0] = "Oigan todos, miren#mi nuevo auto#B)"
                    message_end = 0
                }
                else if (random_number == 2)
                {
                    message[0] = "¡Por fin! ¡Monstruos#que me atrapan!"
                    message_end = 0
                }
            }
            else
                execute_random = 1
        }
        else
            execute_random = 1
        if (execute_random == 1)
        {
            random_number = irandom_range(0, 2)
            if (random_number == 0)
            {
                message[0] = "¡Estoy buscando a# alguien que venda un#barco!# ¿Sabes de alguien?"
                message_end = 0
            }
            else if (random_number == 1)
            {
                message[0] = "¡Estuve haciendo#ejercicio! No es gran cosa#; )"
                message_end = 0
            }
            else if (random_number == 2)
            {
                message[0] = "¡El otro día#descubrí un nuevo#grupo genial!"
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
