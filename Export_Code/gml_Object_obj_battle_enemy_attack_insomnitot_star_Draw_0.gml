if (can_move == 1)
{
    var j = 2
    for (i = (ds_list_size(x_list) - 1); i >= 0; i -= 1)
    {
        var x0 = ds_list_find_value(x_list, i)
        var y0 = ds_list_find_value(y_list, i)
        var in_box_trail = ds_list_find_value(in_box_list, i)
        var image_alpha_trail = (1 / j)
        if (in_box_trail == 1)
        {
            var target = obj_dialogue_box_battle_transformation_any
            draw_sprite_clip_ext(trail_sprite, 0, x0, y0, 1, 1, c_white, image_alpha_trail, (target.bbox_left + 5), (target.bbox_top + 5), (target.sprite_width - 10), (target.sprite_height - 10))
        }
        else
            draw_sprite_ext(trail_sprite, 0, x0, y0, 1, 1, 0, c_white, image_alpha_trail)
        j += 1
    }
}
if (in_box == 1)
    script_execute(gml_Script_scr_battle_draw_inside_battle_box_ext)
else
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha)
