function scr_dialogue_battle_action_selected_action_3_decibat() //gml_Script_scr_dialogue_battle_action_selected_action_3_decibat
{
    var action_3_selected_count = global.action_3_selected_count
    if (global.enemy_low_hp == 1)
    {
        random_number = irandom_range(0, 1)
        if (random_number == 0)
        {
            message[0] = "* Decibat seems to have given up#  hope."
            global.last_action_selected = "Action 1 Low HP"
            global.last_action_selected_2 = "Nothing"
            global.last_action_selected_3 = "Nothing"
        }
        else if (random_number == 1)
        {
            message[0] = "* Decibat is in too much pain to#  care."
            global.last_action_selected = "Action 1 Low HP"
            global.last_action_selected_2 = "Nothing"
            global.last_action_selected_3 = "Nothing"
        }
    }
    else if (global.enemy_sparing == 1)
    {
        message[0] = "* You move towards Decibat#* He lands happily on your#  shoulder."
        global.last_action_selected = "Action 3 Sparing"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
    else
    {
        message[0] = "* You shout and jump around#  trying to scare Decibat away.#* He isn't pleased."
        global.last_action_selected = "Action 3 Message 0"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
}
