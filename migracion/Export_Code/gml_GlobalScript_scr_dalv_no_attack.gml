function scr_dalv_no_attack() //gml_Script_scr_dalv_no_attack
{
    global.action_1_selected_count = 0
    global.action_2_selected_count = 0
    global.turns_passed += 1
    global.last_action_selected = "Nothing"
    global.hurt_self = global.hit_self
    global.hit_self = 0
    global.enemy_hurt = global.enemy_hit
    global.enemy_hit = 0
    global.item_used = global.item_use
    global.item_use = "Nothing"
    global.item_gifted = global.item_gift
    global.item_gift = "Nothing"
    global.determine_attack_priority = 1
    script_execute(gml_Script_scr_determine_enemy_attack_yellow)
    with (obj_heart_battle_menu)
        event_user(0)
    instance_destroy()
}
