if (in_box == 0)
    script_execute(gml_Script_scr_battle_draw_inside_battle_box)
else
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
