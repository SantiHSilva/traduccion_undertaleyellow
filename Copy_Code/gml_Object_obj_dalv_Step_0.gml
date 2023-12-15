script_execute(gml_Script_scr_depth, 0, 0, 0, 0, 0)
if (fadeout == 1)
    scr_npc_fade()
if (room == rm_darkruins_07 && global.flag[25] == 1)
{
    instance_destroy()
    return;
}
if (!instance_exists(obj_pl))
    return;
if (room == rm_darkruins_07)
{
    if (global.flag[25] == 0)
    {
        if (obj_pl.x > 800)
        {
            with (obj_radio)
                audio_sound_gain(bgm, 0, 1000)
            obj_pl.state = gml_Script_scr_frozen_state
            global.cutscene = true
            obj_pl.image_speed = 0
            obj_pl.image_index = 0
            if (timer < 130 || (timer >= 132 && timer < 210) || (timer >= 212 && timer < 235) || (timer >= 237 && timer < 350))
                timer++
            if (timer == 30)
            {
                cam = instance_create(obj_pl.x, obj_pl.y, obj_camera)
                cam.speed = 2
                __view_set((9 << 0), 0, 1120)
                direction = 0
            }
            if (timer == 130)
            {
                speed = 0
                image_speed = 0
                image_index = 0
                if (!instance_exists(obj_dialogue))
                    msg = instance_create(x, y, obj_dialogue)
                with (msg)
                {
                    sndfnt = 100
                    message[0] = "* Hola..."
                    message[1] = "* Me alegro de conocerte#  por fin cara a cara."
                    message[2] = "* ¿Cuanto tiempo ha pasado?"
                    message[3] = "* Me preguntaba si#  alguna vez volverías..."
                    message[4] = "* ..."
                    message[5] = "* No... demasiado adelantado."
                    message[6] = "* ¿A quién quiero engañar? Nunca#  podré conocerte en este#  estado."
                    message[7] = "* Solo quiero que sepas... que#  no tuve opción. Debe ser así."
                    portrait = 0
                }
                timer++
            }
            if (timer == 131 && (!instance_exists(obj_dialogue)))
            {
                speed = 0.6
                timer++
            }
            if (timer == 210)
            {
                image_speed = 0
                image_index = 0
                speed = 0
                if (!instance_exists(obj_dialogue))
                    msg = instance_create(x, y, obj_dialogue)
                with (msg)
                {
                    sndfnt = 100
                    message[0] = "* ..."
                    message[1] = "* ¿Eh?"
                    portrait = 0
                }
                timer++
            }
        }
        if (timer == 211 && (!instance_exists(obj_dialogue)))
        {
            direction = 270
            timer++
        }
        if (timer == 221 && (!instance_exists(obj_dialogue)))
            direction = 180
        if (timer == 235 && (!instance_exists(obj_dialogue)))
        {
            if (!instance_exists(obj_dialogue))
                msg = instance_create(x, y, obj_dialogue)
            with (msg)
            {
                portrait = 0
                sndfnt = 100
                message[0] = "* ¿Quién...?"
                message[1] = "* Yo-yo debo estar viendo cosas..."
            }
            timer++
        }
        if (timer == 236 && (!instance_exists(obj_dialogue)))
        {
            direction = 180
            image_speed = 0.1
            speed = -0.25
            timer++
        }
        if (timer == 270 && (!instance_exists(obj_dialogue)))
        {
            image_speed = 0
            image_index = 0
            direction = 180
            speed = 0
        }
        if (timer == 310 && (!instance_exists(obj_dialogue)))
        {
            direction = 0
            speed = 2
        }
        if (timer == 350)
        {
            if (!instance_exists(obj_camera))
                cam2 = instance_create(1000, obj_pl.y, obj_camera)
            __view_set((9 << 0), 0, cam2)
            with (cam2)
            {
                direction = 180
                speed = 3
            }
            if (obj_camera.x <= obj_pl.x)
            {
                timer++
                __view_set((9 << 0), 0, 1031)
                global.cutscene = false
                obj_pl.state = gml_Script_scr_normal_state
                global.flag[25] = 1
                with (obj_radio)
                    audio_sound_gain(bgm, 1, 2000)
                with (cam2)
                    instance_destroy()
            }
        }
    }
}
if (room == rm_darkruins_10 && global.flag[3] == 1)
{
    instance_destroy()
    return;
}
if (room == rm_darkruins_10 && global.flag[3] == 0)
{
    obj_rndenc.disabled = 1
    if (obj_pl.x > 420 && obj_pl.y < 240)
    {
        scr_cutscene_start()
        obj_pl.image_speed = 0
        obj_pl.image_index = 0
        if (timer < 30 || (timer >= 32 && timer < 110) || (timer >= 112 && timer < 250) || (timer >= 252 && timer < 310))
            timer++
        if (timer == 30)
        {
            if (!instance_exists(obj_dialogue))
                msg = instance_create(x, y, obj_dialogue)
            with (msg)
            {
                sndfnt = 100
                message[0] = "* ¿Es malo dudar de#  mis acciones?"
                portrait = 0
            }
            timer++
        }
        if (timer == 31 && (!instance_exists(obj_dialogue)))
        {
            cam = instance_create(obj_pl.x, obj_pl.y, obj_camera)
            if (cam.x < 600)
                cam.speed = 3
            else
                cam.speed = 0
            __view_set((9 << 0), 0, 1120)
            timer++
        }
        if (timer == 110)
        {
            if (!instance_exists(obj_dialogue))
                msg = instance_create(x, y, obj_dialogue)
            with (msg)
            {
                sndfnt = 100
                position = 1
                message[0] = "* Disfrutaba de la vida antes...#  Lo hice... Pero no puedo#  volver atrás."
                message[1] = "* Lo que pasó ese día#  solo se repetiría."
                message[2] = "* ..."
                portrait = 0
            }
            timer++
        }
        if (timer == 111 && (!instance_exists(obj_dialogue)))
            timer++
        if (timer == 151 && (!instance_exists(obj_dialogue)))
        {
            direction = 270
            timer++
        }
        if (timer == 190 && (!instance_exists(obj_dialogue)))
            direction = 180
        if (timer == 250 && (!instance_exists(obj_dialogue)))
        {
            if (!instance_exists(obj_dialogue))
                msg = instance_create(x, y, obj_dialogue)
            with (msg)
            {
                sndfnt = 100
                position = 1
                message[0] = "* ¡!"
                message[1] = "* ¿Qué es esto?"
                message[2] = "* ¿Por qué aparecen cada vez#  más que empiezo a monologar? "
                message[3] = "* Necesito descansar más."
                portrait = 0
            }
            timer++
        }
        if (timer == 251 && (!instance_exists(obj_dialogue)))
        {
            direction = 0
            speed = 3
            image_speed = 0.2
            timer++
        }
        if (timer == 310)
        {
            if (!instance_exists(obj_camera))
                cam2 = instance_create(600, obj_pl.y, obj_camera)
            if (cam2.x >= obj_pl.x)
                cam2.speed = -2
            else
            {
                with (cam2)
                    instance_destroy()
                __view_set((9 << 0), 0, 1031)
                scr_cutscene_end()
                global.flag[3] = 1
                obj_rndenc.disabled = 0
                instance_destroy()
            }
        }
    }
}
if (room == rm_darkruins_16 && global.flag[26] == 1)
{
    if (global.flag[17] != 0 && global.dalv_house_enter_count == 0)
        global.dalv_house_enter_count = 1
    instance_destroy()
    return;
}
if (room == rm_darkruins_16 && global.flag[26] == 0)
{
    if (obj_pl.x < 520 && timer == 0)
    {
        with (obj_radio)
            audio_sound_gain(bgm, 0, 1000)
        global.cutscene = true
        obj_pl.image_speed = 0
        obj_pl.image_index = 0
        timer++
    }
    if ((timer > 3 && timer < 60) || (timer > 61 && timer < 70) || (timer > 71 && timer < 80) || (timer > 81 && timer < 110) || (timer > 111 && timer < 140))
        timer++
    if (timer == 1)
    {
        direction = 90
        with (obj_pl)
        {
            direction = 180
            speed = 2
            image_speed = 0.2
        }
        timer++
    }
    if (obj_pl.x <= 380 && timer == 2)
    {
        with (obj_pl)
        {
            direction = 90
            speed = 2
        }
        speed = 0.5
        timer++
    }
    if (obj_pl.y < 260 && timer == 3)
    {
        with (obj_pl)
        {
            direction = 90
            speed = 0
            image_speed = 0
            image_index = 0
        }
        timer++
    }
    if (timer == 30)
        speed = 1
    if (timer == 60)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue)
        with (msg)
        {
            sndfnt = 100
            message[0] = "* ¡Ah!"
            portrait = 0
        }
        speed = 0
        image_index = 0
        image_speed = 0
        timer++
    }
    if (timer == 61 && (!instance_exists(obj_dialogue)))
    {
        direction = 270
        timer++
    }
    if (timer == 70)
    {
        if (!instance_exists(obj_camera))
            cam = instance_create(obj_pl.x, obj_pl.y, obj_camera)
        cam.direction = 90
        cam.speed = 4
        __view_set((9 << 0), 0, cam)
        timer++
    }
    if (timer == 71 && obj_camera.y < y)
    {
        timer = 72
        obj_camera.speed = 0
    }
    if (timer == 80)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue)
        with (msg)
        {
            sndfnt = 100
            message[0] = "* Umm..."
            portrait = 0
        }
        timer++
    }
    if (timer == 81 && (!instance_exists(obj_dialogue)))
    {
        speed = -0.3
        image_speed = 0.2
        timer++
    }
    if (timer == 110)
    {
        speed = 0
        image_speed = 0
        image_index = 0
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue)
        with (msg)
        {
            sndfnt = 100
            portrait = 0
            message[0] = "* No sé quién eres pero..."
            message[1] = "* ¡Por favor, largate!"
        }
        timer++
    }
    if (timer == 111 && (!instance_exists(obj_dialogue)))
    {
        image_speed = 0.2
        path_start(pt_dalv, 3, path_action_stop, 0)
        timer++
    }
    if (timer == 140)
    {
        cam.direction = 270
        cam.speed = 3
        if (cam.y > obj_pl.y)
        {
            with (cam)
                instance_destroy()
            __view_set((9 << 0), 0, 1031)
            global.cutscene = false
            obj_pl.state = gml_Script_scr_normal_state
            global.flag[26] = 1
            with (obj_radio)
                audio_sound_gain(bgm, 1, 2000)
            instance_destroy()
        }
    }
}
if (room == rm_darkruins_18 && global.flag[27] == 1)
{
    instance_destroy()
    return;
}
if (room == rm_darkruins_18 && global.flag[27] == 0)
{
    if (global.flag[17] == 0)
    {
        if (obj_pl.y < 370 && timer == 0)
        {
            global.cutscene = true
            with (obj_radio)
                audio_sound_gain(bgm, 0, 4000)
            obj_pl.image_speed = 0
            obj_pl.image_index = 0
            obj_pl.direction = 90
            cam = instance_create(obj_pl.x, obj_pl.y, obj_camera)
            __view_set((9 << 0), 0, 1120)
            cam.vspeed = -1
            timer++
        }
        if (timer == 1 && cam.y < 320)
        {
            timer++
            cam.vspeed = 0
        }
        if ((timer > 1 && timer < 60) || (timer > 61 && timer < 90) || (timer > 91 && timer < 140) || (timer > 141 && timer < 230) || (timer > 231 && timer < 400))
            timer++
        if (timer == 60)
        {
            scr_text()
            with (msg)
            {
                sndfnt = 100
                message[0] = "* ¿Todavia... me sigues?"
                message[1] = "* Pensé que habia dejado#  claro que quiero que#  me dejen en paz"
                portrait = 0
                position = 0
            }
            timer++
        }
        if (timer == 61 && (!instance_exists(obj_dialogue)))
            timer++
        if (timer == 90)
        {
            direction = 270
            scr_text()
            with (msg)
            {
                sndfnt = 100
                message[0] = "* No entiendo... Tu...#  te pareces a ellos."
                message[1] = "* ¿Es algún tipo de hechizo?#  ¿O has venido a#  terminar el trabajo?"
                message[2] = "* Retirarme aquí no fue#  suficiente,#  así que me cazaste..."
                message[3] = "* ¿Verdad?"
                ch_msg = 3
                ch[1] = "¿Qué?"
                ch[2] = "..."
                portrait = 0
                position = 0
            }
            timer++
        }
        if (timer == 91 && (!instance_exists(obj_dialogue)))
            timer++
        if (timer == 100)
            direction = 90
        if (timer == 140)
        {
            scr_text()
            with (msg)
            {
                sndfnt = 100
                message[0] = "* Y estaba empezando a#  aceptar mi realidad.#  La crueldad..."
                message[1] = "* ..."
                message[2] = "* Lo que te hice ese día#  no fue mi intención,#  yo solo..."
                message[3] = "* No importa. Las palabras#  no son suficientes."
                portrait = 0
                position = 0
            }
            timer++
        }
        if (timer == 141 && (!instance_exists(obj_dialogue)))
            timer++
        if (timer == 160)
            direction = 0
        if (timer == 190)
            direction = 270
        if (timer == 220)
            direction = 90
        if (timer == 230)
        {
            scr_text()
            with (msg)
            {
                sndfnt = 100
                message[0] = "* Yo... No quiero pelear#  con nadie, pero#  has invadido mi casa."
                message[1] = "* La salida está bloqueada#  y no puedes quedarte aquí.#  No lo permitiré."
                portrait = 0
                position = 0
            }
            timer++
        }
        if (timer == 231 && (!instance_exists(obj_dialogue)))
        {
            spritelock = 0
            direction = 45
            sprite_index = spr_hoodoff
            image_speed = 0.2
            hood = 0
            timer++
        }
        if (timer == 370)
        {
            spritelock = 1
            direction = 0
        }
        if (timer == 390)
        {
            spritelock = 1
            direction = 270
        }
        if (timer == 400)
        {
            scr_text()
            with (msg)
            {
                sndfnt = 100
                message[0] = "* Sólo hay una cosa#  que hacer..."
                prt[0] = 1759
                portrait = 1
                position = 0
            }
            timer++
        }
        if (timer == 401 && (!instance_exists(obj_dialogue)))
        {
            image_speed = 0
            instance_create(x, y, obj_flash)
            timer++
        }
    }
    else if (global.flag[17] == 1 || global.flag[17] == 4)
    {
        scr_cutscene_start()
        if (global.geno_complete[1] == 0)
        {
            if (timer == 0)
            {
                direction = 270
                hood = 0
                global.cutscene = true
                scr_text()
                with (msg)
                {
                    sndfnt = 100
                    message[0] = "* ..."
                    message[1] = "* ..."
                    message[2] = "* ..."
                    message[3] = "* ¿Qué hacen realmente#  los amigos?"
                    message[4] = "* ¿Quieres...#  ver mi casa?#  ¿O algo así?"
                    message[5] = "* Tengo que ir allí asi#  que supongo que pasa#  pasa por alli pronto."
                    prt[0] = 1755
                    prt[1] = 1780
                    prt[2] = 1763
                    prt[3] = 1755
                    prt[4] = 1776
                    prt[5] = 1769
                    position = 0
                }
                timer = 1
            }
            if ((!instance_exists(obj_dialogue)) && timer == 1)
                vspeed = -2
            if (y < 160 && timer == 1)
            {
                global.flag[27] = 1
                global.cutscene = false
                obj_pl.state = gml_Script_scr_normal_state
                timer = 2
            }
        }
        else
        {
            scr_cutscene_start()
            if (timer == 0)
            {
                direction = 270
                hood = 0
                global.cutscene = true
                scr_text()
                with (msg)
                {
                    sndfnt = 100
                    message[0] = "¿Me estás... perdonando?"
                    message[1] = "Pero... ¿qué pasa con ellos?"
                    message[2] = "¿Por qué solo yo?"
                    message[3] = "¡Qué me hace tan#especial!"
                    message[4] = "¿O es así como#  planeas hacerme daño?"
                    message[5] = "Llevándoselos a todos..."
                    message[6] = "..."
                    message[7] = "...No los necesito.#Estare bien por mi cuenta."
                    message[8] = "Lo he estado haciendo#lo suficiente..."
                    message[9] = "..."
                    message[10] = "Creo que deberías irte."
                    message[11] = "Ya has hecho#suficiente daño aquí."
                    prt[0] = 1763
                    prt[1] = 1764
                    prt[2] = 1763
                    prt[3] = 1763
                    prt[4] = 1762
                    prt[5] = 1762
                    prt[6] = 1786
                    prt[7] = 1781
                    prt[8] = 1780
                    prt[9] = 1763
                    prt[10] = 1763
                    prt[11] = 1781
                    position = 0
                }
                timer = 1
            }
            if ((!instance_exists(obj_dialogue)) && timer == 1)
                vspeed = -0.5
            if (y < 220 && timer == 1)
            {
                timer = 2
                image_speed = 0
                vspeed = 0
                direction = 90
            }
            if (timer > 1 && timer < 75)
                timer++
            if (timer == 75)
            {
                scr_text()
                with (msg)
                {
                    sndfnt = 100
                    message[0] = "* ..."
                    message[1] = "* Supongo que... Realmente#  estoy solo ahora..."
                    portrait = 0
                    position = 0
                }
                timer = 76
            }
            if ((!instance_exists(obj_dialogue)) && timer == 76)
            {
                vspeed = -1
                alarm[1] = 45
                timer = 77
            }
        }
    }
    else if (global.flag[17] == 3)
    {
        scr_cutscene_start()
        if (timer == 0)
        {
            global.route = 1
            direction = 270
            sprite_index = spr_hoodoff
            hood = 0
            global.cutscene = true
            scr_text()
            with (msg)
            {
                sndfnt = 100
                message[0] = "* Todo esto fue un#  malentendido, ¿verdad?"
                message[1] = "* ..."
                message[2] = "* Estaré esperando en#  mi casa."
                message[3] = "* Ven cuanto te#  apetezca."
                prt[0] = 1755
                prt[1] = 1780
                prt[2] = 1755
                prt[3] = 1755
                position = 0
            }
            timer = 1
        }
        if ((!instance_exists(obj_dialogue)) && timer == 1)
            vspeed = -2
        if (y < 160 && timer == 1)
        {
            global.flag[27] = 1
            global.cutscene = false
            obj_pl.state = gml_Script_scr_normal_state
            timer = 2
        }
    }
    else if (global.flag[17] == 2)
    {
        instance_destroy()
        scr_cutscene_end()
        global.flag[27] = 1
    }
}
if (room == rm_dalvshouse && global.flag[28] == 0)
{
    if (timer == 0)
    {
        global.cutscene = true
        obj_pl.direction = 90
        obj_pl.image_speed = 0
        obj_pl.image_index = 0
        timer = 4
    }
    if (timer > 3 && timer < 30)
        timer++
    if (timer == 30)
    {
        scr_text()
        with (msg)
        {
            if (global.flag[17] == 3)
            {
                global.route = 1
                genoCount = 0
                sndfnt = 100
                message[0] = "* Bienvenido..."
                message[1] = "* Siéntete como en casa."
                message[2] = "* Me voy a mi habitación#  a descansar."
                message[3] = "* Me siento un poco mal."
                message[4] = "* Somos...  amigos ahora#  así que..."
                message[5] = "* Mira lo que quieras"
                message[6] = "* Nos vemos... más tarde."
                prt[0] = 1780
                prt[1] = 1755
                prt[2] = 1780
                prt[3] = 1781
                prt[4] = 1755
                prt[5] = 1755
                prt[6] = 1780
            }
            else if (global.dalv_house_enter_count == 0)
            {
                sndfnt = 100
                message[0] = "* Tengo que...#  arreglar algo en#  otra habitación."
                message[1] = "* Sientate,#  ponte cómodo,#  quítate los zapatos."
                message[2] = "* ..."
                message[3] = "* En realidad por favor,#  dejalas puestas el suelo#  está un poco sucio."
                message[4] = "* No he barrido desde#  esta mañana."
                prt[0] = 1780
                prt[1] = 1776
                prt[2] = 1755
                prt[3] = 1763
                prt[4] = 1763
            }
            else if (global.dalv_house_enter_count == 1)
            {
                sndfnt = 100
                message[0] = "* Parece que te tomaste#  tu tiempo."
                message[1] = "* Oh, pero no te preocupes#  estoy acostumbrado#  a estar solo."
                message[2] = "* Me entretengo#  limpiando la casa."
                message[3] = "* ¡Es mi rutina de#  cada hora!"
                message[4] = "* ..."
                message[5] = "* Tengo que um...#  arreglar algo..."
                prt[0] = 1755
                prt[1] = 1780
                prt[2] = 1776
                prt[3] = 1776
                prt[4] = 1755
                prt[5] = 1780
            }
        }
        timer++
    }
    if (timer == 31 && (!instance_exists(obj_dialogue)))
    {
        timer++
        hood = 0
        image_speed = 0.2
        path_start(pt_dalvhouse, 3, path_action_stop, 0)
        if (global.flag[17] != 3)
            obj_dalv2.alarm[0] = 150
        alarm[0] = 75
    }
}
