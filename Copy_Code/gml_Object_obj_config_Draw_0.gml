if live_call()
    return global.live_result;
draw_set_color(c_white)
draw_set_font(fnt_mainb)
draw_set_halign(fa_center)
draw_text((__view_get((0 << 0), 0) + 200), (__view_get((1 << 0), 0) + 13), string_hash_to_newline("CONFIG. DEL JUEGO"))
draw_set_font(fnt_battle)
draw_set_halign(fa_left)
var xx = (__view_get((0 << 0), 0) + 20)
if (position == 0)
    draw_set_color(c_yellow)
draw_text(xx, (__view_get((1 << 0), 0) + 44), string_hash_to_newline("Volver"))
draw_set_color(c_white)
draw_text(xx, (__view_get((1 << 0), 0) + 110), string_hash_to_newline("ACCESIBILIDAD"))
if (position == 2)
    draw_set_color(c_yellow)
draw_text(xx, (__view_get((1 << 0), 0) + 130), string_hash_to_newline("Agitar al hacerse daño"))
draw_set_color(c_white)
if (position == 3)
    draw_set_color(c_yellow)
draw_text(xx, (__view_get((1 << 0), 0) + 145), string_hash_to_newline("Permitir siempre reintento:"))
draw_set_color(c_white)
if (position == 4)
    draw_set_color(c_yellow)
draw_text(xx, (__view_get((1 << 0), 0) + 160), string_hash_to_newline("AUTO-CORRER:"))
draw_set_color(c_white)
if (position == 5)
    draw_set_color(c_yellow)
draw_text(xx, (__view_get((1 << 0), 0) + 175), string_hash_to_newline("AUTO-DISPARAR mantener (C):"))
draw_set_color(c_white)
if (position == 1)
    draw_set_color(c_yellow)
draw_text(xx, (__view_get((1 << 0), 0) + 79), string_hash_to_newline("Configuración del Joystick"))
draw_set_color(c_white)
draw_set_color(c_white)
var option = ""
if global.option_screenshake_toggle
    option = "SI"
else
    option = "NO"
draw_text((xx + 180), (__view_get((1 << 0), 0) + 130), string_hash_to_newline(option))
if global.option_retry_toggle
    option = "SI"
else
    option = "NO"
draw_text((xx + 180), (__view_get((1 << 0), 0) + 145), string_hash_to_newline(option))
if global.option_autorun
    option = "SI"
else
    option = "NO"
draw_text((xx + 180), (__view_get((1 << 0), 0) + 160), string_hash_to_newline(option))
if global.option_autoshoot
    option = "SI"
else
    option = "NO"
draw_text((xx + 180), (__view_get((1 << 0), 0) + 175), string_hash_to_newline(option))
