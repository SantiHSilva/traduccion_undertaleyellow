function scr_battle_core_directory_action_3_selected_event() //gml_Script_scr_battle_core_directory_action_3_selected_event
{
    var event_check = 0
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            global.action_3_selected_count += 1
            global.enemy_sparing = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            global.enemy_sparing = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier a")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 2)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "flier b")
        {
            global.action_1_selected_count_2 = 0
            global.action_2_selected_count_2 = 0
            if (global.action_3_selected_count_2 < 2)
                global.action_3_selected_count_2 += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "flier c")
        {
            global.action_1_selected_count_3 = 0
            global.action_2_selected_count_3 = 0
            if (global.action_3_selected_count_3 < 2)
                global.action_3_selected_count_3 += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "sweet corn a")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            if (global.item_gift != "Nothing")
                global.enemy_sparing = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "sweet corn b")
        {
            global.action_1_selected_count_2 = 0
            global.action_2_selected_count_2 = 0
            if (global.action_3_selected_count_2 < 1)
                global.action_3_selected_count_2 += 1
            if (global.item_gift != "Nothing")
                global.enemy_sparing_2 = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "rorrim a")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 2)
                global.action_3_selected_count += 1
            if (!global.enemy_sparing)
            {
                global.action_2_important = 1
                global.action_2_color = 65535
            }
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "decibat")
        {
            if (global.enemy_sparing == 0 && (global.action_1_selected_count + global.action_3_selected_count) < 6)
                global.action_3_selected_count += 1
            if (global.enemy_sparing == 0)
                global.action_2_selected_count = 0
            if (global.enemy_sparing == 1 && global.enemy_low_hp == 0)
            {
                script_execute(gml_Script_scr_start_enemy_sparing_decibat)
                instance_destroy()
                return;
            }
            audio_sound_gain(mus_decibat_yellow, 1, 1500)
            if ((global.action_1_selected_count + global.action_3_selected_count) == 6 && global.enemy_low_hp == 0)
                global.important_cutscene = 1
            else
                global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "micro froggit")
        {
            if (global.action_1_selected_count == 0)
                global.action_2_selected_count = 0
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            if (global.action_3_selected_count == 1)
                global.important_cutscene = 1
            else
                global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "insomnitot a")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            if (global.enemy_sparing == 1 && global.enemy_low_hp == 0)
            {
                if (global.battle_enemy_name == "insomnitot solo")
                    script_execute(gml_Script_scr_start_enemy_no_attack_insomnitot_solo)
                else if (global.battle_enemy_name == "insomnitot duo")
                {
                    if ((global.enemy_sparing_2 == 1 && global.enemy_low_hp_2 == 0) || (global.enemy_dead_2 + global.enemy_spared_2) >= 1)
                        script_execute(gml_Script_scr_start_enemy_no_attack_insomnitot_duo)
                    else
                        global.enemy_attacking = 1
                }
                else
                    global.enemy_attacking = 1
            }
            else
                global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "insomnitot b")
        {
            global.action_1_selected_count_2 = 0
            global.action_2_selected_count_2 = 0
            if (global.action_3_selected_count_2 < 1)
                global.action_3_selected_count_2 += 1
            if (global.enemy_sparing_2 == 1 && global.enemy_low_hp_2 == 0)
            {
                if (global.battle_enemy_name == "insomnitot duo")
                {
                    if ((global.enemy_sparing == 1 && global.enemy_low_hp == 0) || (global.enemy_dead + global.enemy_spared) >= 1)
                        script_execute(gml_Script_scr_start_enemy_no_attack_insomnitot_duo)
                    else
                        global.enemy_attacking = 1
                }
                else if (global.battle_enemy_name == "know cone insomnitot duo")
                {
                    if ((global.enemy_dead + global.enemy_spared) >= 1)
                        script_execute(gml_Script_scr_start_enemy_no_attack_know_cone_insomnitot_duo)
                    else
                        global.enemy_attacking = 1
                }
                else
                    global.enemy_attacking = 1
            }
            else
                global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "know cone a")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "know cone b")
        {
            global.action_1_selected_count_2 = 0
            global.action_2_selected_count_2 = 0
            if (global.action_3_selected_count_2 < 1)
                global.action_3_selected_count_2 += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "frostermit a")
        {
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "trihecta")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "tri")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "hec")
        {
            global.action_1_selected_count_2 = 0
            global.action_2_selected_count_2 = 0
            if (global.action_3_selected_count_2 < 1)
                global.action_3_selected_count_2 += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "ta")
        {
            if (global.action_3_selected_count_3 < 1)
                global.action_3_selected_count_3 += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            if (global.action_3_selected_count < 2)
                global.action_3_selected_count += 1
            event_check = 1
        }
        else if (battle_enemy_name == "dunebud a")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 2)
                global.action_3_selected_count += 1
            if (global.action_3_selected_count == 2)
            {
                if (global.enemy_low_hp == 0)
                {
                    with (obj_dunebud_a)
                    {
                        sinking_away = 1
                        sprite_index = spr_dunebud_sink
                        image_speed = image_speed_sink
                        image_index = 0
                        image_xscale = 1
                        image_yscale = 1
                    }
                }
                else
                    global.enemy_attacking = 1
            }
            if (global.action_3_selected_count != 2)
                global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "dunebud b")
        {
            global.action_1_selected_count_2 = 0
            global.action_2_selected_count_2 = 0
            if (global.action_3_selected_count_2 < 2)
                global.action_3_selected_count_2 += 1
            if (global.action_3_selected_count_2 == 2)
            {
                if (global.enemy_low_hp_2 == 0)
                {
                    with (obj_dunebud_b)
                    {
                        sinking_away = 1
                        sprite_index = spr_dunebud_sink
                        image_speed = image_speed_sink
                        image_index = 0
                        image_xscale = 1
                        image_yscale = 1
                    }
                }
                else
                    global.enemy_attacking = 1
            }
            if (global.action_3_selected_count_2 != 2)
                global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "slither a")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 2)
                global.action_3_selected_count += 1
            if (global.action_3_selected_count >= 2)
                global.enemy_sparing = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "slither b")
        {
            global.action_1_selected_count_2 = 0
            global.action_2_selected_count_2 = 0
            if (global.action_3_selected_count_2 < 2)
                global.action_3_selected_count_2 += 1
            if (global.action_3_selected_count_2 >= 2)
            {
                global.action_3_selected_count_2 = 0
                global.enemy_sparing_2 = 1
            }
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "bowll a")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 2)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "el bailador")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "flower girls")
        {
            global.action_1_selected_count = 0
            global.action_2_selected_count = 0
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "starlo")
        {
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "jandroid a")
        {
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.action_2_selected_count = 0
            global.action_1_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "jandroid a")
        {
            if (global.action_3_selected_count_2 < 1)
                global.action_3_selected_count_2 += 1
            global.action_2_selected_count_2 = 0
            global.action_1_selected_count_2 = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "goosic a")
        {
            if (global.action_3_selected_count < 1)
                global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "goosic b")
        {
            if (global.action_3_selected_count_2 < 1)
                global.action_3_selected_count_2 += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "sousborg")
        {
            if (global.enemy_mode == 2)
            {
                global.enemy_mode = 3
                global.enemy_attack = "Sousborg Season"
                global.action_amount = 0
            }
            else
                global.enemy_attack = "Sousborg Flip"
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "axis")
        {
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "axis genocide")
        {
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "macro froggit")
        {
            global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "guardener")
        {
            global.action_3_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "ed" || battle_enemy_name == "ace" || battle_enemy_name == "mooch" || battle_enemy_name == "moray")
        {
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "flowey")
        {
            if (global.flowey_act[2] == 4)
            {
                audio_play_sound(snd_heal, 1, false)
                if (global.current_hp_self < global.max_hp_self)
                {
                    global.current_hp_self += floor((global.max_hp_self * 0.3))
                    if (global.current_hp_self > global.max_hp_self)
                        global.current_hp_self = global.max_hp_self
                }
                global.enemy_attacking = 1
            }
            else
            {
                instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch_fight)
                with (obj_heart_battle_menu)
                    event_user(0)
            }
            instance_destroy()
        }
        else if (battle_enemy_name == "ceroba")
        {
            if ((!instance_exists(obj_ceroba_pacifist_act_helper)) || obj_ceroba_pacifist_act_helper.can_skip == 1)
            {
                global.action_3_selected_count += 1
                global.enemy_attacking = 1
                instance_destroy()
            }
            return;
        }
    }
    if (event_check == 1)
    {
        var act_number = global.act_number
        switch act_number
        {
            case 1:
                scr_determine_special_effect_enemy("Action 3")
                break
            case 2:
                scr_determine_special_effect_enemy("Action 3 2")
                break
            case 3:
                scr_determine_special_effect_enemy("Action 3 3")
                break
        }

        global.important_cutscene = script_execute(gml_Script_scr_determine_important_cutscene_attacking)
        global.can_attack = script_execute(gml_Script_scr_determine_can_attack_attacking)
        if (global.important_cutscene == 0 && global.can_attack == 1)
            global.enemy_attacking = 1
        if (global.can_attack == 0)
        {
            with (obj_dialogue_box_battle)
                no_loop_can_attack = 0
        }
        instance_destroy()
        return;
    }
}

