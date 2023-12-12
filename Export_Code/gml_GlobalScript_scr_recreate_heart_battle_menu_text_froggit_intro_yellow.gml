function scr_recreate_heart_battle_menu_text_froggit_intro_yellow() //gml_Script_scr_recreate_heart_battle_menu_text_froggit_intro_yellow
{
    if (text_deadlock_1 == 1)
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), text_deadlock_contents_1)
    else
    {
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_intro)
        text_deadlock_contents_1 = obj_dialogue_battle_move_select_intro
        text_deadlock_1 = 1
    }
}

