__view_set((0 << 0), 0, x_orig)
__view_set((1 << 0), 0, y_orig)
if scr_timer()
{
    __view_set((9 << 0), 0, view_object_original)
    instance_destroy()
}
__view_set((0 << 0), 0, (__view_get((0 << 0), 0) + irandom_range((-intensity), intensity)))
__view_set((1 << 0), 0, (__view_get((1 << 0), 0) + irandom_range((-intensity), intensity)))
