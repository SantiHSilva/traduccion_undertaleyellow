if live_call()
    return global.live_result;
for (var i = 0; i < bullet_number_max; i++)
{
    if (timer == floor((i * ((360 / bullet_number_max) / bullet_speed))))
    {
        var bullet = instance_create_depth(obj_heart_battle_fighting_red.x, (obj_heart_battle_fighting_red.y - 80), -100, obj_battle_enemy_attack_ceroba_flower_circle_flower)
        bullet.bullet_speed = bullet_speed
        bullet.attack_dir = attack_dir
        bullet.bullet_spawner = id
        bullet_number_current += 1
    }
}
if (bullet_number_current >= bullet_number_max)
{
    if (!alarm[0])
        alarm[0] = 5
}
timer += 1
