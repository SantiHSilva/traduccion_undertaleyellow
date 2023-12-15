function scr_enemy_timer_attacks_rorrim_solo() //gml_Script_scr_enemy_timer_attacks_rorrim_solo
{
    var enemy_attack = global.enemy_attack
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Rorrim Mirror" && obj_heart_battle_fighting_parent.moveable == 1)
    {
        script_execute(gml_Script_scr_enemy_attack_rorrim_mirror)
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Rorrim Sparkle" && obj_heart_battle_fighting_parent.moveable == 1)
    {
        script_execute(gml_Script_scr_enemy_attack_rorrim_sparkle)
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max
        }
    }
}

