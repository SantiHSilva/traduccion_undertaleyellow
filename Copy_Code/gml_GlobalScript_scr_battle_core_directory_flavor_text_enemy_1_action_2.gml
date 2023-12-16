function scr_battle_core_directory_flavor_text_enemy_1_action_2() //gml_Script_scr_battle_core_directory_flavor_text_enemy_1_action_2
{
    var action_2_selected_count = global.action_2_selected_count
    var battle_enemy_name = global.battle_enemy_name
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* A Craniex no le hace#  gracia tus insultos."
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "crispy scroll solo")
        {
            if (action_2_selected_count >= 3)
                message[0] = "* ¡El poder de Crispy Scroll#  es sorprendente!"
            else if (action_2_selected_count == 2)
                message[0] = "* ¡Crispy Scroll llegó al 100%! ¡¡Ha#  alcanzado Modo Super Crispy 2K!!"
            else if (action_2_selected_count == 1)
                message[0] = "* Crispy Scroll está mejorado al 50%."
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            if (action_2_selected_count >= 3)
                message[0] = "* ¡El poder de Crispy Scroll#  es sorprendente!"
            else if (action_2_selected_count == 2)
                message[0] = "* ¡Crispy Scroll llegó al 100%! ¡¡Ha#  alcanzado Modo Super Crispy 2K!!"
            else if (action_2_selected_count == 1)
                message[0] = "* Crispy Scroll está mejorado al 50%."
        }
        else if (battle_enemy_name == "micro froggit")
        {
            if (action_2_selected_count >= 1)
                message[0] = "* Micro Froggit está intentando#  irse saltando."
        }
        else if (battle_enemy_name == "trihecta together")
        {
            if (action_2_selected_count >= 1)
                message[0] = "* Trihecta comienza a menearse#  hacia atrás y delante."
            else
                message[0] = "* Trihecta se balancea."
        }
    }
}

