function joystick_buttons(argument0) //gml_Script_joystick_buttons
{
    var jid = __joystick_2_gamepad(argument0)
    return gamepad_button_count(jid);
}

