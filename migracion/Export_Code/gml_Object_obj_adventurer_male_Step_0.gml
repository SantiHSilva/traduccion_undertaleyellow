event_inherited()
var geno_snowdin = 0
if global.geno_complete[2]
    geno_snowdin = 1
if interact
{
    scr_text()
    is_talking = 1
    if (global.snowdin_flag[1] == 2 && npc_flag < 5)
        npc_flag = 5
    with (msg)
    {
        portrait = 0
        sndfnt = 99
        if (global.route == 3 || geno_snowdin)
        {
            if (geno_snowdin == 0)
            {
                message[0] = "* Empiezo a tener dudas#  sobre esto como lugar#  de luna de miel."
                message[1] = "* No se siente seguro."
                message[2] = "* Pero no puedo decírselo a#  mi mujer.#  La molestaría."
            }
            else
            {
                switch other.npc_flag
                {
                    case 0:
                        message[0] = "* ¿Tú también te has quedado?"
                        message[1] = "* Perdí a mi mujer en#  el alboroto."
                        message[2] = "* Este fue el último lugar#  donde la vi."
                        other.npc_flag = 1
                        break
                    case 1:
                        message[0] = "* Espero que esté bien."
                        break
                }

            }
        }
        else
        {
            switch other.npc_flag
            {
                case 0:
                    message[0] = "* No nos hemos perdido."
                    message[1] = "* Sé exactamente dónde#  estamos."
                    other.npc_flag = 1
                    break
                case 1:
                    message[0] = "* No nos hemos perdido.."
                    message[1] = "* Estamos en Snowdin."
                    message[2] = "* Snowdin no es tan grande."
                    other.npc_flag = 2
                    break
                case 2:
                    message[0] = "* No nos hemos perdido.."
                    message[1] = "* No podemos perdernos."
                    message[2] = "* Es nuestra luna de#  miel."
                    message[3] = "* Tiene que ser perfecto,#  ¿no?"
                    other.npc_flag = 3
                    break
                case 3:
                    message[0] = "* No podemos perdernos."
                    message[1] = "* Sería una luna de#  miel terrible."
                    message[2] = "* Una mala luna de miel#  significa un mal#  matrimonio."
                    message[3] = "* Eso no puede pasar.#  No puedo ser un#  mal marido."
                    message[4] = "* No dejaré que eso#  ocurra."
                    message[5] = "* No dejaré que mi#  nueva esposa tenga#  una mala luna de miel."
                    message[6] = "* No podemos perdernos"
                    other.npc_flag = 4
                    break
                case 4:
                    message[0] = "* No podemos perdernos."
                    message[1] = "* Ella no puede saber#  que estamos# perdidos,#  ¿de acuerdo?"
                    break
                case 5:
                    message[0] = "* ¡Gracias por el mapa!"
                    message[1] = "* Pero no lo necesitamos."
                    message[2] = "* Tenía todo bajo control,#  lo juro."
                    other.npc_flag = 6
                    break
                case 6:
                    message[0] = "* Quedarse aquí un poco#  más no hará daño."
                    message[1] = "* Es muy bonito."
                    break
            }

        }
    }
}
