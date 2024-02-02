if keyboard_check(ord("~"))
{
    if (device_mouse_y_to_gui(0) >= analog_posy && device_mouse_y_to_gui(0) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(0) >= analog_posx && device_mouse_x_to_gui(0) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(0, mb_left))
        analog_center_x = (device_mouse_x_to_gui(0) - (21 * analog_scale))
    if (device_mouse_y_to_gui(0) >= analog_posy && device_mouse_y_to_gui(0) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(0) >= analog_posx && device_mouse_x_to_gui(0) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(0, mb_left))
        analog_center_y = (device_mouse_y_to_gui(0) - (21 * analog_scale))
    if (device_mouse_y_to_gui(1) >= analog_posy && device_mouse_y_to_gui(1) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(1) >= analog_posx && device_mouse_x_to_gui(1) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(1, mb_left))
        analog_center_x = (device_mouse_x_to_gui(1) - (21 * analog_scale))
    if (device_mouse_y_to_gui(1) >= analog_posy && device_mouse_y_to_gui(1) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(1) >= analog_posx && device_mouse_x_to_gui(1) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(1, mb_left))
        analog_center_y = (device_mouse_y_to_gui(1) - (21 * analog_scale))
    if (device_mouse_y_to_gui(2) >= analog_posy && device_mouse_y_to_gui(2) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(2) >= analog_posx && device_mouse_x_to_gui(2) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(2, mb_left))
        analog_center_x = (device_mouse_x_to_gui(2) - (21 * analog_scale))
    if (device_mouse_y_to_gui(2) >= analog_posy && device_mouse_y_to_gui(2) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(2) >= analog_posx && device_mouse_x_to_gui(2) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(2, mb_left))
        analog_center_y = (device_mouse_y_to_gui(2) - (21 * analog_scale))
    if (device_mouse_y_to_gui(3) >= analog_posy && device_mouse_y_to_gui(3) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(3) >= analog_posx && device_mouse_x_to_gui(3) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(3, mb_left))
        analog_center_x = (device_mouse_x_to_gui(3) - (21 * analog_scale))
    if (device_mouse_y_to_gui(3) >= analog_posy && device_mouse_y_to_gui(3) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(3) >= analog_posx && device_mouse_x_to_gui(3) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(3, mb_left))
        analog_center_y = (device_mouse_y_to_gui(3) - (21 * analog_scale))
    if (device_mouse_y_to_gui(4) >= analog_posy && device_mouse_y_to_gui(4) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(3) >= analog_posx && device_mouse_x_to_gui(4) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(4, mb_left))
        analog_center_x = (device_mouse_x_to_gui(4) - (21 * analog_scale))
    if (device_mouse_y_to_gui(4) >= analog_posy && device_mouse_y_to_gui(4) <= (analog_posy + (59 * analog_scale)) && device_mouse_x_to_gui(3) >= analog_posx && device_mouse_x_to_gui(4) <= (analog_posx + (59 * analog_scale)) && device_mouse_check_button(4, mb_left))
        analog_center_y = (device_mouse_y_to_gui(4) - (21 * analog_scale))
}
else
{
    analog_center_x = (analog_posx + (((59 * analog_scale) / 2) - ((41 * analog_scale) / 2)))
    analog_center_y = (analog_posy + (((59 * analog_scale) / 2) - ((41 * analog_scale) / 2)))
}
depth = -99999
