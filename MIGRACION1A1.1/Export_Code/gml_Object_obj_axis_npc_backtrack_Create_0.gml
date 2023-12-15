if (global.sworks_flag[31] == 0 || global.sworks_flag[31] > 2 || global.geno_complete[3] == 1)
{
    instance_destroy()
    return;
}
event_inherited()
instance_create(x, y, obj_axis_npc)
image_alpha = 0
scene = 0
cutscene_timer = 0
