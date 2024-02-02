draw_set_alpha((0.6 * overlay_alpha))
draw_set_color(c_black)
draw_rectangle(__view_get((0 << 0), 0), __view_get((1 << 0), 0), (__view_get((0 << 0), 0) + __view_get((2 << 0), 0)), (__view_get((1 << 0), 0) + __view_get((3 << 0), 0)), false)
draw_set_alpha(1)
