function joystick_upos(argument0) //gml_Script_joystick_upos
{
    var jid = __joystick_2_gamepad(argument0)
    return gamepad_axis_value(jid, 4);
}

