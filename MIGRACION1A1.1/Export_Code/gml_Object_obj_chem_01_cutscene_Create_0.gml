scene = 0
cutscene_timer = 0
if global.geno_complete[3]
{
    instance_create(x, y, obj_chem_01_cutscene_geno)
    instance_destroy()
    return;
}
if (global.sworks_flag[26] >= 1)
    instance_destroy()
if (global.sworks_flag[26] >= 2)
{
    instance_destroy(105300)
    instance_destroy(105299)
    layer_set_visible("door_visible", 0)
}
