if (hit_flash == 1)
    shader_set(sh_flash)
if (surface_draw == 1)
    draw_on_surface()
else
    draw_self()
shader_reset()
