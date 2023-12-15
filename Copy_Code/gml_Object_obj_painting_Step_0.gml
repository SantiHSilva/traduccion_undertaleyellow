if (global.flag[17] == 1)
{
    if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
        waiter = 1
    if (waiter == 1)
    {
        global.cutscene = true
        obj_dalv2.destination_x_dalv = obj_dalv2.x
        obj_dalv2.destination_y_dalv = obj_dalv2.y
        if (obj_dalv2.x == obj_dalv2.destination_x_dalv && obj_dalv2.y == obj_dalv2.destination_y_dalv)
            waiter++
    }
    if (waiter == 2)
    {
        scr_text()
        with (msg)
        {
            if (global.interaction_count_painting == 0)
            {
                portrait = 1
                sndfnt = 100
                message[0] = "* Alguien me lo hizo#  hace un tiempo."
                message[1] = "* Es un solo maíz del#  campo de maíz de las#  Ruinas."
                message[2] = "* Empecé ese campo a#  partir de un trozo de#  maíz."
                message[3] = "* Antes de cerrar la#  puerta a Snowdin,#  algo pasó."
                message[4] = "* Seguía encontrando maíz#  en la puerta de mi casa."
                message[5] = "* Todas las mañanas#  estaba ahí."
                message[6] = "* No sabía quién lo dejaba#  pero..."
                message[7] = "* De alguna manera pensé#  que eran mis amigos."
                message[8] = "* Siempre quise#  recompensar sus buenas#  acciones, pero..."
                message[9] = "* Nunca se me ocurrió nada#  que dejar a cambio."
                message[10] = "* Y un día simplemente#  dejaron de aparecer."
                message[11] = "* Fue entonces cuando#  decidí esconderme."
                message[12] = "* Pero planté la última#  mazorca de maíz que#  tenía aquí abajo."
                message[13] = "* Se ha adaptado al#  entorno#  sorprendentemente bien."
                message[14] = "* Siempre me ha parecido#  bastante inspirador."
                prt[0] = 1769
                prt[1] = 1769
                prt[2] = 1776
                prt[3] = 1755
                prt[4] = 1755
                prt[5] = 1755
                prt[6] = 1755
                prt[7] = 1769
                prt[8] = 1755
                prt[9] = 1780
                prt[10] = 1763
                prt[11] = 1759
                prt[12] = 1776
                prt[13] = 1776
                prt[14] = 1769
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
        if (global.interaction_count_painting == 0)
        {
            global.interaction_count_painting++
            waiter++
        }
        else
            waiter = 4
    }
    if (waiter >= 4 && waiter <= 5 && (!instance_exists(obj_dialogue)))
    {
        obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvroomhall
        obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvroomhall
        if (obj_dalv2.x == obj_dalv2.default_x_dalvroomhall && obj_dalv2.y == obj_dalv2.default_y_dalvroomhall)
            waiter++
    }
    if (waiter == 6)
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
            message[0] = "* (Es una bonita pintura de una#  mazorca pequeña y solitaria.)"
            message[1] = "* (Una firma que dice#  \"Penilla\", está#  escrito en la esquina.)"
            obj_painting.waiter = 2
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
            message[0] = "* (Una pintura.)"
            message[1] = "* (Le falta realismo maicero.)"
            obj_painting.waiter = 2
        }
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
    {
        global.cutscene = false
        waiter = 0
        obj_pl.alarm[0] = 1
    }
}
