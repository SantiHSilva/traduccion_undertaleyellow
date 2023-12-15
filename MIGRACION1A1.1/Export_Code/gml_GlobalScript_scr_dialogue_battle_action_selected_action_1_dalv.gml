function scr_dialogue_battle_action_selected_action_1_dalv() //gml_Script_scr_dialogue_battle_action_selected_action_1_dalv
{
    var enemy_sparing = global.enemy_sparing
    var action_2_important = global.action_2_important
    var enemy_mode = global.enemy_mode
    switch enemy_mode
    {
        case 0:
            if (enemy_sparing == 1 || action_2_important == 1)
            {
                message[0] = "* Parece que Dalv está#  demasiado concentrado para#  oirte."
                global.last_action_selected = "Action 1 Message 0"
                global.last_action_selected_2 = "Nothing"
                global.last_action_selected_3 = "Nothing"
            }
            else
            {
                message[0] = "* Dalv parece no valorar# la comunicación."
                global.last_action_selected = "Action 1 Message 0"
                global.last_action_selected_2 = "Nothing"
                global.last_action_selected_3 = "Nothing"
            }
            break
        case 1:
            if (enemy_sparing == 1 || action_2_important == 1)
            {
                message[0] = "* Parece que Dalv está#  demasiado concentrado para#  oirte."
                global.last_action_selected = "Action 1 Message 0"
                global.last_action_selected_2 = "Nothing"
                global.last_action_selected_3 = "Nothing"
            }
            else
            {
                message[0] = "* Dalv no quiere oírte."
                global.last_action_selected = "Action 1 Message 0"
                global.last_action_selected_2 = "Nothing"
                global.last_action_selected_3 = "Nothing"
            }
            break
        case 2:
            message[0] = "* Dalv no quiere oírte."
            global.last_action_selected = "Action 1 Message 0"
            global.last_action_selected_2 = "Nothing"
            global.last_action_selected_3 = "Nothing"
            break
    }

}

