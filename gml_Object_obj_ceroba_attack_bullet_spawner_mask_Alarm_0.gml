if live_call()
    return global.live_result;
var bullet_number = 6
var bullet_spawn_timer = 12
var bullet_speed = 4
if (global.hotland_flag[2] >= 3)
{
    bullet_number = 5
    bullet_spawn_timer = 16
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
