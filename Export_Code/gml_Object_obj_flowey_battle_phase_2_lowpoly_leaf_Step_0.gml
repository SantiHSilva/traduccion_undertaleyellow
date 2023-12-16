if live_call()
    return global.live_result;
if (hp_self <= 0 && destroy_self == 0)
{
    vspeed -= 4
    gravity = 0.35
    if (x > 240)
        hspeed = 4
    else
        hspeed = -4
    destroy_self = 1
}
if (destroy_self == 1)
{
    image_alpha -= 0.05
    if (image_alpha <= 0)
        instance_destroy()
    return;
}
event_inherited()
image_index = obj_flowey_battle_final.image_index
