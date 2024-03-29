scr_get_input()
if keyboard_check_pressed(vk_f3)
{
    global.bordemode = (!global.bordemode)
    if window_get_fullscreen()
    {
        if global.bordemode
        {
            if (!instance_exists(obj_bordeParche))
                instance_create(0, 0, obj_bordeParche)
        }
        else if instance_exists(obj_bordeParche)
            instance_destroy(obj_bordeParche)
    }
    scr_savecontrols()
}
if (keyboard_check_pressed(vk_f4) || (keyboard_check(vk_alt) && keyboard_check_pressed(vk_return)))
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false)
        window_set_size(global.windowW, global.windowH)
        if instance_exists(obj_bordeParche)
            instance_destroy(obj_bordeParche)
        display_set_gui_size(320, 240)
    }
    else
    {
        global.windowH = window_get_height()
        global.windowW = window_get_width()
        if ((!instance_exists(obj_bordeParche)) && global.bordemode)
            instance_create(0, 0, obj_bordeParche)
        window_set_fullscreen(true)
    }
}
if keyboard_check_pressed(vk_escape)
    instance_create((__view_get((0 << 0), 0) + 50), (__view_get((1 << 0), 0) + 10), obj_quitting)
if (os_type == os_android)
{
    if (!instance_exists(obj_mobilecontrols))
        instance_create(0, 0, obj_mobilecontrols)
    instance_activate_object(obj_mobilecontrols)
}

if keyboard_check(ord(global.pause_key)) && (variable_global_exists("dialogue_open") && global.dialogue_open) {
    keyboard_key_press(ord(global.cancel_key))
    keyboard_key_press(ord(global.action_key))

    // Despresionar las teclas
    keyboard_key_release(ord(global.cancel_key))
    with(obj_dialogue){ // esto no funciona, el choice no se actualiza
        show_message(string(choice))
        if choice == 0{
            keyboard_key_release(ord(global.action_key))
        }
    }
}