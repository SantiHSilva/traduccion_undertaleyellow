if (!indicator_on)
{
    indicator_on = 1
    flash_count -= 1
    with (obj_factory_02_conveyor_indicator)
        sprite_index = spr_conveyor_indicator_green
}
else
{
    indicator_on = 0
    with (obj_factory_02_conveyor_indicator)
        sprite_index = spr_conveyor_indicator_idle
}
if (flash_count <= 0)
{
    obj_factory_02_controller_02.scene += 1
    instance_destroy()
}
else
    alarm[0] = 10
