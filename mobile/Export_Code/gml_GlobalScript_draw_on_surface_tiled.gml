function draw_on_surface_tiled() //gml_Script_draw_on_surface_tiled
{
    if (!surface_exists(global.attack_surface))
    {
        draw_self()
        return;
    }
    surface_set_target(global.attack_surface)
    draw_sprite_tiled(sprite_index, image_index, (x - x_offset), (y - y_offset))
    surface_reset_target()
}

