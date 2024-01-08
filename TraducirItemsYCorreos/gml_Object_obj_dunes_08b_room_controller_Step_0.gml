var mo = obj_dunes_08b_mo
var stand = obj_dunes_08b_stand
switch scene
{
    case 0:
        if (global.dunes_flag[3] == 0)
        {
            if (obj_pl.y < 320)
            {
                scr_cutscene_start()
                scr_audio_fade(obj_radio.current_song, 500)
                scene++
            }
        }
        else
        {
            with (stand)
            {
                if (scr_interact() && keyboard_multicheck_pressed(0))
                    other.scene = 24
            }
        }
        break
    case 1:
        scr_camera_move(obj_pl.x, 280, 1)
        timer = 60
        scene++
        break
    case 2:
        if (!scr_timer())
            return;
        with (obj_radio)
        {
            bgm = 164
            global.radio_restart = 1
        }
        instance_create(200, 460, obj_dunes_08b_mo)
        with (mo)
        {
            x_dest[0] = x
            y_dest[0] = 370
            npc_dynamic_depth = 0
            depth = (-room_height)
        }
        timer = 25
        scene++
        break
    case 3:
        with (mo)
        {
            if npc_arrived
            {
                with (other)
                {
                    if (!scr_timer())
                    {
                    }
                }
                path_start(pt_small_jump, 4, path_action_stop, 0)
                audio_play_sound(snd_playerjump, 1, false)
                instance_create(x, (y - 29), obj_cutscene_ex)
                other.timer = 30
                other.scene++
            }
        }
        break
    case 4:
        if instance_exists(obj_cutscene_ex)
            obj_cutscene_ex.y = (mo.y - 29)
        if (!scr_timer())
            return;
        instance_destroy(obj_cutscene_ex)
        with (mo)
        {
            image_speed = 0.4
            image_index = 0
            action_sprite = 1
            sprite_index = spr_mo_dunes_sleeves
            other.scene++
        }
        break
    case 5:
        with (mo)
        {
            if (floor(image_index) == 4 || floor(image_index) == 11)
                audio_play_sound(snd_fabric_rip, 1, false)
            if (floor(image_index) == 20)
            {
                if (!audio_is_playing(snd_mo_pop))
                    audio_play_sound(snd_mo_pop, 1, false)
            }
            if on_animation_end()
            {
                action_sprite = 0
                up_sprite = 958
                right_sprite = 960
                down_sprite = 962
                left_sprite = 961
                up_sprite_idle = 964
                right_sprite_idle = 960
                down_sprite_idle = 963
                left_sprite_idle = 961
                other.scene++
            }
        }
        break
    case 6:
        with (mo)
        {
            x_dest[0] = x
            y_dest[0] = 460
            actor_speed = 5
            can_walk = 1
        }
        scene++
        break
    case 7:
        with (mo)
        {
            if npc_arrived
            {
                x = -15
                y = 250
                action_sprite = 1
                can_walk = 0
                hsp = 6
                sprite_index = spr_mo_slide_dunes
                audio_play_sound(snd_mo_slide, 1, false)
                npc_dynamic_depth = 1
                other.scene++
            }
        }
        break
    case 8:
        with (mo)
        {
            var xtarget = 160
            if (global.route == 3)
                xtarget = 200
            if (hsp > 0)
            {
                if (x > (xtarget - 175))
                    hsp -= 0.1
                x += hsp
            }
            if (x > xtarget)
            {
                action_sprite = 0
                npc_direction = "down"
                x = xtarget
                other.timer = 15
                other.scene++
            }
        }
        break
    case 9:
        if (!scr_timer())
            return;
        scr_text()
        if (global.route != 3)
        {
            with (msg)
            {
                position = 0
                talker[0] = mo
                message[0] = "* ¡Bam!"
                message[1] = "* ¿Adivina quién es?"
                message[2] = "* ¡Así es! ¡Es Mo!"
                message[3] = "* ¡Cuánto tiempo!"
                message[4] = "* ¿Cómo has estado?#  No contestes,#  no tenemos tiempo."
                message[5] = "* ¡Estoy aquí para hacerte#  una NUEVA. OFERTA!"
                message[6] = "* ¡Un clima cálido#  requiere un artículo cálido!"
                message[7] = "* ¡Compruébalo!"
            }
            scene++
        }
        else
        {
            with (msg)
            {
                position = 0
                talker[0] = mo
                message[0] = "* ¡Bam! ¡Wam! ¡Shang-a-lang!"
                message[1] = "* ¡Es la hora de Mo!"
                message[2] = "* Y ya sabes lo que dicen:"
                message[3] = "* ¡No hay mejor MOMENTO#  que el de MO!"
                message[4] = "* Espera..."
                message[5] = "* Tú eres ese...#  ese humano de Snowdin."
                message[6] = "* Hay rumores muy#  desagradables sobre ti..."
                if (message_current == 0)
                    message_check = 0
                if (message_current == 4 && message_check < 4)
                {
                    scr_music_sudden_stop(mus_gimme_ur_cash_yellow, 3, 1)
                    message_check = 4
                    obj_dunes_08b_mo.down_sprite_idle = 3352
                    other.scene = 9.1
                    other.timer = 45
                }
            }
        }
        break
    case 9.1:
        if (global.dialogue_open || (!scr_timer()))
        {
        }
        if (obj_dunes_08b_mo.down_sprite != 963)
        {
            obj_dunes_08b_mo.down_sprite_idle = 963
            scr_music_sudden_stop(mus_gimme_ur_cash_yellow, 10, 0)
        }
        scr_text()
        with (msg)
        {
            position = 0
            talker[0] = mo
            message[0] = "* Pero, ¡vamos! Todos#  cometimos algún delito#  en nuestra vida, ¿verdad?"
            message[1] = "* Para mí, una pizca de hurto,#  una pizca de fraude fiscal...#  ¡Delito dietético!"
            message[2] = "* Para ti, alteración del#  orden público, agresión,#  varios... homicidios..."
            message[3] = "* ¡SUPUESTAMENTE!"
            message[4] = "* ¿Quién tiene pruebas,#  verdad? ¡Los chismes#  tienen que ser chismes!"
            message[5] = "* ..."
            message[6] = "* Así que probablemente estés#  pensando: \"¿Qué vende este#  gato tan guapo?\"."
            message[7] = "* En primer lugar, no soy un#  gato ¡pero agradezco#  el cumplido!"
            message[8] = "* Tenía toda esta historia sobre#  el \"Agua\" pero, oye,#  ¿para mi mejor cliente?"
            message[9] = "* ¡Voy a pasar DIRECTAMENTE#  al inventario premium!#"
            message[10] = "* ¡Compruébalo!"
        }
        scene = 9.2
        break
    case 9.2:
        if ((!global.dialogue_open) && cutscene_npc_action_sprite(1615, 980, 0.25, 0, 0, 303, 2))
            scene = 9.3
        break
    case 9.3:
        if (!scr_timer())
            return;
        stand = instance_create(-60, 240, obj_dunes_08b_stand)
        stand.hsp = 8.7
        audio_play_sound(snd_mo_stand_depart, 1, false)
        audio_resume_sound(obj_radio.current_song)
        scene = 9.4
        break
    case 9.4:
        with (stand)
        {
            if (hsp > 0)
            {
                hsp -= 0.1
                x += hsp
            }
            if (x > 200)
            {
                x = 200
                other.scene = 9.5
            }
        }
        break
    case 9.5:
        if cutscene_npc_walk(1615, 240, obj_dunes_08b_mo.y, 2, "y", "down", -4, 205, 230)
            scene = 23
        break
    case 10:
        if global.dialogue_open
            return;
        with (mo)
        {
            action_sprite = 1
            image_speed = 0.4
            image_index = 0
            sprite_index = spr_mo_dunes_water
            other.scene++
        }
        obj_dunes_08b_dispenser.image_index = 1
        break
    case 11:
        with (mo)
        {
            if (floor(image_index) == 7)
            {
                if (!audio_is_playing(snd_tarpdrop))
                    audio_play_sound(snd_tarpdrop, 1, false)
            }
            if on_animation_end()
            {
                instance_create(mo.x, mo.y, obj_dunes_08b_mo_tarp)
                action_sprite = 0
                other.scene++
            }
        }
        break
    case 12:
        scr_text()
        with (msg)
        {
            position = 0
            ch_msg = 4
            ch[1] = "Sí"
            ch[2] = "No"
            talker[0] = mo
            message[0] = "* ¡Eeeeso es!"
            message[1] = "* Esta vez lo hice todo. ¡Esto#  es un verdadero lujo por aquí!"
            message[2] = "* Se llama AGUA. Nombre#  pegadizo, ¡lo sé!"
            message[3] = "* Por suerte para ti, ¡estoy#  regalando muestras gratis!"
            message[4] = "* ¿Quieres un vaso?"
            if (outcome == 1)
            {
                message[5] = "* ¡Ahora mismo!"
                other.scene++
            }
            if (outcome == 2)
            {
                message[5] = "* ¡Oh, vamos, amigo!"
                message[6] = "* ¡Tu lengua debe estar tan#  seca como el suelo!"
                message[7] = "* ¡Déjame que te invite!"
                other.scene++
            }
        }
        break
    case 13:
        if global.dialogue_open
            return;
        with (mo)
        {
            x_dest[0] = x
            y_dest[0] = 220
            x_dest[1] = 232
            y_dest[1] = 252
            actor_speed = 2
            can_walk = 1
            other.scene++
        }
        break
    case 14:
        with (mo)
        {
            if (!npc_arrived)
                return;
            action_sprite = 1
            image_speed = 0.4
            image_index = 0
            sprite_index = spr_mo_dunes_dispense
            obj_dunes_08b_dispenser.image_index = 2
            instance_create(199, 269, part_steam_mo)
            other.scene++
        }
        break
    case 15:
        with (mo)
        {
            if (floor(image_index) == 7)
            {
                if (!audio_is_playing(snd_mo_kicks_the_bucket))
                    audio_play_sound(snd_mo_kicks_the_bucket, 1, false)
            }
            if (floor(image_index) == 16)
            {
                if (!audio_is_playing(snd_switch))
                    audio_play_sound(snd_switch, 1, false)
            }
            if (floor(image_index) == 59)
                audio_pause_sound(obj_radio.current_song)
            if (floor(image_index) == 75)
            {
                if (!audio_is_playing(snd_drip))
                    audio_play_sound(snd_drip, 1, false)
            }
            if on_animation_end()
            {
                image_speed = 0
                with (obj_dunes_08b_dispenser)
                {
                    image_index = 3
                    depth = (mo.depth - 1)
                }
                other.scene++
                other.timer = 15
            }
        }
        break
    case 16:
        if (!scr_timer())
            return;
        with (mo)
        {
            instance_create(198, 270, obj_dunes_08b_mo_bucket)
            mo.y -= 2
            action_sprite = 0
            npc_direction = "left"
            other.timer = 15
            other.scene++
        }
        break
    case 17:
        if (!scr_timer())
            return;
        with (mo)
        {
            action_sprite = 0
            npc_direction = "right"
            other.timer = 15
            other.scene++
        }
        break
    case 18:
        if (!scr_timer())
        {
        }
        mo.npc_direction = "down"
        scr_text()
        with (msg)
        {
            position = 0
            talker[0] = mo
            message[0] = "* Un momento."
        }
        scene++
        break
    case 19:
        if global.dialogue_open
            return;
        with (mo)
        {
            x_dest[0] = -40
            y_dest[0] = y
            actor_speed = 6
            can_walk = 1
        }
        timer = 60
        scene++
        break
    case 20:
        if mo.npc_arrived
        {
            if (!scr_timer())
                return;
            stand = instance_create(-60, 240, obj_dunes_08b_stand)
            stand.hsp = 8.7
            audio_play_sound(snd_mo_stand_depart, 1, false)
            audio_resume_sound(obj_radio.current_song)
            with (mo)
            {
                hsp = 7.3
                action_sprite = 1
                y = 230
                sprite_index = spr_mo_slide_dunes
            }
            scene++
        }
        break
    case 21:
        with (stand)
        {
            if (hsp > 0)
            {
                hsp -= 0.1
                x += hsp
            }
            if (x > 200)
            {
                x = 200
                other.scene++
                audio_play_sound(snd_mo_slide, 1, false)
            }
        }
        break
    case 22:
        with (mo)
        {
            if (hsp > 0)
            {
                hsp -= 0.1
                x += hsp
            }
            if (x > 200)
            {
                x = 200
                action_sprite = 0
                npc_direction = "down"
                other.scene++
            }
        }
        break
    case 23:
        scr_text()
        with (msg)
        {
            position = 0
            talker[0] = mo
            if (global.route != 3)
            {
                message[0] = "* Si conoces a tu chico#  Mo, sabes que planeé#  todo eso."
                message[1] = "* Aquí está mi producto REAL:#  ¡ICE TEA!"
                message[2] = "* Es como la secuela del agua.#  ¡Pero mucho mejor!"
                message[3] = "* Ahora, voy a ser realista#  contigo."
                message[4] = "* El té no lleva hielo#  particularmente."
                message[5] = "* Empezó como un vaso de hielo,#  pero se derritió."
                message[6] = "* Lo único que tuve que hacer#  fue echar una bolsita#  de té y ¡WAM!"
                message[7] = "* ¡No te preocupes!#  Sabe mejor así."
            }
            else
            {
                message[0] = "* ¡Ice Tea, nena!"
                message[1] = "* ¡Es como la secuela del agua!"
                message[2] = "* Así que..."
                message[3] = "* ¡Esta es la parte en la#  que gastas el ORO que#  pueden pertenecerte o no!"
                message[4] = "* Hey, no estoy aquí para#  juzgar, ¡Estoy aquí#  para vivir!"
            }
        }
        if (!global.dialogue_open)
            scene++
        break
    case 24:
        scr_text()
        with (msg)
        {
            dialogue_is_minishop = 1
            portrait = 0
            position = 0
            ch_msg = 0
            ch[1] = obtenerItemSpanish("Ice Tea")
            ch[2] = obtenerItemSpanish("Green Tea")
            ch[3] = obtenerItemSpanish("Sea Tea")
            ch[4] = "Cancelar"
            if (global.extra_flag[4] == 1)
                ch[1] = "-VENDIDO-"
            if (global.extra_flag[5] == 1)
                ch[2] = "-VENDIDO-"
            if (global.extra_flag[6] == 1)
                ch[3] = "-VENDIDO-"
            talker[0] = mo
            message[0] = "* Esto es lo que tengo. (20 ORO)"
            if (global.dunes_flag[3] == 1)
            {
                message[0] = "* ¡BAM!"
                message[1] = "* ¡Bienvenido de vuelta!"
                message[2] = "* Esto es lo que tengo. (20 ORO)"
                ch_msg = 2
            }
            switch outcome
            {
                case 1:
                case 2:
                case 3:
                    ch_msg = -1
                    if (global.extra_flag[(outcome + 3)] == 0)
                    {
                        if (!scr_inventory_check_space())
                        {
                            message[(message_current + 1)] = "* Uh-oh, parece que#  no tienes espacio para#  este item."
                            message[(message_current + 2)] = "* Vuelve cuando hayas#  hecho algo más de#  espacio."
                        }
                        else if (global.player_gold < 20)
                            message[(message_current + 1)] = "* Lo siento, amigo.#  Voy a necesitar más#  ORO que eso."
                        else
                        {
                            message[(message_current + 1)] = "* Gran elección."
                            message[(message_current + 2)] = "* ¡Bebe!"
                            global.player_gold -= 20
                            scr_item(ch[outcome])
                            global.extra_flag[(outcome + 3)] = 1
                            audio_play_sound(snd_shop_purchase, 1, false)
                        }
                    }
                    else
                    {
                        message[(message_current + 1)] = "* ¡Que artículo tan popular!#  Ojalá pudiera venderte más,#  pero se me han acabado."
                        choice = 0
                    }
                    other.scene++
                    break
                case 4:
                    ch_msg = -1
                    message[(message_current + 1)] = "* Vamos, amigo."
                    message[(message_current + 2)] = "* Sé que mi tono fue un#  poco descuidado, pero#  lo intento de verdad."
                    message[(message_current + 3)] = "* Si cambias de opinión,#  estaré aquí."
                    other.scene++
                    break
            }

        }
        break
    case 25:
        if global.dialogue_open
            return;
        if (global.extra_flag[4] && global.extra_flag[5] && global.extra_flag[6])
        {
            scene = 27
            scr_cutscene_start()
            return;
        }
        if scr_camera_move(obj_pl.x, obj_pl.y, 1)
        {
            global.dunes_flag[3] = 1
            __view_set((9 << 0), 0, 1031)
            scr_cutscene_end()
            scene = 0
        }
        break
    case 27:
        cutscene_dialogue()
        with (msg)
        {
            message[0] = "* El alfabeto debe tener#  ahora 25 letras, ¡porque#  me he quedado sin T!"
            message[1] = "* ¡Estoy seguro de que nos#  volveremos a ver! ¡Gracias#  por creer en mí!"
            talker[0] = 1615
        }
        break
    case 28:
        scr_audio_fade_out(mus_gimme_ur_cash_yellow, 300)
        cutscene_npc_action_sprite(1615, 980, 0.25, 0, 0, 303, 2)
        break
    case 29:
        with (obj_dunes_08b_stand)
            hspeed = -6
        audio_play_sound(snd_mo_stand_depart, 1, false)
        scene++
        break
    case 30:
        cutscene_wait(2)
        break
    case 31:
        cutscene_dialogue()
        with (msg)
        {
            message[0] = "* ¡MO, FUERA!"
            talker[0] = 1615
        }
        break
    case 32:
        cutscene_npc_walk(1615, -40, 260, 4, "y", "left")
        break
    case 33:
        if (global.party_member != -4)
        {
            cutscene_advance(34)
            return;
        }
        cutscene_advance(35)
        break
    case 34:
        cutscene_dialogue()
        with (msg)
        {
            sndfnt = 102
            talker[0] = 1170
            message[0] = "* Ese Mo es raro.	"
            message[1] = "* Habría hablado con él#  pero no sé cómo...#  de legal es su negocio."
            message[2] = "* Nuestra conversación podría#  haberse vuelto muy incómoda,#  muy rápido."
            prt[0] = 321
            prt[1] = 324
            prt[2] = 321
        }
        break
    case 35:
        instance_destroy()
        instance_destroy(obj_dunes_08b_mo)
        instance_destroy(obj_dunes_08b_stand)
        global.dunes_flag[3] = 2
        scr_radio_restart()
        scr_cutscene_end()
        break
}

