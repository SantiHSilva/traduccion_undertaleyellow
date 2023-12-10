scr_get_input()
if (keyboard_check_pressed(vk_f4) || (keyboard_check(vk_alt) && keyboard_check_pressed(vk_return)))
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false)
        display_set_gui_size(320, 240)
    }
    else
        window_set_fullscreen(true)
}
if keyboard_check_pressed(vk_escape)
    instance_create((__view_get((0 << 0), 0) + 50), (__view_get((1 << 0), 0) + 10), obj_quitting)
