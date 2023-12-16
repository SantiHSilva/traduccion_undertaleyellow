script_execute(gml_Script_scr_depth, 0, 0, 0, 0, 0)
obj_pl.state = gml_Script_scr_frozen_state
if (global.route != 3)
{
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            sndfnt = 96
            message[0] = "* ¡Buenas!"
            message[1] = "* ¡Felicidades por haberte#  librado de esas viejas#  ruinas para siempre!"
            message[2] = "* ¡Ni siquiera podrías#  volver atrás si#  quisieras ahora!"
            message[3] = "* ¿No es emocionante#  pensar en aire fresco?"
            message[4] = "* Bueno, no te#  adelantes."
            message[5] = "* Sigues en el#  subsuelo."
            message[6] = "* ¡No estaremos cerca de#  tu elegante aire de#  superficie por un tiempo!"
            message[7] = "* Ahora, en marcha#  antes de que se me#  congelen los pétalos."
            message[8] = "* ¡Adelante, amigo!"
            prt[0] = 348
            prt[1] = 357
            prt[2] = 347
            prt[3] = 352
            prt[4] = 348
            prt[5] = 348
            prt[6] = 348
            prt[7] = 348
            prt[8] = 348
        }
        waiter = 2
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
    {
        timer = 30
        waiter = 3
    }
    if (waiter == 4)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue)
        with (msg)
        {
            sndfnt = 96
            message[0] = "* En realidad,#  ¿cuál era tu nombre?"
            message[1] = "* No es amigo"
            message[2] = "* ¿Es... Sombrero...#  de Pistolero...?"
            prt[0] = 348
            prt[1] = 352
            prt[2] = 348
            ch_msg = 2
            ch[1] = "Es\nClover"
            ch[2] = "Así\nEs"
            if (outcome == 1 && message_current == 2)
            {
                message[3] = "* Clover."
                prt[3] = 347
                other.choice = 2
                other.waiter = 6
            }
            else if (outcome == 2 && message_current == 2)
            {
                message[3] = "* ¿En serio?"
                prt[3] = 352
                other.choice = 1
                other.waiter = 6
            }
        }
    }
    if (waiter == 6 && (!instance_exists(obj_dialogue)))
    {
        if (timer == -1)
            timer = 30
    }
    if (waiter == 7)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue)
        with (msg)
        {
            if (other.choice == 1)
            {
                sndfnt = 96
                message[0] = "* Bueno, Sombrero de Pistolero.#  Basta de charla."
                message[1] = "* Nos vemos."
                prt[0] = 352
                prt[1] = 348
                global.snowdin_flag[15] = 2
            }
            else if (other.choice == 2)
            {
                sndfnt = 96
                message[0] = "* Bonito nombre."
                message[1] = "* Pensé que era la#  única flor por aquí."
                message[2] = "* Ok, 'Clover.'#  Vamos a seguir adelante."
                message[3] = "* Te veré más adelante,#  espero que en algún#  lugar más cálido."
                prt[0] = 347
                prt[1] = 348
                prt[2] = 348
                prt[3] = 347
                global.snowdin_flag[15] = 1
            }
        }
        waiter = 8
    }
}
else if (global.route == 3)
{
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            sndfnt = 96
            message[0] = "* ¡Buenas!"
            message[1] = "* ¿Disfrutando del#  paisaje?"
            message[2] = "* Antes de que continúes,#  sólo quería que lo supieras."
            message[3] = "* Nadie de aquí va#  realmente a las Ruinas."
            message[4] = "* Ahora que estamos#  aquí, bueno,#  ¿cómo decirlo?"
            message[5] = "* Nadie se dará cuenta#  de que faltan algunos monstruos#  y sobra un poco de polvo."
            message[6] = "* Todas tus acciones#  hasta ahora, están#  como selladas."
            message[7] = "* Nuestro pequeño secreto."
            message[8] = "* Así que, si quieres,#  puedes cambiarlo todo#  ahora mismo."
            message[9] = "* Corre por el resto#  del Subsuelo como si nada#  hubiera pasado."
            message[10] = "* Sólo recuerda, matar a#  algunos residentes solitarios#  de las ruinas era una cosa."
            message[11] = "* Pero ahora estás fuera#  amigo."
            message[12] = "* Ya no se puede borrar,#  así que piénsalo bien."
            prt[0] = 348
            prt[1] = 348
            prt[2] = 347
            prt[3] = 348
            prt[4] = 348
            prt[5] = 348
            prt[6] = 348
            prt[7] = 349
            prt[8] = 348
            prt[9] = 347
            prt[10] = 348
            prt[11] = 348
            prt[12] = 348
        }
        timer = 30
        waiter++
    }
    if (waiter == 2 && (!global.dialogue_open))
    {
        if (!scr_timer())
            return;
        scr_text()
        with (msg)
        {
            sndfnt = 96
            message[0] = "* O no, porque eso#  suena aburrido."
            message[1] = "* Elijas lo que elijas,#  ¡te apoyo, amigo!"
            prt[0] = 349
            prt[1] = 348
        }
        if (!global.dialogue_open)
            waiter = 8
    }
}
if (waiter == 8 && (!instance_exists(obj_dialogue)))
{
    image_index = 0
    sprite_index = spr_floweyleave
    image_speed = 0.2
    waiter = 9
}
if (waiter == 9 && image_index >= (image_number - 1))
{
    instance_destroy()
    instance_create(x, y, obj_determination)
    scr_cutscene_end()
    global.snowdin_flag[0] = 1
}
if (global.route == 3)
{
}
if (timer > 0)
    timer--
else if (timer == 0)
{
    if (waiter == 6)
        waiter = 7
    else
        waiter = 4
    timer = -1
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
