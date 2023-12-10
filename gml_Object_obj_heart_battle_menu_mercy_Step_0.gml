script_execute(gml_Script_scr_controls_battle_mercy)
if key_select
{
    if (global.mercy_number == 1)
    {
        if (global.enemy_count == 1 && global.enemy_sparing == 1 && global.enemy_dead == 0 && global.enemy_spared == 0)
        {
            with (obj_battle_generator)
                audio_extend = 0
            audio_stop_all()
            if (global.battling_boss == 1)
            {
                instance_create(0, 0, obj_dialogue_battle_win_pacifist)
                instance_create(0, 0, obj_battle_justice_effect)
            }
            else
                instance_create(0, 0, obj_dialogue_battle_win_enemy)
            global.spare_selected_count += 1
            global.last_action_selected = "Spare"
            global.last_action_selected_2 = "Spare"
            global.last_action_selected_3 = "Spare"
            global.enemy_spared = 1
            moveable = 0
            audio_play_sound(snd_monster_damage_death, 20, false)
            with (obj_text_battle_move_selected_mercy_parent)
                instance_destroy()
            instance_destroy()
        }
        else if (global.enemy_count == 2)
        {
            if (global.enemy_sparing == 1 && global.enemy_dead == 0 && global.enemy_spared == 0)
            {
                global.enemy_spared = 1
                audio_play_sound(snd_monster_damage_death, 20, false)
            }
            if (global.enemy_sparing_2 == 1 && global.enemy_dead_2 == 0 && global.enemy_spared_2 == 0)
            {
                global.enemy_spared_2 = 1
                if (!audio_is_playing(snd_monster_damage_death))
                    audio_play_sound(snd_monster_damage_death, 20, false)
            }
            if ((global.enemy_dead == 1 || global.enemy_spared == 1) && (global.enemy_dead_2 == 1 || global.enemy_spared_2 == 1))
            {
                with (obj_battle_generator)
                    audio_extend = 0
                audio_stop_all()
                instance_create(0, 0, obj_dialogue_battle_win_enemy)
                global.spare_selected_count += 1
                global.last_action_selected = "Spare"
                global.last_action_selected_2 = "Spare"
                global.last_action_selected_3 = "Spare"
                moveable = 0
                audio_play_sound(snd_monster_damage_death, 20, false)
                with (obj_text_battle_move_selected_mercy_parent)
                    instance_destroy()
                instance_destroy()
            }
            else
                execute_sparing_false = 1
        }
        else if (global.enemy_count == 3)
        {
            if (global.enemy_sparing == 1 && global.enemy_dead == 0 && global.enemy_spared == 0)
            {
                global.enemy_spared = 1
                audio_play_sound(snd_monster_damage_death, 20, false)
            }
            if (global.enemy_sparing_2 == 1 && global.enemy_dead_2 == 0 && global.enemy_spared_2 == 0)
            {
                global.enemy_spared_2 = 1
                if (!audio_is_playing(snd_monster_damage_death))
                    audio_play_sound(snd_monster_damage_death, 20, false)
            }
            if (global.enemy_sparing_3 == 1 && global.enemy_dead_3 == 0 && global.enemy_spared_3 == 0)
            {
                global.enemy_spared_3 = 1
                if (!audio_is_playing(snd_monster_damage_death))
                    audio_play_sound(snd_monster_damage_death, 20, false)
            }
            if ((global.enemy_dead == 1 || global.enemy_spared == 1) && (global.enemy_dead_2 == 1 || global.enemy_spared_2 == 1) && (global.enemy_dead_3 == 1 || global.enemy_spared_3 == 1))
            {
                with (obj_battle_generator)
                    audio_extend = 0
                audio_stop_all()
                instance_create(0, 0, obj_dialogue_battle_win_enemy)
                global.spare_selected_count += 1
                global.last_action_selected = "Spare"
                global.last_action_selected_2 = "Spare"
                global.last_action_selected_3 = "Spare"
                moveable = 0
                audio_play_sound(snd_monster_damage_death, 20, false)
                with (obj_text_battle_move_selected_mercy_parent)
                    instance_destroy()
                instance_destroy()
            }
            else
                execute_sparing_false = 1
        }
        if (global.enemy_sparing == 0 || execute_sparing_false == 1)
        {
            global.spare_selected_count += 1
            global.last_action_selected = "Spare"
            global.last_action_selected_2 = "Spare"
            global.last_action_selected_3 = "Spare"
            global.no_hit_count += 1
            if (global.enemy_count >= 2)
                global.no_hit_count_2 += 1
            if (global.enemy_count >= 3)
                global.no_hit_count_3 += 1
            scr_determine_special_effect_enemy("Spare")
            global.important_cutscene = script_execute(gml_Script_scr_determine_important_cutscene_attacking)
            global.can_attack = script_execute(gml_Script_scr_determine_can_attack_attacking)
            if (global.important_cutscene == 0 && global.can_attack == 1)
                global.enemy_attacking = 1
            if (global.can_attack == 0)
            {
                with (obj_dialogue_box_battle)
                    no_loop_can_attack = 0
            }
            execute_sparing_false = 0
            audio_play_sound(snd_battle_item_weapon_select, 20, false)
            with (obj_text_battle_move_selected_mercy_parent)
                instance_destroy()
            instance_destroy()
        }
    }
    else if (global.mercy_number == 2)
    {
        var random_number = irandom_range(0, 1)
        if (global.player_armor_modifier == "Patch")
            random_number = 1
        if (random_number == 0)
        {
            global.no_hit_count += 1
            if (global.enemy_count >= 2)
                global.no_hit_count_2 += 1
            if (global.enemy_count >= 3)
                global.no_hit_count_3 += 1
            scr_determine_special_effect_enemy("Flee")
            global.important_cutscene = script_execute(gml_Script_scr_determine_important_cutscene_attacking)
            global.can_attack = script_execute(gml_Script_scr_determine_can_attack_attacking)
            if (global.important_cutscene == 0 && global.can_attack == 1)
                global.enemy_attacking = 1
            if (global.can_attack == 0)
            {
                with (obj_dialogue_box_battle)
                    no_loop_can_attack = 0
            }
            audio_play_sound(snd_battle_item_weapon_select, 20, false)
            with (obj_text_battle_move_selected_mercy_parent)
                instance_destroy()
            instance_destroy()
        }
        else if (random_number == 1)
        {
            instance_create(0, 0, obj_dialogue_battle_flee)
            instance_create(x, y, obj_heart_battle_menu_flee)
            moveable = 0
            audio_play_sound(snd_flee, 20, false)
            with (obj_text_battle_move_selected_mercy_parent)
                instance_destroy()
            instance_destroy()
        }
    }
}
if (key_revert && key_select == 0)
{
    if instance_exists(obj_text_battle_move_selected_spare)
    {
        with (obj_heart_battle_menu)
        {
            no_loop = 0
            image_alpha = 1
        }
        with (obj_text_battle_move_selected_mercy_parent)
            instance_destroy()
        instance_destroy()
    }
}
if (key_select == 0 && key_revert == 0 && instance_exists(obj_text_battle_move_selected_flee))
{
    if (key_down && key_up == 0)
    {
        if (global.mercy_number >= 2)
            global.mercy_number = 1
        else
            global.mercy_number += 1
        audio_play_sound(snd_mainmenu_select, 20, false)
    }
    else if (key_up && key_down == 0)
    {
        if (global.mercy_number <= 1)
            global.mercy_number = 2
        else
            global.mercy_number -= 1
        audio_play_sound(snd_mainmenu_select, 20, false)
    }
}
x = (obj_dialogue_box_battle.x + 44)
if (global.mercy_number == 1)
    y = (obj_dialogue_box_battle.y + 36)
else if (global.mercy_number == 2)
    y = (obj_dialogue_box_battle.y + 68)
