if (global.sworks_flag[9] == 1)
{
    instance_destroy()
    return;
}
if (room < rm_steamworks_06 && instance_number(obj_steamworks_17b_controller) > 1)
{
    instance_destroy()
    return;
}
scene = 0
cutscene_timer = 0
