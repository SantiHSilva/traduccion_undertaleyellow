script_execute(gml_Script_scr_depth, 0, 0, 0, 0, 0)
if (global.route == 2 && global.flag[21] == 0)
{
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            portrait = 1
            sndfnt = 100
            message[0] = "* Bueno, aquí estamos."
            message[1] = "* Gracias..."
            message[2] = "* Por todo."
            message[3] = "* Me has ayudado mucho."
            message[4] = "* Por eso..."
            message[5] = "* Me voy de aquí."
            message[6] = "* Estoy cansado de estar#  solo."
            message[7] = "* Llevará unos días#  empacar..."
            message[8] = "* Pero creo que estoy#  listo para darle otra#  oportunidad al Subsuelo."
            message[9] = "* Tengo tanta#  creatividad acumulada."
            message[10] = "* Por fin estoy listo#  para mostrar mi talento."
            message[11] = "* Puedo publicar mi novela,# tener un concierto de#  órganos."
            message[12] = "* ¡Incluso podría hacer#  otro amigo!"
            message[13] = "* Qué mundo sería#  si tuviera dos amigos#  enteros."
            message[14] = "* Iré por ahí y pondré#  maíz en todas las#  puertas."
            message[15] = "* Todo el mundo necesita#  un poco de maíz en#  su vida."
            message[16] = "* Llevo un año comiendo#  maíz todos los días y me#  va medianamente bien."
            message[17] = "* Tanto que aprender,#  tanto que enseñar. Estoy#  muy emocionado."
            message[18] = "* Uy. Ya estoy otra#  vez con mis tonterias."
            message[19] = "* Salgamos de aquí."
            message[20] = "* Oh..."
            message[21] = "* Parece que la salida#  está bloqueada..."
            message[22] = "* Veamos."
            prt[0] = 1755
            prt[1] = 1769
            prt[2] = 1769
            prt[3] = 1769
            prt[4] = 1780
            prt[5] = 1776
            prt[6] = 1763
            prt[7] = 1780
            prt[8] = 1776
            prt[9] = 1761
            prt[10] = 1769
            prt[11] = 1769
            prt[12] = 1761
            prt[13] = 1761
            prt[14] = 1769
            prt[15] = 1769
            prt[16] = 1776
            prt[17] = 1769
            prt[18] = 1768
            prt[19] = 1776
            prt[20] = 1755
            prt[21] = 1755
            prt[22] = 1755
        }
        waiter++
    }
    if (waiter == 2 && instance_exists(obj_dialogue))
    {
        if (msg.message_current == 20)
            direction = 90
        else
            direction = 270
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
    {
        direction = 90
        if (y > 80)
        {
            npc_walking = 1
            y -= 2
            if (y < 80)
                y = 80
        }
        if (y == 80)
        {
            npc_walking = 0
            waiter++
        }
    }
    if (waiter == 3 && sprite_index != spr_dalv_npc_boards_pacifist)
    {
        if (no_loop_sound == 0)
        {
            audio_play_sound(snd_wood_pull, 1, false)
            no_loop_sound = 1
        }
        sprite_index = spr_dalv_npc_boards_pacifist
        image_speed = (1/3)
        image_index = 0
    }
    if (waiter == 4)
    {
        direction = 270
        sprite_index = cdalv_down
        y += 21
        scr_text()
        with (msg)
        {
            portrait = 1
            sndfnt = 100
            ch_msg = 2
            ch[1] = "Clover"
            message[0] = "* Ya está.#  Ya está todo listo."
            message[1] = "* Oh, antes de que lo# olvide, ¡nunca pregunté#  por tu nombre!"
            message[2] = "* ¿Te importaría#  informarme?"
            message[3] = "* ¿Clover? Qué bonito#  nombre."
            message[4] = "* Bueno, Clover,#  muchas gracias."
            message[5] = "* Nos vemos luego..."
            message[6] = "* Amigo."
            prt[0] = 1776
            prt[1] = 1769
            prt[2] = 1776
            prt[3] = 1769
            prt[4] = 1776
            prt[5] = 1769
            prt[6] = 1773
        }
        waiter++
    }
    if (waiter == 5 && (!instance_exists(obj_dialogue)))
    {
        spritelock = 1
        if (x != 160 || y != 170)
            scr_walk_ai(160, 170, obj_pl, 2, 0)
        with (obj_pl)
        {
            if (distance_to_object(obj_dalv3) <= 20 && obj_dalv3.no_loop_autowalk == 0)
            {
                clover_walk_backwards = 1
                autowalk_direction = "left"
                state = gml_Script_scr_autowalk_state
                alarm[1] = 10
                obj_dalv3.no_loop_autowalk = 1
            }
        }
        if (x == 160 && y == 170)
        {
            npc_walking = 0
            image_speed = 0
            image_index = 0
            fadeout = 1
            if (image_alpha <= 0.2)
            {
                instance_create(144, 188, obj_dalvExit_blocker)
                waiter++
            }
        }
    }
    if (waiter == 6)
    {
        global.flag[29] = 1
        global.cutscene = false
        waiter = 0
        with (obj_pl)
        {
            autowalk_direction = "right"
            state = gml_Script_scr_autowalk_state
            alarm[1] = 10
        }
    }
}
else if (global.route == 2 && global.flag[21] == 1)
{
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            portrait = 1
            sndfnt = 100
            message[0] = "* Bueno, aquí estamos."
            message[1] = "* Debería darte las gracias..."
            message[2] = "* Por haberme ayudado#  tanto."
            message[3] = "* Por eso..."
            message[4] = "* Me voy de aquí."
            message[5] = "* Estoy cansado de estar#  solo."
            message[6] = "* Llevará unos días#  empacar..."
            message[7] = "* Pero creo que estoy#  listo para darle otra#  oportunidad al Subsuelo."
            message[8] = "* Supongo que debo#  sacarte de aquí pero..."
            message[9] = "* Honestamente, me#  confundes."
            message[10] = "* Me hiciste daño pero,#  sin embargo, me#  diste libertad."
            message[11] = "* ¿Eso es lo que hacen#  los amigos de verdad?"
            message[12] = "* Si es así, no sé#  si realmente quiera#  irme."
            message[13] = "* Si todo el mundo me#  hará daño entonces#  ayúdame..."
            message[14] = "* ¿Es ese un lugar en el que quiero estar?"
            message[15] = "* Bueno... No puedo#  dejar pasar esta#  oportunidad."
            message[16] = "* No pasa nada,#  te perdono."
            message[17] = "* Probablemente te#  asusté..."
            message[18] = "* La mayoría de los#  monstruos son..."
            message[19] = "* ..."
            message[20] = "* Parece que la salida#  está bloqueada..."
            message[21] = "* Yo me encargo."
            prt[0] = 1755
            prt[1] = 1769
            prt[2] = 1769
            prt[3] = 1780
            prt[4] = 1759
            prt[5] = 1763
            prt[6] = 1780
            prt[7] = 1776
            prt[8] = 1755
            prt[9] = 1763
            prt[10] = 1768
            prt[11] = 1768
            prt[12] = 1763
            prt[13] = 1763
            prt[14] = 1780
            prt[15] = 1759
            prt[16] = 1776
            prt[17] = 1755
            prt[18] = 1780
            prt[19] = 1755
            prt[20] = 1763
            prt[21] = 1755
        }
        waiter++
    }
    if (waiter == 2 && instance_exists(obj_dialogue))
    {
        if (msg.message_current == 19)
            direction = 90
        else
            direction = 270
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
        waiter++
    if (waiter == 3 && sprite_index != spr_dalv_npc_boards_neutral)
    {
        if (no_loop_sound == 0)
        {
            audio_play_sound(snd_wood_zap, 1, false)
            no_loop_sound = 1
        }
        sprite_index = spr_dalv_npc_boards_neutral
        image_speed = (1/3)
        image_index = 0
    }
    if (waiter == 4)
    {
        direction = 270
        sprite_index = cdalv_down
        scr_text()
        with (msg)
        {
            portrait = 1
            sndfnt = 100
            ch_msg = 2
            ch[1] = "Clover"
            message[0] = "* Ya está.#  Ya está todo listo."
            message[1] = "* Oh, antes de que lo# olvide, ¡nunca pregunté#  por tu nombre!"
            message[2] = "* ¿Te importaría#  informarme?"
            message[3] = "* ¿Clover? Qué bonito#  nombre."
            message[4] = "* Bueno, Clover,#  deberías irte."
            message[5] = "* Nos vemos luego..."
            message[6] = "* Amigo."
            prt[0] = 1776
            prt[1] = 1769
            prt[2] = 1776
            prt[3] = 1769
            prt[4] = 1776
            prt[5] = 1769
            prt[6] = 1773
        }
        waiter++
    }
    if (waiter == 5 && (!instance_exists(obj_dialogue)))
    {
        spritelock = 1
        if (x != 160 || y != 170)
            scr_walk_ai(160, 170, obj_pl, 2, 0)
        with (obj_pl)
        {
            if (distance_to_object(obj_dalv3) <= 20 && obj_dalv3.no_loop_autowalk == 0)
            {
                clover_walk_backwards = 1
                autowalk_direction = "left"
                state = gml_Script_scr_autowalk_state
                alarm[1] = 10
                obj_dalv3.no_loop_autowalk = 1
            }
        }
        if (x == 160 && y == 170)
        {
            npc_walking = 0
            image_speed = 0
            image_index = 0
            fadeout = 1
            if (image_alpha <= 0.2)
            {
                instance_create(144, 188, obj_dalvExit_blocker)
                waiter++
            }
        }
    }
    if (waiter == 6)
    {
        global.flag[29] = 1
        global.cutscene = false
        waiter = 0
        with (obj_pl)
        {
            autowalk_direction = "right"
            state = gml_Script_scr_autowalk_state
            alarm[1] = 10
        }
    }
}
else if (global.route == 1 && global.flag[21] == 0)
{
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            portrait = 1
            sndfnt = 100
            message[0] = "* Bueno, aquí estamos."
            message[1] = "* Gracias..."
            message[2] = "* Por todo."
            message[3] = "* Me has ayudado mucho."
            message[4] = "* Por eso..."
            message[5] = "* Voy a ser más#  amigable."
            message[6] = "* Voy a ser el mentor#  que siempre debí haber#  sido."
            message[7] = "* Penilla y yo dibujaremos#  juntos,"
            message[8] = "* Rorrim podría darle vida#  a mi guardarropa,"
            message[9] = "* y Crispy Scroll podra#  mostrarme ese \"anime\"."
            message[10] = "* Pensé en irme..."
            message[11] = "* ¿Pero por qué irme#  cuando tengo una gran#  familia aquí mismo?"
            message[12] = "* Además, realmente#  he dejado ir este lugar.."
            message[13] = "* ¡Una semana de#  limpieza sin parar!"
            message[14] = "* ..."
            message[15] = "* Bueno... Debería#  sacarte de aquí."
            message[16] = "* Oh..."
            message[17] = "* Parece que la salida#  está bloqueada..."
            message[18] = "* Veamos."
            prt[0] = 1755
            prt[1] = 1776
            prt[2] = 1769
            prt[3] = 1769
            prt[4] = 1769
            prt[5] = 1769
            prt[6] = 1769
            prt[7] = 1761
            prt[8] = 1761
            prt[9] = 1761
            prt[10] = 1780
            prt[11] = 1776
            prt[12] = 1763
            prt[13] = 1759
            prt[14] = 1780
            prt[15] = 1755
            prt[16] = 1768
            prt[17] = 1763
            prt[18] = 1755
        }
        waiter++
    }
    if (waiter == 2 && instance_exists(obj_dialogue))
    {
        if (msg.message_current == 16)
            direction = 90
        else
            direction = 270
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
    {
        direction = 90
        if (y > 80)
        {
            npc_walking = 1
            y -= 3
            if (y < 80)
                y = 80
        }
        if (y == 80)
        {
            npc_walking = 0
            waiter++
        }
    }
    if (waiter == 3 && sprite_index != spr_dalv_npc_boards_pacifist)
    {
        if (no_loop_sound == 0)
        {
            audio_play_sound(snd_wood_pull, 1, false)
            no_loop_sound = 1
        }
        sprite_index = spr_dalv_npc_boards_pacifist
        image_speed = (1/3)
        image_index = 0
    }
    if (waiter == 4)
    {
        direction = 270
        sprite_index = cdalv_down
        y += 21
        scr_text()
        with (msg)
        {
            ch_msg = 2
            ch[1] = "Clover"
            portrait = 1
            sndfnt = 100
            message[0] = "* Ya está.#  Ya está todo listo."
            message[1] = "* Oh, antes de que lo# olvide, ¡nunca pregunté#  por tu nombre!"
            message[2] = "* ¿Te importaría#  informarme?"
            message[3] = "* ¿Clover? Qué bonito#  nombre."
            message[4] = "* Bueno, Clover,#  deberías irte."
            message[5] = "* Adiós..."
            message[6] = "* Amigo."
            prt[0] = 1776
            prt[1] = 1769
            prt[2] = 1776
            prt[3] = 1769
            prt[4] = 1776
            prt[5] = 1769
            prt[6] = 1773
        }
        waiter++
    }
    if (waiter == 5 && (!instance_exists(obj_dialogue)))
    {
        spritelock = 1
        if (x != 160 || y != 170)
            scr_walk_ai(160, 170, obj_pl, 3, 0)
        with (obj_pl)
        {
            if (distance_to_object(obj_dalv3) <= 20 && obj_dalv3.no_loop_autowalk == 0)
            {
                clover_walk_backwards = 1
                autowalk_direction = "left"
                state = gml_Script_scr_autowalk_state
                alarm[1] = 10
                obj_dalv3.no_loop_autowalk = 1
            }
        }
        if (x == 160 && y == 170)
        {
            npc_walking = 0
            image_speed = 0
            image_index = 0
            fadeout = 1
            if (image_alpha <= 0.2)
            {
                instance_create(144, 188, obj_dalvExit_blocker)
                waiter++
            }
        }
    }
    if (waiter == 6)
    {
        global.flag[29] = 2
        global.cutscene = false
        waiter = 0
        with (obj_pl)
        {
            autowalk_direction = "right"
            state = gml_Script_scr_autowalk_state
            alarm[1] = 10
        }
    }
}
else if (global.route == 1 && global.flag[21] == 1)
{
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            portrait = 1
            sndfnt = 100
            message[0] = "* Bueno, aquí estamos."
            message[1] = "* Debería darte las gracias..."
            message[2] = "* Me has ayudado mucho."
            message[3] = "* Por eso..."
            message[4] = "* Voy a ser amable#  con todo el mundo."
            message[5] = "* ..."
            message[6] = "* Supongo que debería#  sacarte de aquí pero..."
            message[7] = "* Honestamente,#  me confundes."
            message[8] = "* Me hiciste daño pero,#  sin embargo, tú#  me abriste los ojos."
            message[9] = "* ¿Es eso lo que hacen#  los amigos de verdad?"
            message[10] = "* Me iría pero..."
            message[11] = "* Si todo el mundo me#  hará daño entonces#  ayúdame..."
            message[12] = "* ¿Es ese un lugar en el que quiero estar?"
            message[13] = "* No."
            message[14] = "* He vivido aquí mucho tiempo."
            message[15] = "* Es cómodo y conozco#  a los residentes."
            message[16] = "* Lo desconocido da#  miedo..."
            message[17] = "* No estoy preparado para#  ello..."
            message[18] = "* Al menos todavía no."
            message[19] = "* Los monstruos de aquí#  necesitan a alguien a#  quien admirar."
            message[20] = "* Podría hacerles felices."
            message[21] = "* ..."
            message[22] = "* Bueno, en fin. Parece#  que la salida está#  bloqueada..."
            message[23] = "* Yo me encargo."
            prt[0] = 1755
            prt[1] = 1769
            prt[2] = 1769
            prt[3] = 1769
            prt[4] = 1769
            prt[5] = 1755
            prt[6] = 1780
            prt[7] = 1763
            prt[8] = 1763
            prt[9] = 1763
            prt[10] = 1780
            prt[11] = 1763
            prt[12] = 1763
            prt[13] = 1759
            prt[14] = 1755
            prt[15] = 1769
            prt[16] = 1763
            prt[17] = 1764
            prt[18] = 1768
            prt[19] = 1776
            prt[20] = 1769
            prt[21] = 1780
            prt[22] = 1755
            prt[23] = 1755
        }
        waiter++
    }
    if (waiter == 2 && instance_exists(obj_dialogue))
    {
        if (msg.message_current == 21)
            direction = 90
        else
            direction = 270
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
        waiter++
    if (waiter == 3 && sprite_index != spr_dalv_npc_boards_neutral)
    {
        if (no_loop_sound == 0)
        {
            audio_play_sound(snd_wood_zap, 1, false)
            no_loop_sound = 1
        }
        sprite_index = spr_dalv_npc_boards_neutral
        image_speed = (1/3)
        image_index = 0
    }
    if (waiter == 4)
    {
        direction = 270
        sprite_index = cdalv_down
        scr_text()
        with (msg)
        {
            portrait = 1
            sndfnt = 100
            ch_msg = 2
            ch[1] = "Clover"
            message[0] = "* Ya está.#  Ya está todo listo."
            message[1] = "* Oh, antes de que lo# olvide, ¡nunca pregunté#  por tu nombre!"
            message[2] = "* ¿Te importaría#  informarme?"
            message[3] = "* ¿Clover? Qué bonito#  nombre."
            message[4] = "* Bueno, Clover,#  deberías irte."
            message[5] = "* Adiós..."
            message[6] = "* Amigo."
            prt[0] = 1776
            prt[1] = 1769
            prt[2] = 1776
            prt[3] = 1769
            prt[4] = 1776
            prt[5] = 1776
            prt[6] = 1769
        }
        waiter++
    }
    if (waiter == 5 && (!instance_exists(obj_dialogue)))
    {
        spritelock = 1
        if (x != 160 || y != 170)
            scr_walk_ai(160, 170, obj_pl, 3, 0)
        with (obj_pl)
        {
            if (distance_to_object(obj_dalv3) <= 20 && obj_dalv3.no_loop_autowalk == 0)
            {
                clover_walk_backwards = 1
                autowalk_direction = "left"
                state = gml_Script_scr_autowalk_state
                alarm[1] = 10
                obj_dalv3.no_loop_autowalk = 1
            }
        }
        if (x == 160 && y == 170)
        {
            npc_walking = 0
            image_speed = 0
            image_index = 0
            fadeout = 1
            if (image_alpha <= 0.2)
            {
                instance_create(144, 188, obj_dalvExit_blocker)
                waiter++
            }
        }
    }
    if (waiter == 6)
    {
        global.flag[29] = 2
        global.cutscene = false
        waiter = 0
        with (obj_pl)
        {
            autowalk_direction = "right"
            state = gml_Script_scr_autowalk_state
            alarm[1] = 10
        }
    }
}
with (other)
{
    if (fadeout == 1)
        scr_npc_fade()
    if (sprite_index != spr_dalv_npc_boards_pacifist && sprite_index != spr_dalv_npc_boards_neutral)
    {
        if (spritelock == 1)
        {
            if (vspeed != 0 || hspeed != 0 || path_speed != 0 || npc_walking == 1)
            {
                switch (direction div 90)
                {
                    case 0:
                        sprite_index = cdalv_right
                        break
                    case 1:
                        sprite_index = cdalv_up
                        break
                    case 2:
                        sprite_index = cdalv_left
                        break
                    case 3:
                        sprite_index = cdalv_down
                        break
                }

            }
            else
            {
                switch (direction div 90)
                {
                    case 0:
                        sprite_index = cdalv_rightt
                        break
                    case 1:
                        sprite_index = cdalv_up
                        break
                    case 2:
                        sprite_index = cdalv_leftt
                        break
                    case 3:
                        sprite_index = cdalv_downt
                        break
                }

                if (instance_exists(obj_dialogue) && obj_dialogue.sndfnt == 100)
                {
                    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
                    {
                        image_speed = 0
                        image_index = 0
                    }
                    else
                        image_speed = 0.2
                }
            }
        }
        if (speed > 0)
            image_speed = 0.2
    }
}
var __b__ = action_if_variable(fadein, 1, 0)
if __b__
    script_execute(gml_Script_anim_fade, 0.05, 0, 0, 0, 0)
