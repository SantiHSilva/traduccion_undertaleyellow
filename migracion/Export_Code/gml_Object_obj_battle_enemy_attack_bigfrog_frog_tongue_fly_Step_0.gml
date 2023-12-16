if live_call()
    return global.live_result;
var collider = instance_place(x, y, obj_battle_enemy_attack_bigfrog_frog_tongue_tip)
if (is_caught == 0 && collider != noone)
{
    tongue_parent = collider
    is_caught = 1
}
if (tongue_parent != noone)
{
    if instance_exists(tongue_parent)
    {
        x = tongue_parent.x
        y = tongue_parent.y
    }
    else
        instance_destroy()
}
x_offset = random_range((-jitter), jitter)
x_normal += hsp
x = (x_normal + x_offset)
y_offset = random_range((-jitter), jitter)
y = (ystart + y_offset)
