if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0)
    waiter = 1
if (waiter == 1)
{
    scr_cutscene_start()
    scr_text()
    with (msg)
    {
        sndfnt = 99
        portrait = 0
        if (other.npc_flag == 0)
        {
            message_current = 1
            other.npc_flag = 1
            other.waiter = 2
        }
        else
        {
            ch[1] = "Sí"
            ch[2] = "No"
            ch_msg = 0
        }
        color = 1
        col_modif[0] = make_color_rgb(92, 186, 249)
        col_modif[1] = 255
        message[0] = "* (¿Leer las instrucciones#  otra vez?)"
        message[1] = "* A quien corresponda:"
        message[2] = "* De acuerdo con el libro guía#  de la Royal Guard#  sección 4, párrafo dos,"
        message[3] = "* Este puzzle pretende#  impedir el avance de un#  intruso (probablemente tú),"
        message[4] = "* Entretener a los residentes#  de los alrededores (Snowdin),"
        message[5] = "* E intimidar a posibles intrusos o malhechores,"
        message[6] = "* (No me queda claro lo#  que quieren decir#  con eso, pero adelante)."
        message[7] = "* Para superar este reto,#  debes derretir el cubo#  de hielo."
        message[8] = "* Asegúrate de que la#  bola llegue al fondo#  sin romperse."
        message[9] = "* Firmado: Martlet de la#  Guardia Real Subterránea"
        message_col[4][1] = "#                      Snowdin "
        message_col[9][0] = "           Martlet"
        message_col[9][1] = "#  Guardia Real Subterránea"
        if (outcome == 1 && message_current == 0)
            other.waiter = 2
        else if (outcome == 2 && message_current == 0)
        {
            other.waiter = 4
            instance_destroy()
        }
    }
}
if (waiter == 2 && (!instance_exists(obj_dialogue)))
{
    if (timer == -1)
        timer = 30
}
if (waiter == 3)
{
    scr_text()
    with (msg)
    {
        sndfnt = 99
        portrait = 0
        message[0] = "* P.S."
        message[1] = "* If one of the logs gets stuck,#  just jiggle it a little."
        message[2] = "* I noticed it was sticking the#  other day, but you know how it#  is with D.I.Y. projects."
        message[3] = "* Always something has to go#  wrong!"
        message[4] = "* So yeah, just a quick jiggle#  will do!"
        message[5] = "* P.P.S."
        message[6] = "* I just realized that you might#  not be able to reach the log to#  jiggle it!"
        message[7] = "* I mean, not everyone can fly,#  or is freakishly tall!"
        message[8] = "* Especially if you're a human or#  something!"
        message[9] = "* So just hope it doesn't get#  stuck!"
        message[10] = "* P.P.P.S."
        message[11] = "* I figured it out!"
        message[12] = "* If it gets stuck, just wait!"
        message[13] = "* I come around to inspect the#  puzzle quality every third day!"
        message[14] = "* Just hang out right where you#  are for a day or two!"
        message[15] = "* Oh, and hope it doesn't get#  stuck!"
        message[16] = "* P.P.P.P.S."
        message[17] = "* I have been informed that the#  amount of P.S.'s on this sign#  is \"unseemly.\""
        message[18] = "* I am very sorry for any trouble#  they've caused."
    }
    if (global.dialogue_open == 0)
        waiter = 4
}
if (waiter == 4)
{
    if (npc_flag == 0)
        npc_flag = 1
    waiter = 0
    scr_cutscene_end()
}
if (timer > 0)
    timer--
else if (timer != -1)
{
    waiter = 3
    timer = -1
}
if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag)
