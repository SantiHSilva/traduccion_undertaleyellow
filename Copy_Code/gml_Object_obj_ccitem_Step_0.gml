if (global.flag[8] == 1)
    instance_destroy()
if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
    waiter = 1
if (waiter > 0)
{
    scr_text()
    with (msg)
    {
        portrait = 0
        sndfnt = 99
        message[0] = "* (Es un trozo de maíz rechazado.)"
        message[1] = "* (¿Tomarlo?)"
        if (outcome == 1 && message_current == 1)
        {
            scr_item("Candy Corn")
            message[2] = "* (¡Obtuviste un Candy Corn!)"
            with (obj_ccitem)
                instance_destroy()
            global.flag[8] = 1
        }
        if (outcome == 2 && message_current == 1)
        {
            message[2] = "* (Probablmente no sea#  lo suficientemente bueno#  para ti.)"
            obj_ccitem.waiter = 0
        }
        if ((message_current + 1) == 1)
        {
            ch_msg = 1
            ch[1] = "Sí"
            ch[2] = "No"
        }
    }
}
