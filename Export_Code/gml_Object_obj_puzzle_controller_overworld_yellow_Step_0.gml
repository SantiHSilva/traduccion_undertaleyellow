if (global.snowdin_flag[2] == 2)
{
}
if (camera_end == 1)
{
    if (scr_camera_move(obj_pl.x, obj_pl.y, 2) == 1)
        active = 2
}
if (active == 2)
{
    active = false
    camera_end = 0
    global.cutscene = false
    obj_pl.alarm[0] = 5
    __view_set((9 << 0), 0, 1031)
    obj_snowdin06_lever_overworld_yellow.waiter = 0
    if (global.snowdin_flag[2] < 2)
        instance_create(230, 110, obj_molten_rock_overworld_yellow)
}
