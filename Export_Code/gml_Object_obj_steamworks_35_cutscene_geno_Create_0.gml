scene = 0
cutscene_timer = 0
cutscene_music = 0
if (global.geno_complete[3] == 0)
{
    instance_destroy()
    return;
}
else if (global.geno_complete[4] == 0)
    obj_axis_npc.action_sprite = 0
obj_axis_npc.left_sprite = 3415
obj_axis_npc.left_sprite_idle = 3415
obj_axis_npc.right_sprite = 383
obj_axis_npc.down_sprite_idle = 2749
obj_axis_npc.up_sprite = 2592
if (global.sworks_flag[31] == 1)
{
    instance_create(0, 0, obj_steamworks_35_cutscene_geno_outro_alt)
    instance_destroy()
    return;
}
else if (global.sworks_flag[31] == 2)
{
    instance_destroy(obj_axis_npc)
    instance_destroy()
    return;
}
else if (global.sworks_flag[31] >= 3)
{
    if (global.route == 3)
    {
        obj_axis_npc.action_sprite = 1
        obj_axis_npc.sprite_index = spr_axis_down_dead
        obj_axis_npc.image_speed = 0
        instance_create(0, 0, obj_steamworks_35_cutscene_geno_outro)
    }
    else
    {
        obj_axis_npc.action_sprite = 1
        obj_axis_npc.sprite_index = spr_axis_down_dead_regular
        obj_axis_npc.image_speed = 0
    }
    instance_destroy()
    return;
}
