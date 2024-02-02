var xbound_left = 50
var xbound_right = 180
var ybound_top = 100
var ybound_bottom = 190
switch scene
{
    case 0:
        cutscene_wait(2)
        break
    case 1:
        cutscene_dialogue()
        with (msg)
        {
            ch_msg = 16
            ch[1] = "Sí"
            ch[2] = "No"
            talker[0] = 1161
            message[0] = "* Ouch... No puedo decir#  que me esperaba eso."
            message[1] = "* Sabía que mi esposo#  era ingeniero pero nunca#  me habló de ese robot."
            message[2] = "* Mencionaba un proyecto de#  robótica por el que#  lo ascecnderían pero..."
            message[3] = "* Dejó de hablar de eso#  cuando renunció a este#  trabajo."
            message[4] = "* Agh..."
            message[5] = "* Iba usar la fuerza para#  pasar a \"Axis\" pero yo..#  No estoy segura ahora."
            message[6] = "* Podría ser el último#  remanente del talento de#  Chujin."
            message[7] = "* Sería mejor si podemos#  simplemente evitarlo por#  ahora..."
            message[8] = "* ..."
            message[9] = "* Como fuere, tenemos#  suerte de que sea el#  único guardia por aquí."
            message[10] = "* Un momento..."
            message[11] = "* ¡Tengo una idea!"
            message[12] = "* Mencionó que se sentía#  \"solo\", ¿verdad? Bueno,#  ¿y si cambiamos eso?"
            message[13] = "* ¡Podemos usar chatarra#  para construirle un#  acompañante!"
            message[14] = "* No parece muy listo#  después de todo. "
            message[15] = "* ¿Quizás con eso basta#  para distraerlo?"
            message[16] = "* ¿Qué piensas?"
            prt[0] = 368
            prt[1] = 377
            prt[2] = 370
            prt[3] = 394
            prt[4] = 368
            prt[5] = 366
            prt[6] = 394
            prt[7] = 370
            prt[8] = 371
            prt[9] = 377
            prt[10] = 393
            prt[11] = 372
            prt[12] = 370
            prt[13] = 371
            prt[14] = 395
            prt[15] = 372
            prt[16] = 370
            if (outcome == 1)
            {
                message[17] = "* ¡Genial!"
                message[18] = "* Fue lo mejor que#  se me ocurrió."
                prt[17] = 372
                prt[18] = 395
            }
            if (outcome == 2)
            {
                message[17] = "* ¿Tienes una mejor idea?"
                message[18] = "* Será fácil, confía."
                prt[17] = 368
                prt[18] = 370
            }
            message[19] = "* Entonces... "
            message[20] = "* Parece que estamos en#  algún tipo de depósito."
            message[21] = "* Intenta buscar cosas#  que podamos usar. Con#  algunas debe bastar."
            prt[19] = 377
            prt[20] = 370
            prt[21] = 370
        }
        break
    case 2:
        cutscene_npc_walk(1161, 105, 125, 3, "x", "down")
        break
    case 3:
        global.sworks_flag[3] = 1
        obj_ceroba_npc.npc_direction = "down"
        scr_cutscene_end()
        cutscene_advance()
        break
    case 4:
        if obj_ceroba_npc.interact
        {
            scr_text()
            with (msg)
            {
                talker[0] = 1161
                message[0] = "* Encuentra algo que#  se vea como parte#  de un robot."
                message[1] = "* Yo que sé, sé creativo."
                prt[0] = 370
                prt[1] = 377
            }
        }
        var robot_part_inside_zone = 0
        if (robot_part_no_loop == 0)
        {
            with (obj_robuild_parent)
            {
                if (robot_item_is_carried && point_in_rectangle(x, y, xbound_left, ybound_top, xbound_right, ybound_bottom))
                    robot_part_inside_zone = 1
            }
        }
        if robot_part_inside_zone
        {
            if (obj_pl.x > (obj_ceroba_npc.x + 15))
            {
                obj_ceroba_npc.npc_direction_hold = "down"
                obj_ceroba_npc.npc_direction = "right"
            }
            scr_text()
            switch robot_part_current
            {
                case 0:
                    with (msg)
                    {
                        talker[0] = 1161
                        message[0] = "* ¿Quiéres usar esto?"
                        prt[0] = 370
                        ch_msg = 0
                        ch[1] = "Afirmativo"
                        ch[2] = "Negativo"
                    }
                    break
                case 1:
                    with (msg)
                    {
                        talker[0] = 1161
                        message[0] = "* ¿Crees que eso sirva?"
                        prt[0] = 370
                        ch_msg = 0
                        ch[1] = "Seguro"
                        ch[2] = "No lo sé"
                    }
                    break
                case 2:
                    with (msg)
                    {
                        talker[0] = 1161
                        message[0] = "* ¿Buena elección?"
                        prt[0] = 370
                        ch_msg = 0
                        ch[1] = "Obvio"
                        ch[2] = "Definitivamente\nno"
                    }
                    break
                case 3:
                    with (msg)
                    {
                        talker[0] = 1161
                        message[0] = "* ¿Esta es tu elección#  final?"
                        prt[0] = 370
                        ch_msg = 0
                        ch[1] = "Seh"
                        ch[2] = "Nah"
                    }
                    break
            }

            with (msg)
            {
                if (outcome == 1)
                {
                    global.cutscene = true
                    with (obj_robuild_parent)
                    {
                        if (robot_item_is_carried == 1)
                        {
                            robot_item_is_jumping = 1
                            robot_item_can_pickup = 0
                            robot_item_x_target = obj_steamworks_13_controller.robot_part_xx[obj_steamworks_13_controller.robot_part_current]
                            robot_item_y_target = obj_steamworks_13_controller.robot_part_yy[obj_steamworks_13_controller.robot_part_current]
                            audio_play_sound(snd_playerjump, 1, false)
                            obj_steamworks_13_controller.robot_part[obj_steamworks_13_controller.robot_part_current] = editor_sprite
                        }
                    }
                    other.robot_part_current += 1
                    other.robot_part_no_loop = 1
                    other.scene++
                }
                if (outcome == 2)
                {
                    message[1] = "* Busca otra cosa entonces."
                    prt[1] = 368
                    other.robot_part_no_loop = 1
                }
            }
        }
        break
    case 5:
        with (obj_robuild_parent)
        {
            if robot_item_is_carried
                return;
        }
        cutscene_dialogue()
        switch robot_part_current
        {
            case 1:
                with (msg)
                {
                    talker[0] = 1161
                    message[0] = "* Okei, necesitaremos#  tres objetos más."
                    prt[0] = 370
                }
                break
            case 2:
                with (msg)
                {
                    talker[0] = 1161
                    message[0] = "* Muy bien, dos más y#  podemos hacer esto."
                    prt[0] = 370
                }
                break
            case 3:
                with (msg)
                {
                    talker[0] = 1161
                    message[0] = "* Un objeto más hará la#  magia."
                    prt[0] = 370
                }
                break
            case 4:
                with (msg)
                {
                    talker[0] = 1161
                    message[0] = "* ¡Okei, hagamos un robot!"
                    prt[0] = 372
                }
                break
        }

        break
    case 6:
        if (robot_part_current < 4)
        {
            scene = 4
            global.cutscene = false
            other.robot_part_no_loop = 0
            obj_ceroba_npc.npc_direction = "down"
        }
        else
            scene = 7
        break
    case 7:
        cutscene_audio_fade(obj_radio.current_song, 0, 800, 0.15, 0, 1)
        break
    case 8:
        if global.dialogue_open
            return;
        if (!instance_exists(obj_robot_build_controller))
            instance_create(0, 0, obj_robot_build_controller)
        for (var i = 0; i < array_length_1d(robot_part); i++)
            obj_robot_build_controller.robot_item[i] = robot_part[i]
        cutscene_advance()
        break
    case 9:
        if (!instance_exists(obj_robot_build_controller))
        {
            scr_radio_restart()
            cutscene_advance()
        }
        if (obj_robot_build_controller.destroy_self == 1)
        {
            with (obj_ceroba_npc)
            {
                x = 90
                y = 190
                npc_direction = "up"
            }
            with (obj_pl)
            {
                x = 130
                y = 190
                direction = 90
            }
            if (!instance_exists(obj_steamworks_13_robuild_complete))
            {
                instance_create(110, 140, obj_steamworks_13_robuild_complete)
                overworld_robot_sprite[6] = 0
                for (i = 0; i < array_length(robot_part); i++)
                {
                    switch robot_part[i]
                    {
                        case 1515:
                            overworld_robot_sprite[2] += 1
                            overworld_robot_sprite[6] += 1
                            break
                        case 1513:
                            overworld_robot_sprite[2] += 1
                            overworld_robot_sprite[3] += 1
                            break
                        case 1516:
                            overworld_robot_sprite[4] += 1
                            overworld_robot_sprite[6] += 1
                            break
                        case 1522:
                            overworld_robot_sprite[4] += 1
                            overworld_robot_sprite[5] += 1
                            break
                        case 1519:
                            overworld_robot_sprite[1] += 1
                            break
                        case 1514:
                            overworld_robot_sprite[2] += 1
                            overworld_robot_sprite[3] += 1
                            break
                        case 1512:
                            overworld_robot_sprite[0] += 2
                            break
                        case 1521:
                            overworld_robot_sprite[0] += 1
                            overworld_robot_sprite[4] += 1
                            overworld_robot_sprite[5] += 1
                            break
                        case 1518:
                            overworld_robot_sprite[1] += 1
                            overworld_robot_sprite[0] += 1
                            break
                    }

                }
                var new_image_index = 0
                var max_points = max(overworld_robot_sprite[0], overworld_robot_sprite[1], overworld_robot_sprite[2], overworld_robot_sprite[3], overworld_robot_sprite[4], overworld_robot_sprite[5], overworld_robot_sprite[6])
                i = 0
                patata = 1
                while patata
                {
                    if (i < array_length(overworld_robot_sprite))
                    {
                        if (max_points == overworld_robot_sprite[i])
                        {
                            new_image_index = i
                            patata = 0
                        }
                        else
                            i++
                    }
                }
                global.sworks_flag[44] = new_image_index
                obj_steamworks_13_robuild_complete.image_index = new_image_index
                cutscene_wait(1)
                break
            }
            else
            {
                with (obj_robuild_parent)
                {
                    if point_in_rectangle(x, y, xbound_left, ybound_top, xbound_right, ybound_bottom)
                        instance_destroy()
                }
                cutscene_wait(1)
                break
            }
        }
        else
            break
    case 10:
        cutscene_wait(1)
        break
    case 11:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = 1161
            message[0] = "* Con eso debería quedar."
            message[1] = "* Eres un poco creativo#  cuando las cosas se#  complican."
            message[2] = "* Respeto al trabajo#  de Chujin pero esto#  debería engañar a Axis."
            message[3] = "* Yo lo llevo por ti."
            prt[0] = 370
            prt[1] = 372
            prt[2] = 395
            prt[3] = 372
        }
        break
    case 12:
        cutscene_npc_walk(1161, 110, 160, 3, "x", "up")
        break
    case 13:
        obj_ceroba_npc.action_sprite = 1
        obj_ceroba_npc.sprite_index = spr_ceroba_up_walk
        obj_ceroba_npc.image_speed = (1/3)
        global.sworks_flag[6] = 4
        cutscene_advance()
        break
    case 14:
        cutscene_wait(0.5)
        break
    case 15:
        obj_ceroba_npc.action_sprite = 0
        instance_destroy(obj_steamworks_13_robuild_complete)
        cutscene_sfx_play(snd_steamworks_13_robot, 1)
        break
    case 16:
        cutscene_npc_direction(obj_ceroba_npc, "down")
        break
    case 17:
        cutscene_wait(0.5)
        break
    case 18:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = 1161
            message[0] = "* Salgamos de aquí, ¿si?"
            prt[0] = 370
        }
        break
    case 19:
        cutscene_npc_walk(1161, (obj_pl.x - 30), obj_pl.y, 3, "y", "right")
        obj_pl.direction = 0
        break
    case 20:
        global.party_member = obj_ceroba_follower
        with (instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y, global.party_member))
            npc_reset = 1
        instance_destroy(obj_ceroba_npc)
        global.sworks_flag[3] = 2
        instance_destroy()
        scr_cutscene_end()
        break
}

if (robot_part_no_loop == 1)
{
    with (obj_pl)
    {
        if (!(point_in_rectangle(x, y, (xbound_left - 10), (ybound_top - 10), (xbound_right + 10), (ybound_bottom + 10))))
            other.robot_part_no_loop = 0
    }
}
