function cutscene_move_all(argument0, argument1, argument2, argument3, argument4, argument5, argument6) //gml_Script_cutscene_move_all
{
    if (argument0 == 0 && (!instance_exists(obj_camera)))
    {
        instance_create(__view_get((9 << 0), 0).x, __view_get((9 << 0), 0).y, obj_camera)
        __view_set((9 << 0), 0, 1119)
    }
    with (all)
    {
        if argument5
            x += argument1
        if argument6
            y += argument1
        if (argument0 == 0 && object_index == obj_camera)
        {
            x = xprevious
            y = yprevious
        }
    }
    for (var i = argument3; i <= argument4; i++)
    {
        if argument5
            tile_layer_shift(i, argument1, 0)
        if argument6
            tile_layer_shift(i, 0, argument1)
    }
    cutscene_timer += abs(argument1)
    if (cutscene_timer >= argument2)
    {
        cutscene_timer = 0
        cutscene_advance()
        return 1;
    }
}

