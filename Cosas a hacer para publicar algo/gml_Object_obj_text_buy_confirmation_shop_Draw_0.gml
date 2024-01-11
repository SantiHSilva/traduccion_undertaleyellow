var buy_shop_screen_number = global.buy_shop_screen_number
draw_set_font(fnt_battle)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text((obj_main_screen_shop.x + 220), (obj_main_screen_shop.y + 10), string_hash_to_newline((("¿Comprarlo por#" + string(global.shop_gold_requirement[buy_shop_screen_number])) + " de ORO?")))
draw_text((obj_main_screen_shop.x + 240), (obj_main_screen_shop.y + 50), string_hash_to_newline("Sí"))
draw_text((obj_main_screen_shop.x + 240), (obj_main_screen_shop.y + 65), string_hash_to_newline("No"))
