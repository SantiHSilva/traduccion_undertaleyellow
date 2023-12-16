event_inherited()
if interact
{
    scr_text()
    is_talking = 1
    switch npc_flag
    {
        case 0:
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* Leí algo en un libro una vez."
                message[1] = (("* Decía, \"Si la vida te viene#  demasiado deprisa, pulsa " + global.cancel_key) + "#  y ve despacio.\"")
                message[2] = "* Signifique lo#  que signifique."
            }
            npc_flag = 1
            break
        case 1:
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* Sabes, leí algo más#  en ese mismo libro.."
                message[1] = "* Decia, \"Come para#  mantenerte fuerte y sano!\""
                message[2] = "* Eso es obvio."
            }
            npc_flag = 2
            break
        case 2:
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* ¿Quieres saber otro fragmento#  de ese libro?"
                message[1] = "* Decia, \"Por favor para de#  hablarme, agote las#  citas de mi libro.\""
                message[2] = "* Un libro muy sabio,#  sin duda."
            }
            npc_flag = 3
            break
        case 3:
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* Por favor, déjame en paz."
            }
    }

}
