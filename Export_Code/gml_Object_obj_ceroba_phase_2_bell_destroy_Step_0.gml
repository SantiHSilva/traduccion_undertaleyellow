if live_call()
    return global.live_result;
if (destroy_noloop == 0)
{
    destroy_noloop = 1
    vspeed -= 2
    gravity = 0.25
}
image_alpha -= 0.1
if (image_alpha <= 0)
    instance_destroy()
image_angle -= 20
