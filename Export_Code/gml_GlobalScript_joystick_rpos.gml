function joystick_rpos(argument0) //gml_Script_joystick_rpos
{
    var jid = __joystick_2_gamepad(argument0)
    return gamepad_axis_value(jid, 3);
}

