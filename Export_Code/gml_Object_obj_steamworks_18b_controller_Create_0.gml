scene = 0
cutscene_timer = 0
cutscene_music = 0
if (global.route == 3)
{
    with (obj_steamworks_mo_stand)
        instance_destroy()
    with (obj_steamworks_mo_stand_sign)
        instance_destroy()
    instance_create(0, 0, obj_steamworks_18b_controller_geno)
    instance_destroy()
    return;
}
if (global.sworks_flag[10] == 1)
{
    with (obj_steamworks_mo)
    {
        x = 210
        y = 135
        up_sprite = 1381
        right_sprite = 1371
        down_sprite = 1369
        left_sprite = 1370
        up_sprite_idle = 1381
        right_sprite_idle = 1371
        down_sprite_idle = 1369
        left_sprite_idle = 1370
        action_sprite = 0
    }
    with (obj_steamworks_mo_stand)
    {
        x = 210
        image_index = (image_number - 1)
    }
    with (obj_steamworks_mo_stand_sign)
    {
        x = (obj_steamworks_mo_stand.x - 15)
        y = (obj_steamworks_mo_stand.y + 25)
        image_index = (image_number - 1)
    }
    scene = 48
}
if (global.sworks_flag[10] == 2)
{
    with (obj_steamworks_mo)
        instance_destroy()
    with (obj_steamworks_mo_stand)
    {
        x = 210
        image_index = (image_number - 1)
    }
    with (obj_steamworks_mo_stand_sign)
    {
        x = (obj_steamworks_mo_stand.x - 15)
        y = (obj_steamworks_mo_stand.y + 25)
        image_index = (image_number - 1)
        depth = 10000
    }
    instance_destroy()
}
