if (global.geno_complete[3] == 1)
{
    instance_destroy()
    return;
}
if (global.sworks_flag[12] != 1)
{
    instance_destroy()
    return;
}
instance_destroy(obj_steamworks_flash)
instance_destroy(obj_determination)
instance_create(210, 110, obj_axis_npc)
obj_pl.direction = 0
scene = 0
cutscene_timer = 0