if (edit == 0)
{
    virtual_key_z = virtual_key_add(zx, zy, (27 * button_scale), (29 * button_scale), 90)
    virtual_key_x = virtual_key_add(xx, xy, (27 * button_scale), (29 * button_scale), 88)
    virtual_key_c = virtual_key_add(cx, cy, (27 * button_scale), (29 * button_scale), 67)
    virtual_key_up = virtual_key_add((analog_posx - (arrowkeys_back_area_size * analog_scale)), (analog_posy - (arrowkeys_back_area_size * analog_scale)), ((arrowkeys_back_area_size * analog_scale) + ((59 * analog_scale) + (arrowkeys_back_area_size * analog_scale))), ((arrowkeys_area_size * analog_scale) + (arrowkeys_back_area_size * analog_scale)), 38)
    virtual_key_right = virtual_key_add(((analog_posx + (59 * analog_scale)) - (arrowkeys_area_size * analog_scale)), (analog_posy - (arrowkeys_back_area_size * analog_scale)), ((arrowkeys_area_size * analog_scale) + (arrowkeys_back_area_size * analog_scale)), (((arrowkeys_back_area_size * analog_scale) + (59 * analog_scale)) + (arrowkeys_back_area_size * analog_scale)), 39)
    virtual_key_left = virtual_key_add((analog_posx - (arrowkeys_back_area_size * analog_scale)), (analog_posy - (arrowkeys_back_area_size * analog_scale)), ((arrowkeys_area_size * analog_scale) + (arrowkeys_back_area_size * analog_scale)), ((arrowkeys_back_area_size * analog_scale) + ((59 * analog_scale) + (arrowkeys_back_area_size * analog_scale))), 37)
    virtual_key_down = virtual_key_add((analog_posx - (arrowkeys_back_area_size * analog_scale)), ((analog_posy + (59 * analog_scale)) - (arrowkeys_area_size * analog_scale)), (((arrowkeys_back_area_size * analog_scale) + (59 * analog_scale)) + (arrowkeys_back_area_size * analog_scale)), ((arrowkeys_area_size * analog_scale) + (arrowkeys_back_area_size * analog_scale)), 40)
    virtual_key_analog = virtual_key_add((analog_posx - (arrowkeys_back_area_size * analog_scale)), (analog_posy - (arrowkeys_back_area_size * analog_scale)), (((59 + arrowkeys_back_area_size) * analog_scale) + (arrowkeys_back_area_size * analog_scale)), (((59 + arrowkeys_back_area_size) * analog_scale) + (arrowkeys_back_area_size * analog_scale)), 126)
}
