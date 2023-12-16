scene = 0
cutscene_timer = 0
if global.geno_complete[3]
{
    instance_create(x, y, obj_chem_05_cutscene_geno)
    instance_destroy()
    return;
}
if (global.sworks_flag[25] >= 1)
    instance_destroy()
