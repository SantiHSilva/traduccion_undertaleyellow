if instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_lead)
{
    if (obj_battle_enemy_attack_trihecta_circle_stack_lead.started == 1)
    {
        var j = 2
        for (i = (ds_list_size(x_list) - 1); i >= 0; i -= 1)
        {
            var x0 = ds_list_find_value(x_list, i)
            var y0 = ds_list_find_value(y_list, i)
            var image_alpha_trail = (1 / j)
            draw_sprite_ext(trail_sprite, 0, x0, y0, 1, 1, 0, c_white, image_alpha_trail)
            j += 1
        }
    }
}
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha)
