function scr_dialogue_battle_action_selected_action_1_decibat() //gml_Script_scr_dialogue_battle_action_selected_action_1_decibat
{
    var action_1_selected_count = global.action_1_selected_count
    if (global.enemy_low_hp == 1)
    {
        random_number = irandom_range(0, 1)
        if (random_number == 0)
        {
            message[0] = "* Decibat parece haber perdido#  la esperanza."
            global.last_action_selected = "Action 1 Low HP"
            global.last_action_selected_2 = "Nothing"
            global.last_action_selected_3 = "Nothing"
        }
        else if (random_number == 1)
        {
            message[0] = "* Decibat sufre demasiado#  como para preocuparse."
            global.last_action_selected = "Action 1 Low HP"
            global.last_action_selected_2 = "Nothing"
            global.last_action_selected_3 = "Nothing"
        }
    }
    else if (global.enemy_sparing == 1)
    {
        message[0] = "* Abres la boca para hablar.#* Decibat te tapa la boca."
        global.last_action_selected = "Action 1 Sparing"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
    else
    {
        message[0] = "* Decibat te calla furiosamente."
        global.last_action_selected = "Action 1 Message 0"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
}

