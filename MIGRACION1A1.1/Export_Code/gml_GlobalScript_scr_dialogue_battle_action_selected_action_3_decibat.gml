function scr_dialogue_battle_action_selected_action_3_decibat() //gml_Script_scr_dialogue_battle_action_selected_action_3_decibat
{
    var action_3_selected_count = global.action_3_selected_count
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
        message[0] = "* Te mueves hacia Decibat#* Se posa alegremente#  en tu hombro."
        global.last_action_selected = "Action 3 Sparing"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
    else
    {
        message[0] = "* Gritas y saltas#  tratando de ahuyentar a Decibat.#* No está contento."
        global.last_action_selected = "Action 3 Message 0"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
}

