function scr_controls_battle_reticle() //gml_Script_scr_controls_battle_reticle
{
    if (outline > 0 && button_pressed == 0)
        key_select = keyboard_multicheck_pressed(0)
    else
        key_select = 0
}

