function scr_controls_battle_fight() //gml_Script_scr_controls_battle_fight
{
    key_down = global.down_keyp
    key_up = global.up_keyp
    key_select = keyboard_multicheck_pressed(0)
    key_revert = keyboard_multicheck_pressed(1)
}
