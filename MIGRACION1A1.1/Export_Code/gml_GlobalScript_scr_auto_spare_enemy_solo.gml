function scr_auto_spare_enemy_solo(argument0) //gml_Script_scr_auto_spare_enemy_solo
{
    enemy_a_dead = 0
    enemy_a_spared = 0
    enemy_b_dead = 0
    enemy_b_spared = 0
    if (argument0 == 1)
    {
        global.enemy_sparing = 1
        global.enemy_spared = 1
        if (global.enemy_count >= 2)
        {
            enemy_a_dead = global.enemy_dead_2
            enemy_a_spared = global.enemy_spared_2
        }
        if (global.enemy_count >= 3)
        {
            enemy_b_dead = global.enemy_dead_3
            enemy_b_spared = global.enemy_spared_3
        }
    }
    else if (argument0 == 2)
    {
        global.enemy_sparing_2 = 1
        global.enemy_spared_2 = 1
        enemy_a_dead = global.enemy_dead
        enemy_a_spared = global.enemy_spared
        if (global.enemy_count >= 3)
        {
            enemy_b_dead = global.enemy_dead_3
            enemy_b_spared = global.enemy_spared_3
        }
    }
    else if (argument0 == 3)
    {
        global.enemy_sparing_3 = 1
        global.enemy_spared_3 = 1
        enemy_a_dead = global.enemy_dead
        enemy_a_spared = global.enemy_spared
        enemy_b_dead = global.enemy_dead_2
        enemy_b_spared = global.enemy_spared_2
    }
    if (global.enemy_count == 1)
    {
        with (obj_battle_generator)
            audio_extend = 0
        audio_stop_all()
        instance_create(0, 0, obj_dialogue_battle_win_enemy)
    }
    else if (global.enemy_count == 2 && (enemy_a_dead + enemy_a_spared) >= 1)
    {
        with (obj_battle_generator)
            audio_extend = 0
        audio_stop_all()
        instance_create(0, 0, obj_dialogue_battle_win_enemy)
    }
    else if (global.enemy_count == 3 && (((enemy_a_dead + enemy_a_spared) + enemy_b_dead) + enemy_b_spared) >= 2)
    {
        with (obj_battle_generator)
            audio_extend = 0
        audio_stop_all()
        instance_create(0, 0, obj_dialogue_battle_win_enemy)
    }
    else
    {
        global.important_cutscene = script_execute(gml_Script_scr_determine_important_cutscene_attacking)
        global.can_attack = script_execute(gml_Script_scr_determine_can_attack_attacking)
        if (global.important_cutscene == 0 && global.can_attack == 1)
            global.enemy_attacking = 1
        if (global.can_attack == 0)
        {
            with (obj_dialogue_box_battle)
                no_loop_can_attack = 0
        }
    }
}

