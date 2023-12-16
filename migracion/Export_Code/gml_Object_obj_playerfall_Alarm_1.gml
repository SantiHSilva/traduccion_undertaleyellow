__view_set((0 << 0), 0, xview_orig)
__view_set((1 << 0), 0, yview_orig)
__view_set((0 << 0), 0, (__view_get((0 << 0), 0) + irandom_range(-2, 2)))
__view_set((1 << 0), 0, (__view_get((1 << 0), 0) + irandom_range(-2, 2)))
if (shake == 1)
    alarm[1] = 1
