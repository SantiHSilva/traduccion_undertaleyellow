function scr_battle_core_directory_flavor_text_enemy_1_action_1() //gml_Script_scr_battle_core_directory_flavor_text_enemy_1_action_1
{
    var action_1_selected_count = global.action_1_selected_count
    var battle_enemy_name = global.battle_enemy_name
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* Parece que hablarle a Craniex#  lo hace ser más amigable#  hacia ti."
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "crispy scroll solo")
        {
            if (action_1_selected_count >= 2)
                message[0] = "* Haz mejorado el día #  de Crispy Scroll."
            else if (action_1_selected_count == 1)
                message[0] = "* Crispy Scroll no se cree#  que eso acaba de #  ocurrir."
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            if (action_1_selected_count >= 2)
                message[0] = "* Haz mejorado el día #  de Crispy Scroll."
            else if (action_1_selected_count == 1)
                message[0] = "* Crispy Scroll no se cree#  que eso acaba de #  ocurrir."
        }
        else if (battle_enemy_name == "trihecta together")
        {
            if (action_1_selected_count >= 1)
                message[0] = "* Trihecta comienza a menearse#  hacia adelante y atrás."
            else
                message[0] = "* Trihecta se balancea."
        }
    }
}

