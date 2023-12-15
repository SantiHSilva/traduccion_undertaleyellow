with (other)
{
    if (keyboard_multicheck_pressed(0) && scr_interact())
        scene = 1
    switch scene
    {
        case 1:
            scr_text()
            if (global.flag[0] == 0)
            {
                with (msg)
                {
                    dialogue_is_minishop = 1
                    message[0] = "* (Según la lista de precios,#  es un puesto de limonada:#  5 de oro el vaso.)"
                    message[1] = "* (¿Tomar un poco?)"
                    ch_msg = 1
                    ch[1] = "Sí"
                    ch[2] = "No"
                    if (outcome == 1)
                    {
                        message[2] = "* (Te sirves un vaso pero#  no hay ningún colaborador que#  coja tu dinero. Mal servicio.)"
                        message[3] = "* (¿Dejar una propina?)"
                        scr_item("Lemonade")
                        global.flag[0] = 1
                        other.image_index = 1
                        other.scene++
                    }
                    if (outcome == 2)
                        global.dialogue_open = 0
                }
            }
            else
            {
                with (msg)
                {
                    dialogue_is_minishop = 1
                    message[0] = "* (Ya no queda limonada.)"
                }
            }
            break
        case 2:
            with (msg)
            {
                dialogue_is_minishop = 1
                ch_msg = 3
                ch[1] = "Sí"
                ch[2] = "No"
                if (outcome == 1)
                {
                    message[4] = "* (¿Cuánto?)"
                    other.scene++
                }
                if (outcome == 2)
                    global.dialogue_open = 0
            }
            break
        case 3:
            with (msg)
            {
                dialogue_is_minishop = 1
                ch_msg = 4
                ch[1] = "Importe\nGrande"
                ch[2] = "Importe\nPequeño"
                if (outcome == 1)
                {
                    if (global.player_gold > 5)
                    {
                        global.player_gold -= 5
                        message[5] = "* (Dejas 5 de oro en el#  frasco de propinas. Tu#  conciencia se siente como pluma.)"
                    }
                    else if (global.player_gold < 5 && global.player_gold > 0)
                    {
                        global.player_gold -= global.player_gold
                        message[5] = "* (Dejas todo lo que tienes#  en el frasco de las propinas.)"
                    }
                    else if (global.player_gold <= 0)
                        message[5] = "* (No tienes oro.)"
                    other.scene++
                }
                if (outcome == 2)
                {
                    if (global.player_gold >= 1)
                    {
                        global.player_gold -= 1
                        message[5] = "* (Partes una moneda a la mitad#  y debates que mitad tirar#  antes de lanzar una al azar.)"
                        message[6] = "* (Ambos son inútiles de todas#  formas asi que no te importa#  realmente.)"
                    }
                    else if (global.player_gold <= 0)
                        message[5] = "* (No tienes oro.)"
                    other.scene++
                }
            }
            break
    }

    if (!global.dialogue_open)
        scene = 0
}
