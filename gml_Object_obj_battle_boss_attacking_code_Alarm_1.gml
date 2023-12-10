var game_mode = global.game_mode
var battle_enemy_name = global.battle_enemy_name
var enemy_missed = 0
if instance_exists(obj_text_damage_count)
{
    with (obj_text_damage_count)
        instance_destroy()
}
if instance_exists(obj_text_miss)
{
    enemy_missed = 1
    with (obj_text_miss)
        instance_destroy()
}
with (obj_target_bar_battle)
    instance_destroy()
if instance_exists(obj_battle_hp_enemy_attacking_parent)
{
    with (obj_battle_hp_enemy_attacking_parent)
        instance_destroy()
}
if (global.current_hp_enemy < 0)
    global.current_hp_enemy = 0
if (global.current_hp_enemy == 0)
{
    with (obj_battle_generator)
        audio_extend = 0
    audio_stop_all()
    if (game_mode == "customs")
    {
        script_execute(gml_Script_scr_create_quote_bubble_battle_defeat)
        instance_create(0, 0, obj_quote_defeat)
    }
    else if (global.game_mode == "yellow")
    {
        switch battle_enemy_name
        {
            case "ceroba genocide":
                obj_ceroba_body.death_sprite = 1
                scr_audio_fade_out(mus_trial_by_fury, 500)
                break
            case "starlo":
                obj_starlo_boss_body.death_sprite = 1
                scr_audio_fade_out(mus_showdown, 500)
                break
            case "decibat":
            case "micro froggit":
                global.enemy_dead = 1
                instance_create(0, 0, obj_dialogue_battle_win_genocide)
                audio_play_sound(snd_monster_damage_death, 20, false)
                break
            case "axis":
                obj_axis_body.death_sprite = 1
                scr_audio_fade_out(mus_guns_blazing, 500)
                break
            case "axis genocide":
                obj_axis_body_geno.alarm[0] = 50
                break
            case "guardener":
                scr_audio_fade_out(mus_guardener_theme, 500)
                obj_guardener_body.death_sprite = 1
                break
            case "ceroba":
                obj_battle_enemy_ceroba_phase_2_outro.scene += 1
                break
            case "el bailador":
                if (global.route != 3)
                {
                    script_execute(gml_Script_scr_create_quote_bubble_battle_defeat)
                    instance_create(0, 0, obj_quote_defeat)
                }
                else
                {
                    global.enemy_dead = 1
                    instance_create(0, 0, obj_dialogue_battle_win_genocide)
                    audio_play_sound(snd_monster_damage_death, 20, false)
                }
                break
            case "martlet genocide final":
                break
            default:
                script_execute(gml_Script_scr_create_quote_bubble_battle_defeat)
                instance_create(0, 0, obj_quote_defeat)
        }

    }
}
else
{
    if (enemy_missed == 0)
        global.enemy_sparing = 0
    scr_determine_special_effect_enemy("Fight 1")
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
}
instance_destroy()
