function scr_controls_battle_mercy() //gml_Script_scr_controls_battle_mercy
{
    if (moveable == 1)
    {
        key_right = global.right_keyp
        key_left = global.left_keyp
        key_down = global.down_keyp
        key_up = global.up_keyp
        key_select = keyboard_multicheck_pressed(0)
        key_revert = keyboard_multicheck_pressed(1)
    }
    else
    {
        key_down = 0
        key_up = 0
        key_select = 0
        key_revert = 0
    }
}

