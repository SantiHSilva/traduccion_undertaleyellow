if (global.flag[10] == 1)
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
        message[0] = "* (Es una pluma perdida.)"
        message[1] = "* (¿Tomarlo?)"
        if (outcome == 1 && message_current == 1)
        {
            scr_item("Feather")
            message[2] = "* (¡Tienes una Stray Feather!)"
            with (obj_featheritem)
                instance_destroy()
            global.flag[10] = 1
        }
        if (outcome == 2 && message_current == 1)
        {
            message[2] = "* (Lo ignoras.#* Lo callejero no son más#  que problemas.)"
            obj_featheritem.waiter = 0
        }
        if ((message_current + 1) == 1)
        {
            ch_msg = 1
            ch[1] = "Sí"
            ch[2] = "No"
        }
    }
}
