draw_sprite(logo_yellow, image_index, x, y)
if (appear == 1)
{
    draw_set_font(fnt_main)
    draw_set_color(c_gray)
    draw_text_transformed((__view_get((0 << 0), 0) + 160), 400, string_hash_to_newline("[ Presiona Z o ENTER ]"), 2, 2, 0)
}
