function scr_dialogue_battle_action_selected_action_2_jandroid_a() //gml_Script_scr_dialogue_battle_action_selected_action_2_jandroid_a
{
    if (global.enemy_low_hp == 1)
    {
        message[0] = "* Cleaning Jandroid wouldn't#  do any good at this point."
        global.last_action_selected = "Action 2 Low HP"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
    else
    {
        message[0] = "* You offer to give Jandroid#  a scrub. They seem offended."
        global.last_action_selected = "Action 2 Message 0"
        global.last_action_selected_2 = "Nothing"
        global.last_action_selected_3 = "Nothing"
    }
}

