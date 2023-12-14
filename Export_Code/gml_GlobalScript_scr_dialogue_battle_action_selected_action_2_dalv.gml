function scr_dialogue_battle_action_selected_action_2_dalv() //gml_Script_scr_dialogue_battle_action_selected_action_2_dalv
{
    var enemy_sparing = global.enemy_sparing
    var action_2_important = global.action_2_important
    var enemy_mode = global.enemy_mode
    switch enemy_mode
    {
        case 0:
            if (enemy_sparing == 1 || action_2_important == 1)
            {
                message[0] = "* Dalv acepta tu oferta de#  buena voluntad."
                global.last_action_selected = "Action 2 Message 0"
                global.last_action_selected_2 = "Nothing"
                global.last_action_selected_3 = "Nothing"
            }
            else
            {
                message[0] = "* Dalv acepta tu oferta de#  buena voluntad."
                global.last_action_selected = "Action 2 Message 0"
                global.last_action_selected_2 = "Nothing"
                global.last_action_selected_3 = "Nothing"
            }
            break
        case 1:
            if (enemy_sparing == 1 || action_2_important == 1)
            {
                message[0] = "*Dalv no quiere hacerlo."
                global.last_action_selected = "Action 2 Message 0"
                global.last_action_selected_2 = "Nothing"
                global.last_action_selected_3 = "Nothing"
            }
            else
            {
                message[0] = "* Dalv acepta tu oferta de#  buena voluntad."
                global.last_action_selected = "Action 2 Message 0"
                global.last_action_selected_2 = "Nothing"
                global.last_action_selected_3 = "Nothing"
            }
            break
        case 2:
            message[0] = "* Dalv acepta tu oferta de#  buena voluntad."
            global.last_action_selected = "Action 2 Message 0"
            global.last_action_selected_2 = "Nothing"
            global.last_action_selected_3 = "Nothing"
            break
    }

}

