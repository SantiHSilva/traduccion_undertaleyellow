function scr_generate_battle_flower_girls_solo() //gml_Script_scr_generate_battle_flower_girls_solo
{
    global.battle_enemy_name_1 = "flower girls"
    global.battle_menu_number = 1
    global.speed_self = 4
    global.invulnerability_self = global.player_invulnerability
    global.attacking_damage_cap = -1
    global.hit_self = 0
    global.hurt_self = 0
    global.current_hp_enemy = 90
    global.max_hp_enemy = 90
    global.last_hp_enemy = global.current_hp_enemy
    global.current_hp_enemy_draw = global.current_hp_enemy
    global.enemy_low_hp = 0
    global.enemy_hit = 0
    global.enemy_hurt = 0
    global.enemy_attack_stat = 10
    global.enemy_defense_stat = 7
    global.enemy_vulnerable = 1
    global.enemy_attacking = 0
    global.enemy_sparing = 0
    global.enemy_dead = 0
    global.enemy_spared = 0
    global.enemy_betrayed = 0
    global.enemy_fleeable = 1
    global.enemy_special_text = 0
    global.enemy_exp = 50
    global.enemy_gold = 12
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
    global.action_3_selected_count = 0
    global.spare_selected_count = 0
    global.hit_count = 0
    global.miss_count = 0
    global.no_hit_count = 0
    global.hurt_self_count = 0
    global.hurt_self_turn_count = 0
    global.item_use_count = 0
    global.item_gift_count = 0
    global.enemy_mode = 0
    global.enemy_mode_previous = 0
    global.enemy_mode_gen = 0
    global.enemy_mode_gen_previous = 0
    scr_audio_stop_sound(0)
    script_execute(gml_Script_scr_determine_enemy_music_yellow)
    audio_extend = 0
    global.sound_carry_battle = 0
    global.mettaton_voice_count = 1
    switch global.dunes_flag[31]
    {
        case 1:
            var base_y = 220
            var hand_y = (base_y - 57)
            var head_y = (hand_y - 22)
            instance_create(316, hand_y, obj_violetta_hands)
            instance_create(316, head_y, obj_violetta_head)
            instance_create(316, base_y, obj_violetta_body)
            break
        case 2:
            var base_x = 316
            base_y = 220
            var hand_x = (base_x - 75)
            hand_y = (base_y - 172)
            var head_x = (base_x - 3)
            head_y = (base_y - 66)
            instance_create(hand_x, hand_y, obj_pedla_hands)
            instance_create(head_x, head_y, obj_pedla_head)
            instance_create(316, base_y, obj_pedla_body)
            break
        case 3:
            base_x = 316
            base_y = 220
            hand_x = (base_x - 78)
            hand_y = (base_y - 95)
            head_x = (base_x - 7)
            head_y = (base_y - 71)
            instance_create(hand_x, hand_y, obj_rosa_hands)
            instance_create(head_x, head_y, obj_rosa_head)
            instance_create(316, base_y, obj_rosa_body)
            break
    }

    global.enemy_damage_x = 320
    global.enemy_damage_y = 140
    global.enemy_target_x = 320
    global.enemy_target_y = 140
    script_execute(gml_Script_scr_create_background_battle_yellow)
    instance_create(0, 0, obj_battle_fade_in_screen)
    instance_create(275, 400, obj_battle_hp_current_self)
    instance_create(275, 400, obj_battle_hp_max_self)
    instance_create(275, 400, obj_battle_hp_cover_self)
    instance_create(0, 0, obj_text_battle_stat_name)
    instance_create(0, 0, obj_text_battle_stat_lv)
    instance_create(244, 405, obj_text_hp)
    instance_create(0, 0, obj_text_hp_stat)
    instance_create(32, 250, obj_dialogue_box_battle)
    instance_create(31, 431, obj_fight)
    instance_create(184, 431, obj_act)
    instance_create(344, 431, obj_item)
    instance_create(499, 431, obj_mercy)
    global.last_text_move_select = 0
    global.soul_mode = "Red"
    instance_create((obj_fight.x + 17), (obj_fight.y + 23), obj_heart_battle_menu)
    instance_create(0, 0, obj_dialogue_battle_move_select_intro)
}

