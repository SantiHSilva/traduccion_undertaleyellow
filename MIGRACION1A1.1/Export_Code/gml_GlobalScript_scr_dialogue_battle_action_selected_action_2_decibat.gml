function scr_dialogue_battle_action_selected_action_2_decibat() //gml_Script_scr_dialogue_battle_action_selected_action_2_decibat
{
    var action_2_selected_count = global.action_2_selected_count
    if (global.enemy_low_hp == 1)
    {
        message[0] = "* Decibat está haciendo demasiado#  ruido para notar tu silencio."
        global.last_action_selected = "Action 2 Low HP"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
    else
    {
        message[0] = "* Miras a Decibat en silencio.#* Parece que lo aprecia."
        global.last_action_selected = "Action 2 Message 0"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
}

