function scr_dialogue_battle_action_selected_action_2_flier_a() //gml_Script_scr_dialogue_battle_action_selected_action_2_flier_a
{
    var action_2_selected_count = global.action_2_selected_count
    if (global.enemy_low_hp == 1)
    {
        message[0] = "* You compliment Flier's choice#  of outfits."
        global.last_action_selected = "Action 2 Low HP"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
    else
    {
        random_number = irandom_range(0, 1)
        if (random_number == 0)
        {
            message[0] = "* Le dices a Flier que#  parece orgulloso."
            global.last_action_selected = "Action 2 Message 0"
            global.last_action_selected_2 = "Nothing"
            global.last_action_selected_3 = "Nothing"
        }
        else if (random_number == 1)
        {
            message[0] = "* Le dices a Flier que#  parece orgulloso."
            global.last_action_selected = "Action 2 Message 0"
            global.last_action_selected_2 = "Nothing"
            global.last_action_selected_3 = "Nothing"
        }
    }
}

