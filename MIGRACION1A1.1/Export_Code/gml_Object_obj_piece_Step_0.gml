if (alpha >= 0 && disappear == 1)
    alpha -= 0.05
if (alarm[0] < 0.5)
{
    hspeed = random_range(-1, 1)
    vspeed = -2
    disappear = 1
}
if (alpha <= 0)
    instance_destroy()
