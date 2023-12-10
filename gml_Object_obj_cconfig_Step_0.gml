if (keyboard_multicheck_pressed(0) && control_test == 0)
{
    if (binding == 0)
        audio_play_sound(snd_confirm, 1, false)
    if (p[0] == 1)
        room_goto(rm_config)
    if (p[1] == 1 || p[2] == 1 || p[3] == 1)
        binding = 1
    if (p[5] == 1)
    {
        global.buttonText1 = "1(A)"
        global.buttonText2 = "2(B)"
        global.buttonText3 = "4(Y)"
        global.button1 = gp_face1
        global.button2 = gp_face2
        global.button3 = gp_face4
        global.gamepad_deadzone = 0.15
    }
    if (p[6] == 1)
    {
        control_test = 1
        instance_create(160, 160, obj_testcircle)
    }
}
if (binding == 0 && control_test == 0)
{
    if global.down_keyp
    {
        audio_play_sound(snd_mainmenu_select, 1, false)
        var n = 0
        while (n <= 6)
        {
            if (p[n] == 1 && n < 6)
            {
                p[n] = 0
                p[(n + 1)] = 1
                break
            }
            else
            {
                n++
                continue
            }
        }
    }
    if global.up_keyp
    {
        audio_play_sound(snd_mainmenu_select, 1, false)
        n = 0
        while (n <= 6)
        {
            if (p[n] == 1 && n > 0)
            {
                p[n] = 0
                p[(n - 1)] = 1
                break
            }
            else
            {
                n++
                continue
            }
        }
    }
    if (p[4] == 1)
    {
        if (global.left_key && global.gamepad_deadzone > 0.01)
            global.gamepad_deadzone -= 0.01
        if (global.right_key && global.gamepad_deadzone < 0.99)
            global.gamepad_deadzone += 0.01
    }
}
gamepad_get_device_count()
if ((!gamepad_is_connected(0)) || gamepad_is_supported() == 0)
{
    binding = 0
    return;
}
if (keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X")))
{
    binding = 0
    waiter = 0
    if (p[1] == 1)
        global.buttonText1 = lastText
    else if (p[2] == 1)
        global.buttonText2 = lastText
    else if (p[3] == 1)
        global.buttonText3 = lastText
}
if (binding == 1 && waiter == 1)
{
    if gamepad_button_check_pressed(0, gp_face1)
    {
        var pressedText = "1(A)"
        var pressedButton = gp_face1
        waiter = 2
    }
    else if gamepad_button_check_pressed(0, gp_face2)
    {
        pressedText = "2(B)"
        pressedButton = gp_face2
        waiter = 2
    }
    else if gamepad_button_check_pressed(0, gp_face3)
    {
        pressedText = "3(X)"
        pressedButton = gp_face3
        waiter = 2
    }
    else if gamepad_button_check_pressed(0, gp_face4)
    {
        pressedText = "4(Y)"
        pressedButton = gp_face4
        waiter = 2
    }
}
if (binding == 1 && waiter == 2)
{
    if (p[1] == 1)
    {
        if (pressedButton == global.button2)
        {
            global.button2 = global.button1
            global.buttonText2 = lastText
        }
        else if (pressedButton == global.button3)
        {
            global.button3 = global.button1
            global.buttonText3 = lastText
        }
        global.button1 = pressedButton
        global.buttonText1 = pressedText
    }
    else if (p[2] == 1)
    {
        if (pressedButton == global.button1)
        {
            global.button1 = global.button2
            global.buttonText1 = lastText
        }
        else if (pressedButton == global.button3)
        {
            global.button3 = global.button2
            global.buttonText3 = lastText
        }
        global.button2 = pressedButton
        global.buttonText2 = pressedText
    }
    else if (p[3] == 1)
    {
        if (pressedButton == global.button1)
        {
            global.button1 = global.button3
            global.buttonText1 = lastText
        }
        else if (pressedButton == global.button2)
        {
            global.button2 = global.button3
            global.buttonText2 = lastText
        }
        global.button3 = pressedButton
        global.buttonText3 = pressedText
    }
    binding = 0
    waiter = 0
}
if (binding == 1 && waiter == 0)
{
    waiter++
    if (p[1] == 1)
    {
        lastText = global.buttonText1
        global.buttonText1 = "[PRESS BUTTON]"
    }
    else if (p[2] == 1)
    {
        lastText = global.buttonText2
        global.buttonText2 = "[PRESS BUTTON]"
    }
    else if (p[3] == 1)
    {
        lastText = global.buttonText3
        global.buttonText3 = "[PRESS BUTTON]"
    }
}
