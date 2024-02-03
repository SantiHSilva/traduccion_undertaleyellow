if live_call()
    return global.live_result;
draw_set_alpha(mail_whale_shadow_alpha)
draw_sprite(spr_npc_shadow, 0, x, (mail_whale_y_target + 30))
draw_set_alpha(1)
draw_self()
if sprite_index == spr_mail_whale_basket_clover_yellow
    draw_sprite_ext(spr_mail_whale_basket_only_clover, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
