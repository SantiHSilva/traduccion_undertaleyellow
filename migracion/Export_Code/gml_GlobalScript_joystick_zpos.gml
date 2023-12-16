function joystick_zpos(argument0) //gml_Script_joystick_zpos
{
    var jid = __joystick_2_gamepad(argument0)
    return gamepad_axis_value(jid, 2);
}

