clover_fall = 0
if (obj_pl.y < 0)
{
    clover_fall = 1
    instance_create(obj_pl.x, obj_pl.y, obj_clover_fall)
}
