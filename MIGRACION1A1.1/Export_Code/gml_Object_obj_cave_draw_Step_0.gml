__view_set((0 << 0), 0, 0)
__view_set((1 << 0), 0, 0)
if (can_scroll == 0)
{
    scroll_speed = 0
    return;
}
tile_layer_shift(1000000, scroll_speed, 0)
cave_end_x += scroll_speed
if (!alarm[0])
{
    __view_set((0 << 0), 0, (__view_get((0 << 0), 0) + irandom_range(-1, 1)))
    __view_set((1 << 0), 0, (__view_get((1 << 0), 0) + irandom_range(-1, 1)))
}
if (alarm[0] > 0)
    obj_aviator_waterfall_overworld_yellow.x += scroll_speed
