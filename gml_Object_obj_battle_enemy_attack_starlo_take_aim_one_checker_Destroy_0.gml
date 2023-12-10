with (obj_battle_enemy_attack_starlo_take_aim_target)
    instance_destroy()
with (obj_battle_enemy_attack_starlo_take_aim_shot)
    instance_destroy()
with (obj_battle_enemy_attack_starlo_take_aim_shot_collider)
    instance_destroy()
with (obj_heart_battle_fighting_parent)
    moveable = 0
if (starlo_take_aim_rope_hit == 0)
{
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3)
    instance_create(0, 0, obj_quote_battle_starlo_rope_not_hit)
}
else if (starlo_take_aim_rope_hit == 1)
{
    global.attack_cycle += 1
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3)
    instance_create(0, 0, obj_quote_battle_starlo_rope_hit)
}
