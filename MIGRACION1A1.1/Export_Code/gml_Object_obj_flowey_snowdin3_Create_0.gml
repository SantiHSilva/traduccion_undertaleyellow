script_execute(gml_Script_scr_depth, 0, 0, 0, 0, 0)
if (global.snowdin_flag[0] == 0)
{
    image_speed = 0.2
    waiter = 0
    obj_pl.state = gml_Script_scr_frozen_state
}
timer = -1
choice = 0
