function scr_screenshake(argument0, argument1) //gml_Script_scr_screenshake
{
    if instance_exists(obj_screenshake_player)
        return;
    with (instance_create(__view_get((9 << 0), 0).x, __view_get((9 << 0), 0).y, obj_screenshake_player))
    {
        alarm[0] = argument0
        intensity = argument1
    }
}

