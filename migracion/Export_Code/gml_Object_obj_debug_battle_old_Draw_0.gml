draw_set_font(global.font_type_ui)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
if (global.debug_toggle == 1)
    draw_text((__view_get((0 << 0), 0) + 10), (__view_get((1 << 0), 0) + 10), string_hash_to_newline(((("DEBUG MODE:#TOGGLE: 0: ON#FPS: " + string(fps)) + "#FPS REAL: ") + string(fps_real))))
else
    draw_text((__view_get((0 << 0), 0) + 10), (__view_get((1 << 0), 0) + 10), string_hash_to_newline("DEBUG MODE:#TOGGLE: 0: OFF"))