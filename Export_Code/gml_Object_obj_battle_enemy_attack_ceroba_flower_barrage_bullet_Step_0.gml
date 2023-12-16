if (!instance_exists(obj_heart_battle_fighting_parent))
    instance_destroy()
x = (attack_target_x + lengthdir_x(attack_distance, attack_dir))
y = (attack_target_y + lengthdir_y(attack_distance, attack_dir))
if (image_alpha < 1 && can_move == 0)
{
    image_alpha += 0.25
    if (image_alpha >= 1)
    {
        image_alpha = 1
        can_move = 1
    }
}
if (can_move == 1)
{
    if (attack_dir < 360)
        attack_dir += bullet_speed
    else
        attack_dir = bullet_speed
    bullet_speed = lerp(bullet_speed, bullet_speed_max, 0.5)
    homing_speed = lerp(homing_speed, homing_speed_max, 0.4)
    if (attack_distance > 0)
        attack_distance -= homing_speed
    else
        instance_destroy()
}
