script_execute(gml_Script_scr_depth, 0, 0, 0, 0, 0)
if (global.flag[24] == 0 && room == rm_darkruins_03 && waiter == 1)
{
    scr_cutscene_start()
    waiter = 2
    image_alpha = 255
}
if (obj_pl.state == gml_Script_scr_frozen_state && waiter == 2)
{
    if (!instance_exists(obj_dialogue))
        msg = instance_create(x, y, obj_dialogue)
    if (global.meta_flowey_introduction_count >= 2)
    {
        with (msg)
        {
            position = 0
            sndfnt = 96
            color = 1
            col_modif[0] = 65535
            col_modif[1] = 255
            message[0] = "* ¡Hola!"
            message[1] = "* Soy FLOWEY. "
            message_col[1][0] = "      FLOWEY  "
            message[2] = "* ¡FLOWEY la FLOR!"
            message_col[2][0] = "   FLOWEY    FLOR "
            message[3] = "* Hmm..."
            message[4] = "* Pareces una persona bastante#  segura de sí misma."
            message[5] = "* No debería renerte#  aquí todo el día,#  ¿verdad?"
            message[6] = "* ¡No quisiera ser#  un estorbo!"
            message[7] = "* Te dejaré ir#  pero al menos deberías#  saber esto:"
            message[8] = "* El rey ASGORE es#  el responsable#  de todo."
            message_col[8][1] = "         ASGORE                                   "
            message[9] = "* Búscalo y haz#  lo que debas."
            message[10] = "* También..."
            message[11] = "* Si alguna vez tienes#  problemas, ¡yo puedo#  ayudarte a GUARDAR!"
            message[12] = "* Ven a buscar esta#  cosa y allí#  estaré!"
            prt[0] = 348
            prt[1] = 348
            prt[2] = 348
            prt[3] = 347
            prt[4] = 348
            prt[5] = 348
            prt[6] = 347
            prt[7] = 348
            prt[8] = 348
            prt[9] = 348
            prt[10] = 347
            prt[11] = 348
            prt[12] = 348
            other.waiter = 1
            global.flag[24] = 1
        }
    }
    else if (global.meta_flowey_introduction_count == 1)
    {
        with (msg)
        {
            position = 0
            sndfnt = 96
            color = 1
            col_modif[0] = 65535
            col_modif[1] = 255
            message[0] = "* ¡Hola!"
            message[1] = "* Soy FLOWEY. "
            message_col[1][0] = "      FLOWEY  "
            message[2] = "* ¡FLOWEY la FLOR!"
            message_col[2][0] = "   FLOWEY    FLOR "
            message[3] = "* Hmmm..."
            message[4] = "* Pareces confundido."
            message[5] = "* ¡Toriel debería haberte#  enseñado cómo funcionan#  las cosas por aquí!"
            message[6] = "* ¿No lo hizo?"
            message[7] = "* Supongo que el#  pequeño y viejo yo#  tendrá que hacerlo."
            message[8] = "* ¿Quieres que yo#  te enseñe?"
            prt[0] = 348
            prt[1] = 348
            prt[2] = 348
            prt[3] = 347
            prt[4] = 357
            prt[5] = 347
            prt[6] = 348
            prt[7] = 3251
            prt[8] = 348
            col_modif[0] = 65535
            ch_msg = 8
            ch[1] = "Sí"
            ch[2] = "No"
            if (outcome == 1)
            {
                global.dialogue_open = 0
                other.waiter = 3
            }
            if (outcome == 2)
            {
                message[9] = "* Entiendo..."
                message[10] = "* Ir con cabeza - ¡me#  gusta!"
                message[11] = "* Bueno almenos deberías#  saber esto al menos:"
                message[12] = "* ¿Esos humanos que#  buscas?"
                message[13] = "* Lo siento, pero..."
                message[14] = "* El rey ASGORE ya ha#  llegado a ellos."
                message_col[14][0] = ""
                message_col[14][1] = "         ASGORE                             "
                message[15] = "* Por el lado bueno,#  escuche que sus ALMAS#  están en espera."
                message[16] = "* Haz lo que quieras#  con esa información."
                message[17] = "* También..."
                message[18] = "* Dondequiera que estes#  y necesites ayuda,#  Yo te ayudare a GUARDAR!"
                message[19] = "* Eso significa que si#  pasa algo malo, ¡puedo#  hacer que no pase!"
                message[20] = "* Asi que si alguna vez#  necesitas ayuda,#  ¡ven a buscarme!"
                message[21] = "* Te dejaré estas cositas#  por aquí."
                prt[9] = 353
                prt[10] = 348
                prt[11] = 347
                prt[12] = 348
                prt[13] = 353
                prt[14] = 352
                prt[15] = 348
                prt[16] = 348
                prt[17] = 347
                prt[18] = 348
                prt[19] = 348
                prt[20] = 348
                prt[21] = 347
                other.waiter = 1
                global.flag[24] = 1
            }
        }
    }
    else if (global.meta_flowey_introduction_count == 0)
    {
        with (msg)
        {
            position = 0
            color = 1
            sndfnt = 96
            message[0] = "* ¡Hola!#* Soy FLOWEY. #* ¡FLOWEY la FLOR!"
            message[1] = "* Hmm... #* ¡Pareces confundido!"
            message[2] = "* ¡Toriel deberia haberte #  enseñado cómo funcionan #  las cosas por aquí!"
            message[3] = "* ¿No lo hizo?"
            message[4] = "* Supongo que el viejo yo#  tendrá que hacerlo.#* ¿Listo? ¡Allá vamos!"
            message_col[0][0] = "       #      FLOWEY  #   FLOWEY    FLOR "
            col_modif[0] = 65535
            prt[0] = 348
            prt[1] = 357
            prt[2] = 347
            prt[3] = 352
            prt[4] = 348
        }
        waiter = 3
    }
}
if ((!instance_exists(obj_dialogue)) && waiter == 3 && global.flag[24] == 0)
{
    instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle)
    global.battle_enemy_name = "flowey intro"
    global.current_room_overworld = room_get_name(room)
    global.battling_boss = 0
    global.battle_start = 1
    instance_destroy()
    waiter = 4
}
if (global.flag[24] == 1 && room == rm_darkruins_03 && waiter == 0)
{
    image_alpha = 255
    obj_pl.direction = 90
    global.cutscene = true
    if (!instance_exists(obj_dialogue))
        msg = instance_create(x, y, obj_dialogue)
    with (msg)
    {
        position = 0
        sndfnt = 96
        message[0] = "* Probablemente quieras#  irte a casa, ¿verdad?"
        message[1] = "* ¡Pues te espera un #  largo viaje!"
        message[2] = "* Si alguna vez necesitas que,#  guarde ¡buscame!"
        message[3] = "* Dejaré estas #  pequeñas cosas por ahí."
        prt[0] = 347
        prt[1] = 348
        prt[2] = 348
        prt[3] = 348
    }
    waiter = 1
}
if ((!instance_exists(obj_dialogue)) && waiter == 1 && global.flag[24] == 1)
{
    image_speed = 0.2
    sprite_index = spr_floweyleave
}
if (global.flag[24] == 2 && room == rm_darkruins_03 && waiter == 1 && (!instance_exists(obj_dialogue)))
{
    waiter = 2
    image_alpha = 255
    if (obj_pl.state == gml_Script_scr_frozen_state && waiter == 2)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue)
        if (global.meta_flowey_introduction_count >= 2)
        {
            with (msg)
            {
                position = 0
                sndfnt = 96
                message[0] = "* Bueno, supongo que eso es#  todo."
                message[1] = "* ¡A por ellos, amigo!"
                prt[0] = 347
                prt[1] = 348
            }
        }
        else if (global.meta_flowey_introduction_count == 1)
        {
            with (msg)
            {
                position = 0
                sndfnt = 96
                message[0] = "* Bueno, ¡eso es todo!"
                message[1] = "* ¡Buena suerte, amigo!"
                prt[0] = 348
                prt[1] = 3251
            }
        }
        else if (global.meta_flowey_introduction_count == 0)
        {
            with (msg)
            {
                position = 0
                sndfnt = 96
                color = 1
                col_modif[0] = 255
                message[0] = "* Así es fácil#  encontrarme!"
                message[1] = "* Si ves uno,#  no dudes en llamarme! "
                message[2] = "* Y entonces te salvare.#  ¡Como acabo de guardar#  ahora!"
                message[3] = "* ..."
                message[4] = "* Hay una cosa más..."
                message[5] = "* El rey de todos los#  monstruos, ASGORE..."
                message[6] = "* Ha estado matando#  humanos."
                message[7] = "* La única salida es#  matarlo y... #  bueno..."
                message[8] = "* Eres bastante pequeño..."
                message[9] = "* Aunque eso no importa#  demasiado."
                message[10] = "* ¡Lo que importa es#  que me tienes de tu#  lado!"
                message[11] = "* Te dejaré ir,#  pero por favor ten cuidado."
                message[12] = "* Hay todo tipo de#  trampas peligrosas#  aquí abajo."
                message[13] = "* Y algunos monstruos #  de este lugar..."
                message[14] = "* Escuche que no les gusta#  las visitas. #  ¡Buena suerte!"
                message_col[5][0] = "#             ASGORE"
                prt[0] = 348
                prt[1] = 348
                prt[2] = 347
                prt[3] = 354
                prt[4] = 357
                prt[5] = 352
                prt[6] = 352
                prt[7] = 353
                prt[8] = 356
                prt[9] = 352
                prt[10] = 348
                prt[11] = 348
                prt[12] = 357
                prt[13] = 354
                prt[14] = 357
            }
        }
        waiter = 3
    }
}
if ((!instance_exists(obj_dialogue)) && waiter == 3 && global.flag[24] == 2)
{
    global.flag[24] = 3
    scr_savegame()
    image_speed = 0.2
    sprite_index = spr_floweyleave
    audio_sound_gain(mus_floweynew_yellow, 0, 2000)
    global.cutscene = false
    global.meta_flowey_introduction_count += 1
    scr_savegame_meta()
    scr_cutscene_end()
    obj_pl.alarm[0] = 5
    waiter = 4
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
