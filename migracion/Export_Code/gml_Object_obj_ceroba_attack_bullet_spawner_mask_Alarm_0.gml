if live_call()
    return global.live_result;
if (instance_exists(obj_ceroba_attack_bullet_spawner_spawner) && obj_ceroba_attack_bullet_spawner_spawner.attack_stop == 1)
    return;
var bullet_number = 6
var bullet_spawn_timer = 12
var bullet_speed = 4
if (global.hotland_flag[2] == 2)
{
    bullet_number = 6
    bullet_spawn_timer = 10
}
if (global.hotland_flag[2] == 3)
{
    bullet_number = 6
    bullet_spawn_timer = 8
}
for (var i = bullet_spawn_direction; i < (360 + bullet_spawn_direction); i += (360 / bullet_number))
{
    var fireball = instance_create_depth(x, y, (depth + 1), obj_ceroba_attack_fireball)
    ds_list_add(fireball_list, fireball)
    fireball.direction = i
    fireball.speed = bullet_speed
}
bullet_spawn_direction += bullet_spawn_direction_inc
image_xscale = 1.5
image_yscale = 1.5
alarm[0] = bullet_spawn_timer
