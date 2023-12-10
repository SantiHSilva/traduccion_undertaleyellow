function scr_enemy_attack_decibat_wave_orange() //gml_Script_scr_enemy_attack_decibat_wave_orange
{
    if (global.attack_counter == 0)
        global.timer_attacks_switch = 0
    if (global.timer_attacks_switch == 0)
        global.attack_counter_max = 3
    if (global.attack_counter == 0 && global.timer_attacks_counter < 3)
    {
        if (global.timer_attacks_counter_2 == 0)
            instance_create((obj_dialogue_box_battle_transformation_any.bbox_left - 40), obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_decibat_wave_orange)
        else
            instance_create((obj_dialogue_box_battle_transformation_any.bbox_right + 40), obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_decibat_wave_orange)
        global.timer_attacks_counter += 1
        if (global.timer_attacks_counter == 3)
        {
            global.timer_attacks_switch = 1
            global.attack_counter_max = 30
            global.timer_attacks_counter = 0
            if (global.timer_attacks_counter_2 >= 1)
                global.timer_attacks_counter_2 = 0
            else
                global.timer_attacks_counter_2 += 1
        }
    }
}

