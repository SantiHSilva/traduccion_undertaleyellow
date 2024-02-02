function joystick_exists(argument0) //gml_Script_joystick_exists
{
    var jid = __joystick_2_gamepad(argument0)
    return gamepad_is_connected(jid);
}

