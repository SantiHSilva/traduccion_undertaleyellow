function keyboard_multicheck_pressed(argument0) //gml_Script_keyboard_multicheck_pressed
{
    if (argument0 == 0 || argument0 == 13)
    {
        if (keyboard_check_pressed(vk_return) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("Y")) || gamepad_button_check_pressed(0, global.button1) || gamepad_button_check_pressed(0, gp_shoulderr))
            return 1;
    }
    if (argument0 == 1 || argument0 == 16)
    {
        if (keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, global.button2) || gamepad_button_check_pressed(0, gp_shoulderl))
            return 1;
    }
    if (argument0 == 2 || argument0 == 17)
    {
        if (keyboard_check_pressed(vk_control) || keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0, global.button3))
            return 1;
    }
    return 0;
}
