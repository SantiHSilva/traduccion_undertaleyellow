with (other)
{
    if (global.route != 3 && global.flag[17] == 1)
    {
        if (waiter == 0)
            sprite_index = spr_wardrobe
        if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
            waiter = 1
        if (waiter > 0)
        {
            if (waiter > 2 && waiter < 30)
                waiter++
            if (waiter == 1)
            {
                scr_text()
                with (msg)
                {
                    if (global.interaction_count_wardrobe == 0)
                    {
                        if (!instance_exists(obj_dialoguebox_dummy))
                            instance_create(0, 0, obj_dialoguebox_dummy)
                        portrait = 0
                        sndfnt = 99
                        message[0] = "* (Es un guardarropa de aspecto#  intimidatorio.)"
                        message[1] = "* (¿Abrirlo?)"
                        if (outcome == 1 && message_current == 1)
                        {
                            message[2] = "* (Hay un globo flotando lentamente en#  su interior. Tiene dibujada una#  carita de felicidad.)"
                            obj_wardrobe.sprite_index = spr_wardrobalon
                            obj_wardrobe.waiter = 2
                        }
                        if (outcome == 2 && message_current == 1)
                        {
                            message[2] = "* (Respeta la privacidad de Dalv.)"
                            global.interaction_count_wardrobe++
                            obj_wardrobe.waiter = 0
                            with (obj_dialoguebox_dummy)
                                instance_destroy()
                        }
                        if ((message_current + 1) == 1)
                        {
                            ch_msg = 1
                            ch[1] = "Sí"
                            ch[2] = "No"
                        }
                    }
                    else
                    {
                        portrait = 1
                        sndfnt = 100
                        message[0] = "* ..."
                        prt[0] = 1755
                        obj_wardrobe.waiter = 2
                    }
                }
            }
            if (waiter == 2 && (!instance_exists(obj_dialogue)))
            {
                if (global.interaction_count_wardrobe == 0)
                {
                    obj_dalv2.direction = 180
                    scr_cutscene_start()
                    global.interaction_count_wardrobe++
                    waiter++
                }
                else
                {
                    waiter = 0
                    with (obj_dialoguebox_dummy)
                        instance_destroy()
                }
            }
            if (waiter == 30)
            {
                scr_text()
                with (msg)
                {
                    sndfnt = 100
                    message[0] = "* Hola. ¿Te importaría#  darle a Pops su espacio?"
                    message[1] = "* Le gusta la oscuridad..."
                    prt[0] = 1763
                    prt[1] = 1763
                }
                waiter++
            }
            if (waiter == 31 && (!instance_exists(obj_dialogue)))
            {
                obj_dalv2.direction = 270
                scr_text()
                with (msg)
                {
                    sndfnt = 99
                    message[0] = "* (Te despides de Pops#  antes de volver a cerrar#  la puerta.)"
                    portrait = 0
                }
                waiter = 32
            }
            if (waiter == 32)
            {
                obj_dalv2.direction = 270
                if (!instance_exists(obj_dialogue))
                {
                    with (obj_dialoguebox_dummy)
                        instance_destroy()
                    waiter = 0
                    global.cutscene = false
                }
            }
        }
    }
    else if (global.flag[17] != 1 && global.route != 3)
    {
        if (waiter == 0)
            sprite_index = spr_wardrobe
        if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
            waiter = 1
        if (waiter == 1)
        {
            scr_text()
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* (Es un guardarropa de aspecto#  intimidatorio.)"
                message[1] = "* (¿Abrirlo?)"
                if (outcome == 1 && message_current == 1)
                {
                    message[2] = "* (Hay un globo flotando lentamente en#  su interior. Tiene dibujada una#  carita de felicidad.)"
                    message[3] = "* (Le dices adiós con la#  mano antes de volver a#  cerrar la puerta.)"
                    obj_wardrobe.sprite_index = spr_wardrobalon
                    obj_wardrobe.waiter = 2
                }
                if (outcome == 2 && message_current == 1)
                {
                    message[2] = "* (Respeta la privacidad de Dalv.)"
                    obj_wardrobe.waiter = 2
                }
                if ((message_current + 1) == 1)
                {
                    ch_msg = 1
                    ch[1] = "Sí"
                    ch[2] = "No"
                }
            }
        }
        if (waiter == 2 && (!instance_exists(obj_dialogue)))
        {
            global.cutscene = false
            waiter = 0
            obj_pl.alarm[0] = 1
        }
    }
    else if (global.route == 3)
    {
        if (waiter == 0)
            sprite_index = spr_wardrobe
        if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
            waiter = 1
        if (waiter == 1)
        {
            global.cutscene = true
            scr_text()
            with (msg)
            {
                if (global.interaction_count_wardrobe == 0)
                {
                    portrait = 0
                    sndfnt = 99
                    message[0] = "* (Es un vestuario negro#  de mal gusto.)"
                    message[1] = "* (Lo abres.)"
                    message[2] = "* (Hay un globo flotando#  lentamente en su interior.)"
                    message[3] = "* (Lo desatas e inhalas algo#  de su contenido.)"
                    obj_wardrobe.waiter++
                    global.interaction_count_wardrobe++
                }
                else
                {
                    portrait = 0
                    sndfnt = 99
                    message[0] = "* (Hay que respetar a los muertos.)"
                    obj_wardrobe.sprite_index = spr_wardrodeflate
                    obj_wardrobe.image_speed = 0
                    obj_wardrobe.image_index = 16
                    obj_wardrobe.waiter = 6
                }
            }
        }
        if (waiter == 2 && instance_exists(obj_dialogue))
        {
            if (obj_dialogue.message_current >= 2)
            {
                sprite_index = spr_wardrobalon
                waiter++
            }
        }
        if (waiter == 3 && (!instance_exists(obj_dialogue)))
        {
            sprite_index = spr_wardrodeflate
            image_speed = (1/3)
            image_index = 0
            audio_play_sound(snd_pops_deflate, 1, false)
            waiter++
        }
        if (waiter == 5)
        {
            scr_text()
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* (Ahora suenas gracioso.)"
                message[1] = "* ..."
                message[2] = "* (Ya no suenas gracioso.)"
                obj_wardrobe.waiter++
            }
        }
        if (waiter == 6 && (!instance_exists(obj_dialogue)))
        {
            global.cutscene = false
            waiter = 0
            obj_pl.alarm[0] = 1
        }
    }
}
