function scr_dialogue_battle_action_selected_action_3_goosic_b() //gml_Script_scr_dialogue_battle_action_selected_action_3_goosic_b
{
    var action_3_selected_count = global.action_3_selected_count_2
    if (global.enemy_low_hp == 1)
    {
        message[0] = "* You try to move Goosic's needle#  but it shocks you."
        global.last_action_selected_2 = "Action 3 Low HP"
        global.last_action_selected = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
    else if (global.action_3_selected_count >= 1)
    {
        message[0] = "* Goosic seems to be calming#  down. Shouldn't change the song#  now."
        global.last_action_selected_2 = "Action 3 Message 1"
        global.last_action_selected = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
    else
    {
        message[0] = "* You move Goosic's needle to a#  new, calmer record."
        global.last_action_selected_2 = "Action 3 Message 0"
        global.last_action_selected = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
}

