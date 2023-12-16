if (room == rm_darkruins_14b)
{
    if (global.flag[18] > 0)
    {
        instance_destroy()
        return;
    }
}
if (!instance_exists(obj_pl))
{
}
x = obj_pl.x
y = obj_pl.y
if (fadeout == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.05
}
