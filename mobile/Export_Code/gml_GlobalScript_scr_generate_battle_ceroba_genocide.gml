function scr_generate_battle_ceroba_genocide() //gml_Script_scr_generate_battle_ceroba_genocide
{
    global.battle_enemy_name_1 = "ceroba"
    global.battle_menu_number = 1
    global.speed_self = 4
    global.invulnerability_self = global.player_invulnerability
    global.attacking_damage_cap = -1
    global.hit_self = 0
    global.hurt_self = 0
    global.current_hp_enemy = 1000
    global.max_hp_enemy = 1000
    global.last_hp_enemy = global.current_hp_enemy
    global.current_hp_enemy_draw = global.current_hp_enemy
    global.enemy_low_hp = 0
    global.enemy_hit = 0
    global.enemy_hurt = 0
    global.enemy_attack_stat = 13
    global.enemy_defense_stat = 21
    global.enemy_vulnerable = 1
    global.enemy_attacking = 1
    global.enemy_sparing = 0
    global.enemy_dead = 0
    global.enemy_spared = 0
    global.enemy_betrayed = 0
    global.enemy_fleeable = 0
    global.enemy_special_text = 0
    global.enemy_exp = 1500
    global.enemy_gold = 50
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
    var spawn_x = 318
    var spawn_y = 230
    instance_create((spawn_x - 14), (spawn_y - 99), obj_ceroba_staff)
    instance_create((spawn_x + 5), (spawn_y - 177), obj_ceroba_ponytail)
    instance_create((spawn_x - 18), (spawn_y - 116), obj_ceroba_hand_left)
    instance_create((spawn_x + 28), (spawn_y - 123), obj_ceroba_hand_right)
    instance_create((spawn_x + 3), (spawn_y - 122), obj_ceroba_head)
    instance_create(spawn_x, spawn_y, obj_ceroba_body)
    obj_ceroba_staff.image_alpha = 0
    obj_ceroba_ponytail.image_alpha = 0
    obj_ceroba_hand_left.image_alpha = 0
    obj_ceroba_hand_right.image_alpha = 0
    obj_ceroba_head.image_alpha = 0
    global.enemy_target_x = obj_ceroba_body.x
    global.enemy_target_y = (obj_ceroba_body.y - 100)
    global.last_text_move_select = -1
    instance_create(0, 0, obj_battle_fade_in_screen)
    instance_create(275, 400, obj_battle_hp_current_self)
    instance_create(275, 400, obj_battle_hp_max_self)
    instance_create(275, 400, obj_battle_hp_cover_self)
    instance_create(0, 0, obj_text_battle_stat_name)
    instance_create(0, 0, obj_text_battle_stat_lv)
    instance_create(244, 405, obj_text_hp)
    instance_create(0, 0, obj_text_hp_stat)
    instance_create(0, 0, obj_background_ceroba_battle_geno_yellow)
    instance_create(319, 320, obj_dialogue_box_battle)
    instance_create(31, 431, obj_fight)
    instance_create(184, 431, obj_act)
    instance_create(344, 431, obj_item)
    instance_create(499, 431, obj_mercy)
    instance_create(0, 0, obj_battle_enemy_attack_ceroba_red_hp_numbers)
    global.soul_mode = "Red"
    instance_create((obj_fight.x + 17), (obj_fight.y + 23), obj_heart_battle_menu)
    with (obj_heart_battle_menu)
        image_alpha = 0
    global.boss_mini = 0
    global.enemy_attack = "Ceroba Opener"
    global.image_alpha_enemy_attacking_immunity = 1
    global.battle_phase = 1
    audio_sound_gain(mus_trial_by_fury, 1, 0)
    audio_sound_pitch(mus_trial_by_fury, 1)
    audio_play_sound(mus_trial_by_fury, 20, true)
}

