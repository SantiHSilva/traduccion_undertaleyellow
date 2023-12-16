scene = 0
timer = 0
cutscene_timer = 0
if (global.sworks_flag[10] > 0)
{
    instance_destroy(obj_dunes_08b_mo)
    instance_destroy(obj_dunes_08b_dispenser)
    instance_destroy(obj_dunes_08b_stand)
    instance_destroy()
    return;
}
if (global.route == 3)
    instance_destroy(obj_dunes_08b_dispenser)
if (global.dunes_flag[3] == 1)
{
    var mo = instance_create(205, 230, obj_dunes_08b_mo)
    instance_create(200, 240, obj_dunes_08b_stand)
    instance_destroy(obj_dunes_08b_dispenser)
    with (mo)
    {
        can_walk = 0
        npc_direction = "down"
        up_sprite = 958
        right_sprite = 960
        down_sprite = 962
        left_sprite = 961
        up_sprite_idle = 964
        right_sprite_idle = 960
        down_sprite_idle = 963
        left_sprite_idle = 961
    }
}
if (global.dunes_flag[3] == 2)
{
    instance_destroy(obj_dunes_08b_mo)
    instance_destroy(obj_dunes_08b_dispenser)
    instance_destroy(obj_dunes_08b_stand)
    instance_destroy()
}
