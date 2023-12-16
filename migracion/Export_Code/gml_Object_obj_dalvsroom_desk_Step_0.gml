if (global.route != 3)
{
    if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
        waiter = 1
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            if (!instance_exists(obj_dialoguebox_dummy))
                instance_create(0, 0, obj_dialoguebox_dummy)
            portrait = 0
            sndfnt = 99
            message[0] = "* (Hay un libro de párrafos#  bien escritos sobre el escritorio.)"
            message[1] = "* (Todas parecen ser muy similares.)"
            message[2] = "* (¿Lees uno?)"
            if (outcome == 1 && message_current == 2)
            {
                obj_dalvsroom_desk.waiter = 2
                global.cutscene = true
            }
            else if (outcome == 2 && message_current == 2)
                obj_dalvsroom_desk.waiter = 4
            if ((message_current + 1) == 2)
            {
                ch_msg = 2
                ch[1] = "Sí"
                ch[2] = "No"
            }
        }
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
        waiter++
    if (waiter == 3)
    {
        scr_text()
        with (msg)
        {
            portrait = 0
            sndfnt = 99
            message[0] = "* Dalv es un solitario que vive en# las ruinas del Hogar."
            message[1] = "* Le gusta pasear tranquilamente en oscuridad,#  limpiar y mejorar las canciones#  de su órgano."
            message[2] = "* Quiere compartir con la# juventud del Subsuelo..."
            message[3] = "* ...la importancia de#  aceptar y respetar# los deseos de los demás."
            message[4] = "* El resto de la página está#  garabateada."
            with (obj_dalvsroom_desk)
                waiter++
        }
    }
    if (waiter == 4 && (!instance_exists(obj_dialogue)))
    {
        with (obj_dialoguebox_dummy)
            instance_destroy()
        waiter = 0
        global.cutscene = false
        obj_pl.alarm[0] = 1
    }
}
else
{
    if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
        waiter = 1
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            portrait = 0
            sndfnt = 99
            message[0] = "* (Hay un libro de párrafos#  bien escritos sobre el escritorio.)"
            message[1] = "* (Todos parecen ser muy#  similares.)"
        }
        waiter++
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
        waiter++
    if (waiter == 3)
    {
        waiter = 0
        obj_pl.alarm[0] = 1
    }
}
