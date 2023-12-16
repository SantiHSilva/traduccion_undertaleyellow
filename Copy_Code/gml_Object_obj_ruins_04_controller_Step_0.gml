var actor_toriel = obj_toriel_npc
switch scene
{
    case 0:
        cutscene_wait(0.25)
        break
    case 1:
        scr_text()
        with (msg)
        {
            talker[0] = actor_toriel
            message[0] = "* En esta sala, deberás#  de activar varios#  interruptores."
            message[1] = "* No te preocupes, he#  marcado los que#  necesitas activar."
            prt[0] = 343
            prt[1] = 343
        }
        if (!global.dialogue_open)
        {
            scene++
            scr_cutscene_end()
        }
        break
    case 2:
        cutscene_npc_walk(actor_toriel, 470, 140, (3 + (obj_pl.is_sprinting * 2)), "x", "left", "nothing")
        break
    case 3:
        if actor_toriel.interact
        {
            scr_text()
            with (msg)
            {
                talker[0] = actor_toriel
                message[0] = "* Oh, ¿Necesitas#  ayuda?"
                message[1] = "* Por favor, activa#  el interruptor en la#  pared norte."
                prt[0] = 340
                prt[1] = 343
            }
        }
        with (obj_switch2)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                audio_play_sound(snd_switch, 1, false)
                image_index = 1
                other.scene += 1
                instance_destroy(obj_inviswall)
            }
        }
        break
    case 4:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = actor_toriel
            message[0] = "* ¡Magnífico! Estoy#  orgulloso de ti#  mi niño."
            prt[0] = 343
        }
        actor_toriel.npc_direction = "up"
        break
    case 5:
        cutscene_npc_walk(actor_toriel, 688, 140, (3 + (obj_pl.is_sprinting * 2)), "x", "left")
        actor_toriel.walk_speed_x = (3 + (obj_pl.is_sprinting * 2))
        break
    case 6:
        if actor_toriel.interact
        {
            scr_text()
            with (msg)
            {
                talker[0] = actor_toriel
                message[0] = "* Vamos, ¡yo creo en ti!"
                message[1] = "* Sólo queda un#  interruptor más."
                prt[0] = 343
                prt[1] = 343
            }
        }
        with (obj_switch3)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                audio_play_sound(snd_switch, 1, false)
                image_index = 1
                other.scene += 1
                global.cutscene = true
            }
        }
        with (obj_switch4)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                scr_text()
                with (msg)
                {
                    talker[0] = actor_toriel
                    message[0] = "* ¡Oh no, mi niño! Ese#  es el interruptor#  equivocado."
                    message[1] = "* Yo te señale#  el que necesitas activar."
                    prt[0] = 340
                    prt[1] = 343
                }
            }
        }
        with (obj_switch2)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                scr_text()
                with (msg)
                {
                    talker[0] = actor_toriel
                    message[0] = "* Ese interruptor#  ya esta activado."
                    message[1] = "* ¿Por qué no vuelvas#  a cruzar el puente?"
                    prt[0] = 340
                    prt[1] = 343
                }
            }
        }
        break
    case 7:
        cutscene_npc_direction(actor_toriel, "up")
        break
    case 8:
        cutscene_wait(1)
        break
    case 9:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = actor_toriel
            message[0] = "* ...Ya debería#  haberse abierto..."
            message[1] = "* Estoy segura de haber#  señalado el interruptor#  correcto..."
            message[2] = "* ¡Ah, no te preocupes,#  pequeño! Intenta activar#  el otro interruptor."
            prt[0] = 340
            prt[1] = 340
            prt[2] = 343
        }
        break
    case 10:
        scr_cutscene_end()
        cutscene_npc_direction(actor_toriel, "left")
        break
    case 11:
        if actor_toriel.interact
        {
            scr_text()
            with (msg)
            {
                talker[0] = actor_toriel
                message[0] = "* No estoy seguro de#  por qué ese interruptor#  no funciona..."
                message[1] = "* Por favor, intenta #  activar el otro#  interruptor."
                prt[0] = 340
                prt[1] = 343
            }
        }
        with (obj_switch4)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                audio_play_sound(snd_switch, 1, false)
                image_index = 1
                other.scene += 1
                global.cutscene = true
            }
        }
        with (obj_switch3)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                scr_text()
                with (msg)
                {
                    talker[0] = actor_toriel
                    message[0] = "* Debo de haber marcado#  mal el interruptor."
                    message[1] = "* Me disculpo si te he#  confundido, mi niño."
                    message[2] = "* Por favor,#  activa el interruptor#  no marcado."
                    prt[0] = 340
                    prt[1] = 340
                    prt[2] = 343
                }
            }
        }
        with (obj_switch2)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                scr_text()
                with (msg)
                {
                    talker[0] = actor_toriel
                    message[0] = "* Um..."
                    message[1] = "* No me referia a eso."
                    message[2] = "* Tienes que activar#  el interruptor que#  no has activado."
                    prt[0] = 340
                    prt[1] = 340
                    prt[2] = 343
                }
            }
        }
        break
    case 12:
        cutscene_npc_direction(actor_toriel, "up")
        break
    case 13:
        instance_create(obj_pl.x, obj_pl.y, obj_playerfall)
        instance_destroy(obj_pl)
        cutscene_advance()
        break
    case 14:
        cutscene_audio_fade(obj_radio.current_song, 0, 500, 1, 0)
        break
    case 15:
        cutscene_dialogue()
        with (msg)
        {
            skippable = 0
            message[0] = "* !..."
            prt[0] = 341
        }
        if cutscene_wait(1)
            instance_destroy(msg)
        break
    case 16:
        cutscene_npc_walk(actor_toriel, 638, 80, 4, "x", "up")
        break
    case 17:
        cutscene_wait(2)
        break
    case 18:
        global.item_slot[1] = "Nothing"
        if (!instance_exists(obj_transition2))
        {
            trn = instance_create(x, y, obj_transition2)
            trn.newRoom = 11
            trn.xx = x
            trn.yy = y
            trn.fadespeed = 1
            scene++
        }
        break
}

