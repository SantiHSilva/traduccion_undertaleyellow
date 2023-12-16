function scr_controls_battle_main() //gml_Script_scr_controls_battle_main
{
    if (image_alpha == 0)
    {
        moveable = 0
        no_loop_moveable = 0
    }
    if (image_alpha == 1 && no_loop_moveable == 0)
    {
        alarm[0] = 2
        no_loop_moveable = 1
    }
    if (image_alpha == 1)
    {
        key_right = global.right_keyp
        key_left = global.left_keyp
    }
    else
    {
        key_right = 0
        key_left = 0
    }
    if (image_alpha == 1 && moveable == 1)
        key_select = keyboard_multicheck_pressed(0)
    else
        key_select = 0
}

