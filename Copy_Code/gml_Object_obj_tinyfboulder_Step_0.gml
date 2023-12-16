if (keyboard_multicheck_pressed(0) && scr_interact() == 1)
{
    scr_text()
    with (msg)
    {
        sndfnt = 99
        portrait = 0
        message[0] = "* (Ves un camino oscuro más alla#  de las rocas pero no#  puedes pasarlas.)"
        if (global.route == 3)
            message[0] = "* (Las rocas bloquean el camino.)"
    }
}
if (global.tinypuzzle == 0)
    instance_destroy()
