function joystick_axes(argument0) //gml_Script_joystick_axes
{
    var jid = __joystick_2_gamepad(argument0)
    return gamepad_axis_count(jid);
}

