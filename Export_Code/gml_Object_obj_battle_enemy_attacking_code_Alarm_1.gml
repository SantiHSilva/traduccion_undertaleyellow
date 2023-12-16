var attack_missed = 0
if instance_exists(obj_text_damage_count)
{
    with (obj_text_damage_count)
        instance_destroy()
}
if instance_exists(obj_text_miss)
{
    attack_missed = 1
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
    var enemy_count = global.enemy_count
    global.enemy_dead = 1
    if (enemy_count == 1)
    {
        with (obj_battle_generator)
            audio_extend = 0
        audio_stop_all()
        instance_create(0, 0, obj_dialogue_battle_win_enemy)
        audio_play_sound(snd_monster_damage_death, 20, false)
    }
    else if (enemy_count == 2)
    {
        if (global.enemy_dead_2 == 1 || global.enemy_spared_2 == 1)
        {
            with (obj_battle_generator)
                audio_extend = 0
            audio_stop_all()
            instance_create(0, 0, obj_dialogue_battle_win_enemy)
            audio_play_sound(snd_monster_damage_death, 20, false)
        }
        else
        {
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
        }
    }
    else if (enemy_count == 3)
    {
        if ((global.enemy_dead_2 == 1 || global.enemy_spared_2 == 1) && (global.enemy_dead_3 == 1 || global.enemy_spared_3 == 1))
        {
            with (obj_battle_generator)
                audio_extend = 0
            audio_stop_all()
            instance_create(0, 0, obj_dialogue_battle_win_enemy)
            audio_play_sound(snd_monster_damage_death, 20, false)
        }
        else
        {
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
        }
    }
}
else
{
    if (!attack_missed)
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
}
instance_destroy()
