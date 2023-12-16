event_inherited()
if (npc_flag >= 3 || global.geno_complete[3] == 1 || global.geno_complete[2] == 1)
{
    instance_destroy()
    instance_destroy(obj_swing_interact)
}
