function scr_battle_core_directory_action_1_name(argument0, argument1) //gml_Script_scr_battle_core_directory_action_1_name
{
    if (global.battling_boss == 1)
    {
        var battle_enemy_name = global.battle_enemy_name
        if (global.action_1_important == 1)
            draw_set_color(global.action_1_color)
        else
            draw_set_color(c_white)
    }
    else
    {
        var act_number = global.act_number
        switch act_number
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1
                if (global.action_1_important == 1)
                    draw_set_color(global.action_1_color)
                else
                    draw_set_color(c_white)
                break
            case 2:
                battle_enemy_name = global.battle_enemy_name_2
                if (global.action_1_important_2 == 1)
                    draw_set_color(global.action_1_color_2)
                else
                    draw_set_color(c_white)
                break
            case 3:
                battle_enemy_name = global.battle_enemy_name_3
                if (global.action_1_important_3 == 1)
                    draw_set_color(global.action_1_color_3)
                else
                    draw_set_color(c_white)
                break
            default:
                battle_enemy_name = global.battle_enemy_name_1
                if (global.action_1_important == 1)
                {
                    draw_set_color(global.action_1_color)
                    break
                }
                else
                    draw_set_color(c_white)
        }

    }
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Hablar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            var turns_passed = global.turns_passed
            if (turns_passed < 4)
            {
                battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
                battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
                battle_menu_option_string = "* Oops!"
                script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
            }
            else if (turns_passed == 4)
            {
                battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
                battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
                battle_menu_option_string = "* Cautivar"
                script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
            }
            else if (turns_passed > 4)
            {
                battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
                battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
                battle_menu_option_string = "* Llorar"
                script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
            }
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Elogiar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "flier a" || battle_enemy_name == "flier b" || battle_enemy_name == "flier c")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Consolar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "penilla a" || battle_enemy_name == "penilla b")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Elogiar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "sweet corn a" || battle_enemy_name == "sweet corn b")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Lamer"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Transformar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "rorrim a")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Ajustar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "decibat")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Hablar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "dalv")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Hablar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "micro froggit")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Elogiar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "insomnitot a" || battle_enemy_name == "insomnitot b")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Cantar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "know cone a" || battle_enemy_name == "know cone b")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Alentar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "frostermit a")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Inspeccionar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "trihecta")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Empujar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "tri" || battle_enemy_name == "hec" || battle_enemy_name == "ta")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Reír"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Apurar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Disculparse"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "dunebud a" || battle_enemy_name == "dunebud b")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Palmadita"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "cactony a")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Tocar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "slither a" || battle_enemy_name == "slither b")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Desafiar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "bowll a")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Limpiar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "el bailador")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            if (global.route != 3)
                battle_menu_option_string = "* Girar"
            else
                battle_menu_option_string = "* Mirar fijamente"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "flower girls")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            switch global.dunes_flag[31]
            {
                case 1:
                    battle_menu_option_string = "* Adular"
                    break
                case 2:
                    battle_menu_option_string = "* Aceptar"
                    break
                case 3:
                    battle_menu_option_string = "* Adular"
                    break
            }

            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Hablar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Resistir"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
            {
                battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
                battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
                battle_menu_option_string = "* Forcejear"
                script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
            }
            else if (global.turns_passed >= 18)
            {
                battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
                battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
                battle_menu_option_string = "* Rendirse"
                script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
            }
            else
            {
                battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
                battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
                battle_menu_option_string = "* Dar Vueltas"
                script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
            }
        }
        else if (battle_enemy_name == "ed" || battle_enemy_name == "moray" || battle_enemy_name == "ace" || battle_enemy_name == "mooch")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Estabilizar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "jandroid a" || battle_enemy_name == "jandroid b")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Questionar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Mirar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "goosic a" || battle_enemy_name == "goosic b")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Vibe"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "sousborg")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            switch global.enemy_mode
            {
                case 0:
                    battle_menu_option_string = "* Partir"
                    break
                case 1:
                    battle_menu_option_string = "* Hervir"
                    break
                case 2:
                    battle_menu_option_string = "* Refrigerar"
                    break
            }

            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "axis")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Brace"
            if (global.action_1_important == 1)
            {
                if (global.route == 1)
                    battle_menu_option_string = "* Elogiar"
                else if (global.route == 2)
                    battle_menu_option_string = "* Plan B"
            }
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "macro froggit")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            if (global.turns_passed == 0)
                battle_menu_option_string = "* Elogiar"
            else
                battle_menu_option_string = "* Frog"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "axis genocide")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Empujar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "guardener")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Recolectar"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "flowey")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            switch global.flowey_act[0]
            {
                case 0:
                    battle_menu_option_string = "* Olvidar"
                    break
                case 1:
                    battle_menu_option_string = "* Gritar"
                    break
                case 2:
                    battle_menu_option_string = "* Sofocar"
                    break
                case 3:
                    battle_menu_option_string = "* Esconderse"
                    break
                case 4:
                    battle_menu_option_string = "* Persistir"
                    break
            }

            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "ceroba")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            switch global.hotland_flag[2]
            {
                case 0:
                    battle_menu_option_string = "* Negociar"
                    break
                default:
                    battle_menu_option_string = "* Esperanzarse"
                    break
            }

            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            battle_menu_option_x = (obj_dialogue_box_battle.x + argument0)
            battle_menu_option_y = (obj_dialogue_box_battle.y + argument1)
            battle_menu_option_string = "* Recordar"
            if (global.hotland_flag[9] >= 2)
                battle_menu_option_string = "* Concentrarse"
            script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
        }
    }
}

