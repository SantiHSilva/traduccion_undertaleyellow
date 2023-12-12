if (transformed == 1)
{
    if (sprite_index != spr_crispy_scroll_spared)
        sprite_index = spr_crispy_scroll_spared
    x += transformed_speed
    image_angle += transformed_rotation_speed
    if (x <= (0 - (sprite_width / 2)))
    {
        global.enemy_sparing = 1
        if (global.enemy_count == 1)
            instance_create(0, 0, obj_dialogue_battle_win_enemy)
        else if (global.enemy_count == 2 && (global.enemy_dead_2 + global.enemy_spared_2) >= 1)
            instance_create(0, 0, obj_dialogue_battle_win_enemy)
        else if (global.enemy_count == 3 && (((global.enemy_dead_2 + global.enemy_spared_2) + global.enemy_dead_3) + global.enemy_spared_3) >= 2)
            instance_create(0, 0, obj_dialogue_battle_win_enemy)
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
        global.enemy_spared = 1
        instance_destroy()
    }
}
