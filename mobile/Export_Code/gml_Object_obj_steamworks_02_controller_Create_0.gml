if (global.sworks_flag[0] > 0 || global.route != 2)
{
    instance_destroy()
    return;
}
scene = 0
instance_create(570, 220, obj_ceroba_npc)
