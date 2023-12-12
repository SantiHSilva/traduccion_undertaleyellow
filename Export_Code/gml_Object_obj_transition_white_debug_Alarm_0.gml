alarm[0] = fadespeed
if (fadein == 0)
    fadealpha += 0.007
if (fadein == 1)
{
    fadealpha -= 0.1
    if (fadealpha <= 0)
    {
        instance_destroy()
        if (instance_exists(obj_pl) && global.route != 2)
            obj_pl.alarm[0] = 5
    }
}
