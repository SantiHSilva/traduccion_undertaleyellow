draw_set_font(fnt_battle)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
i = 1
while (i < array_length_1d(global.item_slot))
{
    if (global.item_slot[i] == "Nothing")
    {
        if (i == 1)
            draw_text((obj_talk_screen_shop.x + 30), ((obj_talk_screen_shop.y + 10) + ((i - 1) * 20)), string_hash_to_newline("Inventario Vacío"))
        break
    }
    else
    {
        var item_price = scr_determine_sell_price_shop(global.item_slot[i])
        var item_name = obtenerItemSpanish(string(global.item_slot[i]))
        if (item_name == "Dihydrogen Monoxide")
            item_name = "H2O"
        else if (item_name == "Friendliness Pellets")
            item_name = "P. Amistad"
        variablenormal = i > 640
        variablenormal2 = i > 16
        draw_text(((obj_talk_screen_shop.x + 30) + variablenormal), ((obj_talk_screen_shop.y + 10) + (((i - 1) - (variablenormal2)) * 20)), string_hash_to_newline((((item_name + " - ") + string(item_price)) + " ORO")))
        i += 1
        continue
    }
}
draw_text((obj_talk_screen_shop.x + 30), (obj_talk_screen_shop.y + 90), string_hash_to_newline("Volver"))
