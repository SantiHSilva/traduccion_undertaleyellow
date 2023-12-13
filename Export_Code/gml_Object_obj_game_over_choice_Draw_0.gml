draw_set_font(global.font_type_text)
draw_set_alpha(image_alpha)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
if retry_enabled
    draw_text(320, 280, string_hash_to_newline("Reiniciar"))
draw_text(320, 340, string_hash_to_newline("Continuar"))
if (menu_option_selected == 1)
{
    var heart_xx = ((320 - (string_width(string_hash_to_newline("Reiniciar")) * 0.5)) - 20)
    var heart_yy = 298
}
else if (menu_option_selected == 2)
{
    heart_xx = ((320 - (string_width(string_hash_to_newline("Continuar")) * 0.5)) - 20)
    heart_yy = 358
}
draw_sprite(spr_heart_yellow_down, 0, heart_xx, heart_yy)
draw_set_alpha(1)
draw_set_halign(fa_left)
