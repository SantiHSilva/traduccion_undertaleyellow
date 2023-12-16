function joystick_name(argument0) //gml_Script_joystick_name
{
    var jid = __joystick_2_gamepad(argument0)
    return gamepad_get_description(jid);
}

