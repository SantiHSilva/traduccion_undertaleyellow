if ((!instance_exists(obj_battle_enemy_attack_axis_energy_ball_boss)) && attack_can_end == 1)
{
    if (!alarm[1])
        alarm[1] = 15
}
if instance_exists(obj_battle_enemy_attack_axis_energy_ball_boss_destroy_effect)
    block_successful = 1
if (obj_heart_battle_fighting_parent.x != obj_heart_battle_fighting_parent.xstart)
{
    if (!attack_started)
    {
        alarm[0] = 30
        attack_started = 1
    }
}
