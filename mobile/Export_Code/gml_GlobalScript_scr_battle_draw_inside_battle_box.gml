function scr_battle_draw_inside_battle_box() //gml_Script_scr_battle_draw_inside_battle_box
{
    var target = obj_dialogue_box_battle_transformation_any
    var return_value = draw_sprite_clip(sprite_index, image_index, x, y, (target.bbox_left + 5), (target.bbox_top + 5), (target.sprite_width - 10), (target.sprite_height - 10))
    if (return_value == 1)
        return 1;
    else
        return 0;
}

