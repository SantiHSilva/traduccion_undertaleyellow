function scr_generate_battle_asgore() //gml_Script_scr_generate_battle_asgore
{
    global.battle_enemy_name_1 = "asgore"
    global.battle_menu_number = 1
    global.speed_self = 4
    global.invulnerability_self = global.player_invulnerability
    global.attacking_damage_cap = -1
    global.hit_self = 0
    global.hurt_self = 0
    global.current_hp_enemy = 1000
    global.current_hp_self = 9999
    global.max_hp_enemy = 1000
    global.last_hp_enemy = global.current_hp_enemy
    global.current_hp_enemy_draw = global.current_hp_enemy
    global.enemy_low_hp = 0
    global.enemy_hit = 0
    global.enemy_hurt = 0
    global.enemy_attack_stat = 0
    global.enemy_defense_stat = 0
    global.enemy_vulnerable = 1
    global.enemy_attacking = 1
    global.enemy_sparing = 0
    global.enemy_dead = 0
    global.enemy_spared = 0
    global.enemy_betrayed = 0
    global.enemy_fleeable = 0
    global.enemy_special_text = 0
    global.enemy_exp = 1500
    global.enemy_gold = 20
    global.enemy_count = 1
    global.turns_passed = 0
    global.last_action_selected = "Nothing"
    global.action_1_important = 0
    global.action_2_important = 0
    global.action_3_important = 0
    global.action_1_color = 16777215
    global.action_2_color = 16777215
    global.action_3_color = 16777215
    global.action_amount = 3
    global.item_use = "Nothing"
    global.item_used = "Nothing"
    global.item_gift = "Nothing"
    global.item_gifted = "Nothing"
    global.image_alpha_enemy_attacking = 1
    global.important_cutscene = 0
    global.can_attack = 1
    global.action_1_selected_count = 0
    global.action_2_selected_count = 0
    global.spare_selected_count = 0
    global.hit_count = 0
    global.miss_count = 0
    global.no_hit_count = 0
    global.hurt_self_count = 0
    global.hurt_self_turn_count = 0
    global.item_use_count = 0
    global.item_gift_count = 0
    global.attack_cycle = 0
    global.attack_cycle_max = 7
    global.enemy_mode = 0
    global.enemy_mode_previous = 0
    if (global.sound_carry_overworld == 0)
        scr_audio_stop_sound(0)
    audio_extend = 0
    global.sound_carry_battle = 0
    global.mettaton_voice_count = 1
    global.enemy_target_x = 0
    global.enemy_target_y = 0
    global.last_text_move_select = -1
    instance_create(319, 320, obj_dialogue_box_battle)
    global.soul_mode = "Red"
    global.boss_mini = 0
    global.enemy_attack = "Asgore Attack"
    global.image_alpha_enemy_attacking_immunity = 1
    global.battle_phase = 1
    audio_sound_gain(mus_vsasgore, 1, 0)
    audio_sound_pitch(mus_vsasgore, 1)
    global.battle_music = audio_play_sound(mus_vsasgore, 20, true)
}

