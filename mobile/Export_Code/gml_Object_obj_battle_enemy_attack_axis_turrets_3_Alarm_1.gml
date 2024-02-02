if live_call()
    return global.live_result;
with (obj_battle_enemy_attack_axis_turret_fake)
    destroy_self = 1
with (obj_battle_enemy_attack_axis_turret_real)
    can_shoot = 1
alarm[0] = attack_interval
