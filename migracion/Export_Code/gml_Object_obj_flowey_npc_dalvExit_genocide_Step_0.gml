if (waiter == 1)
{
    scr_text()
    if (global.save_count == 0)
    {
        with (msg)
        {
            if (global.route != 3)
            {
                portrait = 1
                sndfnt = 96
                message[0] = "* ¡Buenas!"
                message[1] = "* Tengo la impresión#  de que te gusta#  rodar solo."
                message[2] = "* Ya sabes, aún no#  acepta mi oferta#  de \"guardar\"."
                message[3] = "* Pero mira, ¿ves esos#  tablones destrozados en el#  suelo?	"
                message[4] = "* Puedo serte de gran#  ayuda en tiempos# difíciles."
                message[5] = "* Tal vez tengas#  problemas de confianza#  pero..."
                message[6] = "* Tienes que superar eso si#  quieres tener una oportunidad#  de luchar, ¿vale?"
                message[7] = "* Nos vemos más adelante,#  amigo."
                prt[0] = 348
                prt[1] = 348
                prt[2] = 353
                prt[3] = 348
                prt[4] = 348
                prt[5] = 347
                prt[6] = 348
                prt[7] = 348
            }
            else
            {
                portrait = 1
                sndfnt = 96
                color = 1
                col_modif[0] = 65535
                message[0] = "* ¡Buenas!	"
                message[1] = "* Estoy seguro de que#  podrías haberlos destrozado#  tú mismo, pero..."
                message[2] = "* Puedo serte de ayuda#  a veces."
                message[3] = "* Como... guardar.#  ¿Lo recuerdas?"
                message_col[3][0] = "          guardar "
                message[4] = "* Talvez lo olvidaste."
                message[5] = "* Espera...	"
                message[6] = "* ¿Esto es por mi vaga#amenaza de antes?"
                message[7] = "* ¡Sólo estaba bromeando¡#  ¡Ya me conoces!"
                message[8] = "* Oh, bueno,#supongo que todavía no."
                message[9] = "* Heh, que problema..."
                message[10] = "* Todo lo que necesitas saber#es que tengo en mente#tus mejores intereses."
                message[11] = "* Vas por un camino#peligroso, así que..."
                message[12] = "* No olvides de guardar,#  ¿de acuerdo?"
                message[13] = "* Bien."
                prt[0] = 348
                prt[1] = 347
                prt[2] = 348
                prt[3] = 3640
                prt[4] = 347
                prt[5] = 353
                prt[6] = 352
                prt[7] = 348
                prt[8] = 348
                prt[9] = 347
                prt[10] = 348
                prt[11] = 347
                prt[12] = 348
                prt[13] = 348
            }
        }
    }
    else
    {
        with (msg)
        {
            portrait = 1
            sndfnt = 96
            message[0] = "* ¡Buenas!"
            message[1] = "* ¿Te lo esperabas?"
            message[2] = "* Soy un poco más#  útil de lo que pensabas."
            message[3] = "* Cualquier cosa que no#  puedas hacer por ti#  mismo es mi trabajo."
            message[4] = "* De todas formas..."
            message[5] = "* Gran trabajo#  llegando hasta aquí!"
            message[6] = "* Chico, me alegro#  de estar de tu lado."
            message[7] = "* Prepárate porque#  nos espera un#  largo viaje."
            message[8] = "* ¡Esto va a ser muy#  divertido!"
            message[9] = "* ¡Te veré en el#  otro lado, amigo!"
            prt[0] = 348
            prt[1] = 347
            prt[2] = 348
            prt[3] = 348
            prt[4] = 347
            prt[5] = 353
            prt[6] = 348
            prt[7] = 348
            prt[8] = 348
            prt[9] = 347
        }
    }
    waiter++
}
if (waiter == 2 && (!instance_exists(obj_dialogue)))
    waiter++
if (waiter == 3 && sprite_index != spr_floweyleave)
{
    sprite_index = spr_floweyleave
    image_speed = 0.25
    image_index = 0
}
if (waiter == 4)
{
    global.cutscene = false
    waiter = 0
    obj_pl.alarm[0] = 1
    instance_create(144, 188, obj_dalvExit_blocker)
    instance_destroy()
}
if (instance_exists(obj_dialogue) && obj_dialogue.sndfnt == 96)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.2
}
if (obj_pl.y < 160 && timer == 0)
{
    global.cutscene = true
    obj_pl.image_speed = 0
    timer = 1
    instance_create(160, 80, obj_flowey_npc_boards_genocide)
}
