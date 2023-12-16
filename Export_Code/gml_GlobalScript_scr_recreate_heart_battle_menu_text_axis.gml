function scr_recreate_heart_battle_menu_text_axis() //gml_Script_scr_recreate_heart_battle_menu_text_axis
{
    var last_text_move_select = global.last_text_move_select
    if (text_deadlock_1 == 1)
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), text_deadlock_contents_1)
    else if (last_text_move_select == 0)
    {
        instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_intro)
        text_deadlock_contents_1 = 3004
        text_deadlock_1 = 1
    }
    else if (global.special_action_count >= 8)
    {
        if global.enemy_sparing
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_sparing)
            text_deadlock_contents_1 = 3030
            text_deadlock_1 = 1
        }
        else if (global.route == 2 || (global.route == 1 && global.action_1_selected_count == 0))
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_special)
            text_deadlock_contents_1 = 3009
            text_deadlock_1 = 1
        }
        else if (global.action_1_selected_count == 1)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_special_v2)
            text_deadlock_contents_1 = 3010
            text_deadlock_1 = 1
        }
        else if (global.action_1_selected_count == 2)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_special_v3)
            text_deadlock_contents_1 = 3011
            text_deadlock_1 = 1
        }
    }
    else
    {
        var random_text_move_select = irandom_range(1, 9)
        if (random_text_move_select == 1)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_1)
            text_deadlock_contents_1 = 3020
            text_deadlock_1 = 1
        }
        else if (random_text_move_select == 2)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_2)
            text_deadlock_contents_1 = 3021
            text_deadlock_1 = 1
        }
        else if (random_text_move_select == 3)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_3)
            text_deadlock_contents_1 = 3022
            text_deadlock_1 = 1
        }
        else if (random_text_move_select == 4)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_4)
            text_deadlock_contents_1 = 3023
            text_deadlock_1 = 1
        }
        else if (random_text_move_select == 5)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_5)
            text_deadlock_contents_1 = 3024
            text_deadlock_1 = 1
        }
        else if (random_text_move_select == 6)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_6)
            text_deadlock_contents_1 = 3025
            text_deadlock_1 = 1
        }
        else if (random_text_move_select == 7)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_7)
            text_deadlock_contents_1 = 3026
            text_deadlock_1 = 1
        }
        else if (random_text_move_select == 8)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_8)
            text_deadlock_contents_1 = 3028
            text_deadlock_1 = 1
        }
        else if (random_text_move_select == 9)
        {
            instance_create((obj_dialogue_box_battle.x + 20), (obj_dialogue_box_battle.x + 20), obj_dialogue_battle_move_select_9)
            text_deadlock_contents_1 = 3029
            text_deadlock_1 = 1
        }
    }
}

