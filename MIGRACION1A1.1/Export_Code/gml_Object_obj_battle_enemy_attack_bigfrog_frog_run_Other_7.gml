if live_call()
    return global.live_result;
if (tongue_attack == 1)
{
    with (obj_battle_enemy_attack_bigfrog_frog_run)
    {
        if (tongue_attack == 0 && sprite_index != spr_bigfrog_mouth_attack)
        {
            image_speed = 0
            image_index = 0
        }
    }
    tongue_attack = 0
    if (sprite_index != spr_bigfrog_mouth_attack)
    {
        sprite_index = spr_bigfrog_mouth_attack
        image_index = 0
        image_speed = 1
        var tongue = instance_create_depth((x + (9 * image_xscale)), (y - (9 * image_yscale)), (depth + 1), obj_battle_enemy_attack_bigfrog_frog_tongue)
        tongue.direction = random_range(30, 60)
        tongue.spawner = id
        if (image_xscale == -1)
            tongue.direction += 180
    }
}
if (sprite_index == spr_bigfrog_mouth_attack)
{
    image_speed = 0
    image_index = (image_number - 1)
}
