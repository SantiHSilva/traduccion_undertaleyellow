function joystick_vpos(argument0) //gml_Script_joystick_vpos
{
    var jid = __joystick_2_gamepad(argument0)
    return gamepad_axis_value(jid, 5);
}

