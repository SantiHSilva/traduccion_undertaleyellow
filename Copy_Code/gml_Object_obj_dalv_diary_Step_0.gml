if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0)
    waiter = 1
var diary_music = mus_dalv_diary
if (waiter == 1)
{
    scr_cutscene_start()
    scr_text()
    with (msg)
    {
        ch_msg = 2
        ch[1] = "Sí"
        ch[2] = "No"
        portrait = 0
        sndfnt = 99
        if (other.npc_flag == 0)
        {
            message[0] = "* (Parece el diario de Dalv.)"
            message[1] = "* (Puede contener información privada.)"
            message[2] = "* (¿Leer?)"
        }
        else
        {
            if (message_current == 0)
                message_current = 1
            message[1] = "* (Es el diario de Dalv.)"
            message[2] = "* (¿Leer?)"
        }
        if (outcome == 1)
        {
            message[3] = "* (Abres el diario.)"
            message[4] = "* (Sólo hay una entrada.#  Parece nueva.)"
            other.waiter = 2
            other.timer = 30
        }
        else if (outcome == 2)
        {
            other.waiter = 5
            instance_destroy()
        }
    }
}
if (waiter == 2 && (!global.dialogue_open))
{
    if scr_timer()
    {
        if audio_is_playing(mus_dalventertainer)
        {
            audio_sound_gain(mus_dalventertainer, 0, 500)
            var audio_gain = audio_sound_get_gain(mus_dalventertainer)
            if (audio_gain == 0)
                audio_stop_sound(mus_dalventertainer)
        }
        else
            waiter++
    }
}
if (waiter == 3)
{
    scr_text()
    with (msg)
    {
        sndfnt = 100
        portrait = 0
        message[0] = "* Hoy empezó como cualquier otro# día."
        message[1] = "* Me levanté de la cama, me#  cepillé los colmillos y#  desayuné un buen tazón de maíz."
        message[2] = "* Pops hizo un chiste muy#  gracioso a costa de Broom#  y todos nos reímos."
        message[3] = "* Me puse mi capa y#  salí a dar mi paseo diario."
        message[4] = "* Me he dado cuenta de que#  hoy ha aparecido otro maíz#  azul en tu maizal."
        message[5] = "* Siempre me siento mal por# desechar el maíz especial, pero# no puedo arriesgarme a enfermar."
        message[6] = "* De todas formas..."
        message[7] = "* Algo interesante ocurrió#  un poco más tarde."
        message[8] = "* Escuché a Flier y Penilla# hablando de mí..."
        message[9] = "* Acerca de nosotros..."
        message[10] = "* Dijeron que estaban#  preocupados por mí."
        message[11] = "* Dicen que hablo solo."
        message[12] = "* ..."
        message[13] = "* Penilla then chimed in and#  commented on my advice#  and gifts to you."
        message[14] = "* Mis carteles."
        message[15] = "* Dijeron que no existías..."
        message[16] = "* Eso no es verdad."
        message[17] = "* Lo sabes."
        message[18] = "* Lo sé."
        message[19] = "* Me diste la mano#  cuando más lo necesitaba."
        message[20] = "* ...me ayudaste a sobrellevar# el pasado..."
        message[21] = "* ¿Cómo pueden ser tan malos?"
        message[22] = "* ¿Qué saben ellos?"
        message[23] = "* No los necesito."
        message[24] = "* Porque..."
        message[25] = "* Porque te tengo a ti."
        message[26] = "* ..."
        message[27] = "* Ha pasado un año."
        message[28] = "* ..."
        message[29] = "* Aún estoy esperando."
    }
    if (!global.dialogue_open)
    {
        waiter = 4
        timer = 30
    }
}
if (waiter == 4)
{
    if (!scr_timer())
        return;
    scr_text()
    with (msg)
    {
        sndfnt = 99
        portrait = 0
        message[0] = "* (La entrada termina ahí.)"
    }
    if (!global.dialogue_open)
        waiter = 5
}
if (waiter == 5)
{
    if audio_is_playing(diary_music)
        audio_stop_sound(diary_music)
    if (npc_flag == 0)
        npc_flag = 1
    waiter = 0
    scr_cutscene_end()
}
if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag)
