image_speed = 0
image_alpha = 0
effect_counter = (irandom_range(30, 45) * 30)
if (global.dunes_flag[53] > 0 || global.dunes_flag[41] < 4)
{
    instance_destroy()
    return;
}
if (global.fun_value >= 60 && global.fun_value <= 62)
    return;
instance_destroy()
