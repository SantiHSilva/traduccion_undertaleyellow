function scr_battle_core_directory_action_1_selected_event() //gml_Script_scr_battle_core_directory_action_1_selected_event
{
    var event_check = 0
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            if (global.action_1_selected_count == 6)
                script_execute(scr_craniex_sparing)
            else
            {
                global.action_1_selected_count += 1
                global.action_2_selected_count = 0
                global.action_3_selected_count = 0
                global.enemy_sparing = 0
                global.enemy_attacking = 1
                instance_destroy()
                return;
            }
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            if (global.turns_passed == 4)
            {
                global.important_cutscene = 1
                instance_destroy()
                return;
            }
            else
            {
                global.enemy_sparing = 0
                global.enemy_attacking = 1
                instance_destroy()
                return;
            }
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            global.important_cutscene = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "flier a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            if (global.action_1_selected_count == 1)
                global.enemy_sparing = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "flier b")
        {
            if (global.action_1_selected_count_2 < 1)
                global.action_1_selected_count_2 += 1
            global.action_2_selected_count_2 = 0
            global.action_3_selected_count_2 = 0
            if (global.action_1_selected_count_2 == 1)
                global.enemy_sparing_2 = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "flier c")
        {
            if (global.action_1_selected_count_3 < 1)
                global.action_1_selected_count_3 += 1
            global.action_2_selected_count_3 = 0
            global.action_3_selected_count_3 = 0
            if (global.action_1_selected_count_3 == 1)
                global.enemy_sparing_3 = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "penilla a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "penilla b")
        {
            if (global.action_1_selected_count_2 < 1)
                global.action_1_selected_count_2 += 1
            global.action_2_selected_count_2 = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "sweet corn a")
        {
            if (global.action_1_selected_count < 3)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "sweet corn b")
        {
            if (global.action_1_selected_count_2 < 3)
                global.action_1_selected_count_2 += 1
            global.action_2_selected_count_2 = 0
            global.action_3_selected_count_2 = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            if (global.action_1_selected_count < 3)
            {
                var enemy_count = global.enemy_count
                if (enemy_count == 3)
                {
                    if ((((global.enemy_dead_2 + global.enemy_spared_2) + global.enemy_dead_3) + global.enemy_spared_3) >= 2)
                        global.action_1_selected_count += 1
                }
                else if (enemy_count == 2)
                {
                    if ((global.enemy_dead_2 + global.enemy_spared_2) >= 1)
                        global.action_1_selected_count += 1
                }
                else
                    global.action_1_selected_count += 1
            }
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            if (global.action_1_selected_count == 3 && global.enemy_low_hp == 0)
            {
                obj_crispy_scroll_head_a.transformed = 1
                obj_crispy_scroll_back_a.transformed = 1
                obj_crispy_scroll_hand_left_a.transformed = 1
                obj_crispy_scroll_hand_right_a.transformed = 1
            }
            else
                global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "rorrim a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "decibat")
        {
            if (global.enemy_sparing == 0 && (global.action_1_selected_count + global.action_3_selected_count) < 6)
                global.action_1_selected_count += 1
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
        else if (battle_enemy_name == "dalv")
        {
            switch global.enemy_mode
            {
                case 0:
                case 1:
                case 2:
                    if (global.enemy_sparing == 1 || global.action_2_important == 1)
                        script_execute(gml_Script_scr_start_enemy_no_attack_dalv)
                    else
                        global.enemy_attacking = 1
                    instance_destroy()
                    return;
            }

        }
        else if (battle_enemy_name == "micro froggit")
        {
            if (global.action_1_selected_count < 2)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            if (global.action_1_selected_count == 2)
                global.enemy_sparing = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "insomnitot a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            if (global.action_1_selected_count >= 1 && global.action_3_selected_count >= 1)
            {
                global.enemy_sparing = 1
                if (global.enemy_low_hp == 0)
                {
                    with (obj_insomnitot_body_a)
                        sleep = 1
                    with (obj_insomnitot_face_a)
                        sleep = 1
                }
            }
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
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
            if (global.action_1_selected_count_2 < 1)
                global.action_1_selected_count_2 += 1
            if (global.action_1_selected_count_2 >= 1 && global.action_3_selected_count_2 >= 1)
            {
                global.enemy_sparing_2 = 1
                if (global.enemy_low_hp_2 == 0)
                {
                    with (obj_insomnitot_body_b)
                        sleep = 1
                    with (obj_insomnitot_face_b)
                        sleep = 1
                }
            }
            global.action_2_selected_count_2 = 0
            global.action_3_selected_count_2 = 0
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
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "know cone b")
        {
            if (global.action_1_selected_count_2 < 1)
                global.action_1_selected_count_2 += 1
            global.action_2_selected_count_2 = 0
            global.action_3_selected_count_2 = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "frostermit a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "trihecta")
        {
            if (global.action_2_selected_count >= 1)
                global.action_1_selected_count = 0
            else
                global.action_1_selected_count += 1
            if (global.action_1_selected_count >= 2)
            {
                if (global.enemy_low_hp == 0)
                {
                    with (obj_trihecta_together)
                    {
                        tipping_number = 2
                        sprite_index = spr_trihecta_falling
                        image_speed = (1/3)
                        image_index = 0
                        event_user(0)
                    }
                }
                else
                    global.enemy_attacking = 1
            }
            else if (global.action_1_selected_count == 1)
            {
                if (global.enemy_low_hp == 0)
                {
                    with (obj_trihecta_together)
                    {
                        tipping_number = 1
                        sprite_index = spr_trihecta_tipping
                        image_speed = (1/3)
                        image_index = 0
                    }
                }
            }
            else if (global.action_1_selected_count == 0)
            {
                if (global.enemy_low_hp == 0)
                {
                    with (obj_trihecta_together)
                    {
                        tipping_number = 0
                        sprite_index = spr_trihecta_balanced
                        image_speed = (1/3)
                        image_index = 0
                    }
                }
            }
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            if (global.action_1_selected_count != 2)
                global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "tri")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "hec")
        {
            if (global.action_1_selected_count_2 < 1)
                global.action_1_selected_count_2 += 1
            global.action_2_selected_count_2 = 0
            global.action_3_selected_count_2 = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "ta")
        {
            if (global.action_1_selected_count_3 < 1)
                global.action_1_selected_count_3 += 1
            global.action_2_selected_count_3 = 0
            global.action_3_selected_count_3 = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            if (global.action_1_selected_count < 2)
                global.action_1_selected_count += 1
            event_check = 1
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            if (global.action_1_selected_count < 3)
                global.action_1_selected_count += 1
            if (global.enemy_mode == 4)
            {
                if (global.action_1_selected_count >= 2)
                    global.enemy_sparing = 1
            }
            event_check = 1
        }
        else if (battle_enemy_name == "dunebud a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            if (global.action_2_selected_count == 1)
                global.enemy_sparing = 1
            global.action_3_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "dunebud b")
        {
            if (global.action_1_selected_count_2 < 1)
                global.action_1_selected_count_2 += 1
            if (global.action_2_selected_count_2 == 1)
                global.enemy_sparing_2 = 1
            global.action_3_selected_count_2 = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "cactony a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "slither a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "slither b")
        {
            if (global.action_1_selected_count_2 < 1)
                global.action_1_selected_count_2 += 1
            global.action_2_selected_count_2 = 0
            global.action_3_selected_count_2 = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "bowll a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            if (global.action_3_selected_count >= 1)
                global.enemy_sparing = 1
            global.action_2_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "el bailador")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "flower girls")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.action_2_selected_count = 0
            global.action_3_selected_count = 0
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            if (global.action_1_selected_count < 2)
                global.action_1_selected_count += 1
            event_check = 1
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.turns_passed >= 18)
                global.action_1_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "ed" || battle_enemy_name == "ace" || battle_enemy_name == "mooch" || battle_enemy_name == "moray")
        {
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            if (global.action_3_selected_count >= 1)
                global.enemy_sparing = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "jandroid a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "jandroid b")
        {
            if (global.action_1_selected_count_2 < 1)
                global.action_1_selected_count_2 += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "goosic a")
        {
            if (global.action_1_selected_count < 1)
                global.action_1_selected_count += 1
            if (global.action_3_selected_count >= 1)
                global.enemy_sparing = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "goosic b")
        {
            if (global.action_1_selected_count_2 < 1)
                global.action_1_selected_count_2 += 1
            if (global.action_3_selected_count_2 >= 1)
                global.enemy_sparing_2 = 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "sousborg")
        {
            if (global.enemy_mode == 0)
            {
                global.enemy_mode = 1
                global.action_amount = 3
                global.enemy_attack = "Egg Crack"
            }
            else
                global.enemy_attack = "Sousborg Flip"
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "axis")
        {
            if (global.action_1_important == 1)
            {
                if (global.action_1_selected_count < 3)
                {
                    global.action_1_selected_count += 1
                    if (global.route != 2 && global.action_1_selected_count == 3)
                    {
                        global.action_amount = 0
                        global.enemy_sparing = 1
                    }
                }
                else if (global.route != 2)
                    global.enemy_sparing = 1
            }
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "macro froggit")
        {
            global.action_1_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "axis genocide")
        {
            global.action_1_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
        }
        else if (battle_enemy_name == "guardener")
        {
            global.action_1_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
        else if (battle_enemy_name == "flowey")
        {
            if (global.flowey_act[0] == 4)
            {
                audio_play_sound(snd_heal, 1, false)
                if (global.current_hp_self < global.max_hp_self)
                {
                    global.current_hp_self += (global.max_hp_self * 0.3)
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
                global.action_1_selected_count += 1
                global.enemy_attacking = 1
                instance_destroy()
            }
            return;
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            global.action_1_selected_count += 1
            global.enemy_attacking = 1
            instance_destroy()
            return;
        }
    }
    if (event_check == 1)
    {
        var act_number = global.act_number
        switch act_number
        {
            case 1:
                scr_determine_special_effect_enemy("Action 1")
                break
            case 2:
                scr_determine_special_effect_enemy("Action 1 2")
                break
            case 3:
                scr_determine_special_effect_enemy("Action 1 3")
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

