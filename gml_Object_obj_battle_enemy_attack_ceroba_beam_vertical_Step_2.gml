if (screenshake == 1)
{
    __view_set((0 << 0), 0, 0)
    __view_set((1 << 0), 0, 0)
    __view_set((0 << 0), 0, (__view_get((0 << 0), 0) + choose((-screenshake_max), screenshake_max)))
    __view_set((1 << 0), 0, (__view_get((1 << 0), 0) + choose((-screenshake_max), screenshake_max)))
    screenshake_max -= 1
}
if (screenshake_max <= 0 && image_index >= (image_number - 1))
{
    __view_set((0 << 0), 0, 0)
    __view_set((1 << 0), 0, 0)
    screenshake = 0
}
