if (global.flag[17] == 1)
{
    if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
        waiter = 1
    if (waiter == 1)
    {
        scr_cutscene_start()
        if (global.interaction_count_books == 0)
        {
            obj_dalv2.destination_x_dalv = obj_pl.x
            obj_dalv2.destination_y_dalv = (obj_pl.y - 40)
        }
        else
        {
            obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvshouse
            obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvshouse
        }
        if (obj_dalv2.x == obj_dalv2.destination_x_dalv && obj_dalv2.y == obj_dalv2.destination_y_dalv)
            waiter++
    }
    if (waiter == 2)
        image_index = 1
    if (waiter == 2)
    {
        scr_text()
        with (msg)
        {
            if (global.interaction_count_books == 0)
            {
                if (!instance_exists(obj_dialoguebox_dummy))
                    instance_create(0, 0, obj_dialoguebox_dummy)
                portrait = 1
                sndfnt = 100
                message[0] = "* ¿Te gustan?"
                message[1] = "* Estos son mis proyectos."
                message[2] = "* A veces intento escribir#  libros. Para niños y#  cosas así..."
                prt[0] = 1776
                prt[1] = 1769
                prt[2] = 1761
            }
            else
            {
                portrait = 1
                sndfnt = 100
                message[0] = "* ..."
                prt[0] = 1755
            }
        }
        waiter++
    }
    if (waiter == 3 && (!instance_exists(obj_dialogue)))
    {
        if (global.interaction_count_books == 0)
        {
            global.interaction_count_books++
            waiter++
        }
        else
            waiter = 7
    }
    if (waiter == 4)
    {
        scr_text()
        with (msg)
        {
            portrait = 0
            sndfnt = 99
            message[0] = "* (La mesa está cubierta de#  colores y páginas de#  simpáticos dibujos.)"
        }
        waiter++
    }
    if (waiter == 5 && (!instance_exists(obj_dialogue)))
        waiter++
    if (waiter == 6)
    {
        scr_text()
        with (msg)
        {
            portrait = 1
            sndfnt = 100
            message[0] = "* A veces olvido de qué#  color son las cosas#  fuera de este lugar..."
            message[1] = "* ¡Así que me los imagino!"
            message[2] = "* Creo que a los niños les#  parecerá más interesante#  así."
            message[3] = "* ..."
            message[4] = "* Aunque puede que no sea#  tan educativo..."
            prt[0] = 1780
            prt[1] = 1776
            prt[2] = 1761
            prt[3] = 1755
            prt[4] = 1780
        }
        waiter++
    }
    if (waiter >= 7 && waiter <= 8 && (!instance_exists(obj_dialogue)))
    {
        obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvshouse
        obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvshouse
        if (obj_dalv2.x == obj_dalv2.default_x_dalvshouse && obj_dalv2.y == obj_dalv2.default_y_dalvshouse)
            waiter++
        with (obj_dialoguebox_dummy)
            instance_destroy()
    }
    if (waiter == 9)
    {
        global.cutscene = false
        waiter = 0
        obj_pl.alarm[0] = 1
    }
}
else if (global.flag[17] != 1 && global.route != 3)
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
            message[0] = "* (La mesa está cubierta de#  colores y páginas de#  simpáticos dibujos.)"
            obj_books.waiter = 2
        }
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
    {
        global.cutscene = false
        waiter = 0
        obj_pl.alarm[0] = 1
    }
}
else if (global.route == 3)
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
            message[0] = "* (Dibujos infantiles esparcidos sobre#  la mesa.)"
            obj_books.waiter = 2
        }
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
    {
        global.cutscene = false
        waiter = 0
        obj_pl.alarm[0] = 1
    }
}
