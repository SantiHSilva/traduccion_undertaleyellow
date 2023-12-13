if (global.flag[11] == 1)
    image_index = 1
if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
    waiter = 1
if (waiter > 0)
{
    scr_text()
    with (msg)
    {
        portrait = 0
        sndfnt = 99
        if (global.flag[11] == 1)
        {
            if (global.route != 3)
                message[0] = "* (Es una caja con maíz \"especial\"#  escrito en crayón rosa.)"
            else
                message[0] = "* (No queda nada útil.)"
            other.waiter = 0
        }
        else
        {
            message[0] = "* (Hay un Corn Dog escondido#  entre las mazorcas de maíz.)"
            message[1] = "* (¿Tomarlo?)"
            ch_msg = 1
            ch[1] = "Sí"
            ch[2] = "No"
            if (outcome == 1 && message_current == 1)
            {
                message[2] = "* ¡Obtuviste un Corn Dog!"
                scr_item("Corn Dog")
                global.flag[11] = 1
                obj_cornboxdoge.waiter = 0
            }
            if (outcome == 2 && message_current == 1)
            {
                message[2] = "* (Podría morderte.)"
                obj_cornboxdoge.waiter = 0
            }
        }
    }
}
