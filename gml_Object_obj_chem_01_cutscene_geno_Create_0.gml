scene = 0
cutscene_timer = 0
if (global.sworks_flag[26] >= 2)
{
    instance_destroy(105300)
    instance_destroy(105299)
    layer_set_visible("door_visible", 0)
    instance_destroy()
    return;
}
instance_create_depth(120, 140, 0, obj_axis_npc)
obj_axis_npc.npc_direction = "up"
