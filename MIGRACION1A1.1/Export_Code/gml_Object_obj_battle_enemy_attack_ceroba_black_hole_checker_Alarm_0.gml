if live_call()
    return global.live_result;
counter_current += 1
for (var bullet_speed_temp = 0; bullet_speed_temp == 0; bullet_speed_temp = irandom_range(-2, 2))
{
}
var bullet_offset_temp = irandom_range(0, 360)
for (var i = 0; i < bullet_number; i++)
{
    var bullet = instance_create(0, 0, obj_battle_enemy_attack_ceroba_flower_barrage_bullet)
    bullet.attack_dir = (bullet_offset_temp + ((i + 1) * (360 / bullet_number)))
    if (bullet.attack_dir > 360)
        bullet.attack_dir -= 360
    bullet.bullet_speed_max = bullet_speed_temp
}
alarm[0] = spawn_delay
