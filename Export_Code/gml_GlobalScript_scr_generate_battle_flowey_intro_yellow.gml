function scr_generate_battle_flowey_intro_yellow() //gml_Script_scr_generate_battle_flowey_intro_yellow
{
    global.battle_enemy_name_1 = "flowey intro"
    global.battle_menu_number = 1
    global.speed_self = 4
    global.invulnerability_self = global.player_invulnerability
    global.attacking_damage_cap = -1
    global.hit_self = 0
    global.hurt_self = 0
    global.current_hp_enemy = 50
    global.max_hp_enemy = 50
    global.last_hp_enemy = global.current_hp_enemy
    global.current_hp_enemy_draw = global.current_hp_enemy
    global.enemy_low_hp = 0
    global.enemy_hit = 0
    global.enemy_hurt = 0
    global.enemy_attack_stat = 3
    global.enemy_defense_stat = 2
    global.enemy_vulnerable = 1
    global.enemy_attacking = 0
    global.enemy_sparing = 0
    global.enemy_dead = 0
    global.enemy_spared = 0
    global.enemy_betrayed = 0
    global.enemy_fleeable = 1
    global.enemy_special_text = 0
    global.enemy_exp = 10
    global.enemy_gold = 2
    global.enemy_count = 1
    global.turns_passed = 0
    global.last_action_selected = "Nothing"
    global.action_1_important = 0
    global.action_amount = 1
    global.item_use = "Nothing"
    global.item_used = "Nothing"
    global.item_gift = "Nothing"
    global.item_gifted = "Nothing"
    global.image_alpha_enemy_attacking = 1
    global.important_cutscene = 0
    global.can_attack = 1
    global.action_1_selected_count = 0
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
    if (global.sound_carry_overworld == 0)
    {
        scr_audio_stop_sound(0)
        audio_sound_gain(mus_floweynew_yellow, 1, 0)
        audio_sound_pitch(mus_floweynew_yellow, 1)
        audio_play_sound(mus_floweynew_yellow, 20, true)
    }
    audio_extend = 0
    global.sound_carry_battle = 1
    global.mettaton_voice_count = 1
    instance_create(323, 178, obj_flowey_intro_yellow)
    instance_create(0, 0, obj_battle_fade_in_screen)
    instance_create(310, 400, obj_battle_hp_current_self)
    instance_create(310, 400, obj_battle_hp_max_self)
    instance_create(310, 400, obj_battle_hp_cover_self)
    instance_create(0, 0, obj_text_battle_stat_lv)
    instance_create(274, 405, obj_text_hp)
    instance_create(0, 0, obj_text_hp_stat)
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any)
    instance_create(367, 134, obj_quote_bubble_battle)
    instance_create(0, 0, obj_quote_battle_flowey_intro_main_yellow)
    global.last_text_move_select = 0
    global.soul_mode = "Red"
    instance_create(round((obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2))), round((obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2))), obj_heart_battle_fighting_red)
    with (obj_heart_battle_fighting_parent)
        moveable = 1
    instance_create(obj_heart_battle_fighting_parent.x, (obj_heart_battle_fighting_parent.y + 30), obj_heart_tutorial_arrows_yellow)
    global.boss_mini = 0
    global.enemy_attack = "Nothing"
    global.image_alpha_enemy_attacking_immunity = 1
}
