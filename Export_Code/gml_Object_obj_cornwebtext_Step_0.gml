if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && (!instance_exists(obj_dialogue)))
{
    scr_text()
    with (msg)
    {
        portrait = 0
        sndfnt = 99
        message[0] = "* (Hay maíz en la# telaraña.)"
        if (global.route == 3)
            message[0] = "* (Una mazorca de maíz.)"
    }
}
