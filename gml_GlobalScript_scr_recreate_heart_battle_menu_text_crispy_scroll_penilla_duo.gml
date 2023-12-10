function scr_recreate_heart_battle_menu_text_crispy_scroll_penilla_duo() //gml_Script_scr_recreate_heart_battle_menu_text_crispy_scroll_penilla_duo
{
    var last_text_move_select = global.last_text_move_select
    var action_1_selected_count = global.action_1_selected_count
    var action_2_selected_count = global.action_2_selected_count
    if (text_deadlock_1 == 1)
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), text_deadlock_contents_1)
    else if (last_text_move_select == 0)
    {
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_intro)
        text_deadlock_contents_1 = 3003
        text_deadlock_1 = 1
    }
    else if (global.battle_menu_number == 1 && global.enemy_dead == 1 && global.fight_number == 1)
    {
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_dead_2)
        text_deadlock_contents_1 = 3051
        text_deadlock_1 = 1
    }
    else if (global.battle_menu_number == 1 && global.enemy_dead_2 == 1 && global.fight_number == 2)
    {
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_dead)
        text_deadlock_contents_1 = 3032
        text_deadlock_1 = 1
    }
    else if (global.enemy_low_hp == 1 && global.enemy_dead == 0 && global.enemy_spared == 0)
    {
        var random_number = irandom_range(1, 2)
        if (random_number == 1)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_low_hp_1)
            text_deadlock_contents_1 = 3015
        }
        else if (random_number == 2)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_low_hp_1_v2)
            text_deadlock_contents_1 = 3017
        }
        text_deadlock_1 = 1
    }
    else if (global.enemy_low_hp_2 == 1 && global.enemy_dead_2 == 0 && global.enemy_spared_2 == 0)
    {
        random_number = irandom_range(1, 2)
        if (random_number == 1)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_low_hp_2)
            text_deadlock_contents_1 = 3035
        }
        else if (random_number == 2)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_low_hp_2_v2)
            text_deadlock_contents_1 = 3036
        }
        text_deadlock_1 = 1
    }
    else if (action_1_selected_count >= 1 && (global.enemy_dead + global.enemy_spared) < 1)
    {
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_action_1)
        text_deadlock_contents_1 = 3005
        text_deadlock_1 = 1
    }
    else if (action_2_selected_count >= 1 && (global.enemy_dead + global.enemy_spared) < 1)
    {
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_action_2)
        text_deadlock_contents_1 = 3006
        text_deadlock_1 = 1
    }
    else if (global.enemy_sparing_2 == 1 && global.enemy_dead_2 == 0 && global.enemy_spared_2 == 0)
    {
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_sparing_2)
        text_deadlock_contents_1 = 3049
        text_deadlock_1 = 1
    }
    else
    {
        random_number = irandom_range(1, 2)
        if (global.enemy_dead == 1 || global.enemy_spared == 1)
            random_number = 2
        else if (global.enemy_dead_2 == 1 || global.enemy_spared_2 == 1)
            random_number = 1
        if (random_number == 1)
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
                var random_text_move_select = irandom_range(1, 7)
            else
                random_text_move_select = irandom_range(1, 5)
        }
        else if (random_number == 2)
        {
            if ((global.enemy_dead + global.enemy_spared) < 1)
                random_text_move_select = irandom_range(1, 6)
            else
                random_text_move_select = irandom_range(1, 5)
        }
        if (random_number == 1)
        {
            if (random_text_move_select == 1)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_1)
                text_deadlock_contents_1 = 3019
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 2)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_2)
                text_deadlock_contents_1 = 3020
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 3)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_3)
                text_deadlock_contents_1 = 3021
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 4)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_4)
                text_deadlock_contents_1 = 3022
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 5)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_5)
                text_deadlock_contents_1 = 3023
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 6)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_6)
                text_deadlock_contents_1 = 3024
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 7)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_7)
                text_deadlock_contents_1 = 3025
                text_deadlock_1 = 1
            }
        }
        else if (random_number == 2)
        {
            if (random_text_move_select == 1)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_1_v2)
                text_deadlock_contents_1 = 3038
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 2)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_2_v2)
                text_deadlock_contents_1 = 3039
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 3)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_3_v2)
                text_deadlock_contents_1 = 3040
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 4)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_4_v2)
                text_deadlock_contents_1 = 3045
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 5)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_5_v2)
                text_deadlock_contents_1 = 3046
                text_deadlock_1 = 1
            }
            else if (random_text_move_select == 6)
            {
                instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_6_v2)
                text_deadlock_contents_1 = 3047
                text_deadlock_1 = 1
            }
        }
    }
}

