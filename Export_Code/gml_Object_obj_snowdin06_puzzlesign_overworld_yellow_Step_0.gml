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
        message[5] = "* E intimidar a posibles intrusos#  o malhechores,"
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
        message[0] = "* P.D."
        message[1] = "* Si uno de los troncos#  se atasca, basta con#  menearlo un poco."
        message[2] = "* El otro día me di cuenta#  que se atascaba, pero ya#  sabes como es D.I.Y."
        message[3] = "* Siempre tiene que salir#  algo mal."
        message[4] = "* Así que sí, ¡un meneo rápido#  bastará!"
        message[5] = "* P.P.D."
        message[6] = "* ¡Acabo de darme cuenta de#  que quizá no puedas alcanzar#  el tronco para menearlo!"
        message[7] = "* Quiero decir, ¡no todo el#  mundo puede volar, o es#  monstruosamente alto!"
        message[8] = "* ¡Especialmente si eres#  un humano o algo así!"
        message[9] = "* ¡Así que sólo espero#  que no se atasque!"
        message[10] = "* P.P.P.D."
        message[11] = "* ¡Ya lo resolví!"
        message[12] = "* Si se atasca, ¡espera!"
        message[13] = "* Vengo a inspeccionar#  la calidad del puzzle#  cada tres días."
        message[14] = "* Quédate donde estás#  durante un día o dos."
        message[15] = "* ¡Oh, y espero que#  no se atasque!"
        message[16] = "* P.P.P.P.D."
        message[17] = "* Me han informado de que#  la cantidad de Posdatas#  en este cartel es \"inapropiada\"."
        message[18] = "* Siento mucho las molestias#  que hayan podido causar."
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
