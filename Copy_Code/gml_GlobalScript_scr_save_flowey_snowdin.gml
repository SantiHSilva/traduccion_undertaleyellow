function scr_save_flowey_snowdin() //gml_Script_scr_save_flowey_snowdin
{
    var current_room = room_get_name(room)
    global.menu_sprite = 1245
    current_save_number = 1
    scr_determine_save_area()
    if (global.flowey_save_number < current_save_number)
        global.flowey_save_number = current_save_number
    scr_text()
    with (msg)
    {
        sndfnt = 96
        var kill_number = global.kill_number[2]
        if global.player_can_travel
        {
            message[0] = "* Pongámonos en marcha."
            prt[0] = 348
        }
        else if (global.snowdin_flag[13] != 0)
        {
            if (global.route == 3)
            {
                switch global.flowey_flag[12]
                {
                    case 0:
                        message[0] = "* ¡Buenas!"
                        message[1] = "* ..."
                        message[2] = "* Vayamos al río#  más adelante."
                        message[3] = "* Pronto nos#  iremos de aquí."
                        prt[0] = 348
                        prt[1] = 357
                        prt[2] = 348
                        prt[3] = 347
                        global.flowey_flag[12] = (global.flowey_flag[12] + 1)
                        break
                    case 1:
                        message[0] = "* ..."
                        prt[0] = 353
                        break
                }

            }
            else if (global.snowdin_flag[13] == 1)
            {
                switch global.flowey_flag[12]
                {
                    case 0:
                        message[0] = "* ¡Buenas!"
                        message[1] = "* Gran trabajo, una#  vez más."
                        message[2] = "* Odio que los monstruos#  te ataquen sin#  piedad,"
                        message[3] = "* ¡Pero lo estás#  manejando con estilo!"
                        message[4] = "* No estoy seguro de#  confiar en ella."
                        message[5] = "* Por suerte para nosotros,#  ella no parece demasiada#  preparada."
                        message[6] = "* Podemos deshacernos#  de ella en cuanto#  estropee algo."
                        message[7] = "* Estoy seguro de que#  no tardará mucho,#  ¡jaja!"
                        prt[0] = 348
                        prt[1] = 348
                        prt[2] = 357
                        prt[3] = 348
                        prt[4] = 347
                        prt[5] = 347
                        prt[6] = 349
                        prt[7] = 348
                        global.flowey_flag[12] = (global.flowey_flag[12] + 1)
                        break
                    case 1:
                        message[0] = "* Vamos, Clover,#  Martlet nos espera."
                        prt[0] = 348
                        break
                }

            }
            else if (global.snowdin_flag[13] >= 2)
            {
                switch global.flowey_flag[12]
                {
                    case 0:
                        message[0] = "* ¡Buenas!"
                        message[1] = "* Vayamos al río#  más adelante."
                        message[2] = "* ¡Pronto nos iremos#de aquí!"
                        prt[0] = 348
                        prt[1] = 348
                        prt[2] = 348
                        global.flowey_flag[12] = (global.flowey_flag[12] + 1)
                        break
                    case 1:
                        message[0] = "* ¡Buenas!"
                        prt[0] = 348
                        break
                }

            }
        }
        else if (global.kill_number[1] <= 0 && global.kill_number[2] <= 15 && global.flowey_flag[13] == 0)
        {
            global.flowey_flag[13] = 1
            if (kill_number <= 10)
            {
                instance_destroy()
                scr_save_flowey_snowdin()
                return;
            }
            message[0] = "* Vaya, sí que vives#  al límite."
            message[1] = "* Supongo que te#  atacaron primero."
            message[2] = "* No puedes meterte#  en problemas por#  defensa propia."
            prt[0] = 357
            prt[1] = 354
            prt[2] = 348
        }
        else if (global.kill_number[2] <= 10 && global.flowey_flag[13] == 1)
        {
            global.flowey_flag[13] = 2
            if (kill_number <= 5)
            {
                instance_destroy()
                scr_save_flowey_snowdin()
                return;
            }
            message[0] = "* Me pareció ver algo de#  polvo por ahí."
            message[1] = "* Podría haber sido sólo#  la nieve."
            message[2] = "* Al menos, eso es#  lo que pensarían#  los demás."
            prt[0] = 348
            prt[1] = 347
            prt[2] = 349
        }
        else if (global.kill_number[2] <= 5 && global.flowey_flag[13] == 2)
        {
            global.flowey_flag[13] = 3
            if (kill_number <= 0)
            {
                instance_destroy()
                scr_save_flowey_snowdin()
                return;
            }
            message[0] = "* ¡Wow, chico!#  ¡Hablas en serio!"
            message[1] = "* ¿Qué es eso?#  ¿Quince?#  ¿Dieciséis?"
            message[2] = "* Impresionante."
            prt[0] = 348
            prt[1] = 348
            prt[2] = 348
        }
        else if (global.kill_number[2] <= 0 && global.flowey_flag[13] == 3)
        {
            message[0] = "* Wow."
            message[1] = "* Mismo efecto."
            message[2] = "* Este lugar pasó de agradable#  a espeluznante muy rápido."
            message[3] = "* Debe haber sido#  un nuevo récord o algo así."
            message[4] = "* Por el lado bueno,#  ¡ya no tendrás que#  pagar por el café!"
            prt[0] = 352
            prt[1] = 352
            prt[2] = 353
            prt[3] = 348
            prt[4] = 349
            global.flowey_flag[13] = 4
        }
        else if (global.flowey_flag[13] == 4)
        {
            message[0] = "* No sabría decir si es#  la temperatura o la#  atmósfera, pero vaya."
            message[1] = "* Sí que hace frío."
            message[2] = "* Deberías moverte."
            prt[0] = 352
            prt[1] = 352
            prt[2] = 352
        }
        else if (other.current_save_number < global.flowey_save_number)
        {
            message[0] = "* ¿Qué haces aquí atrás?#  ¡La salida es por#  el otro lado, tonto!"
            message[1] = "* En marcha."
            prt[0] = 352
            prt[1] = 348
        }
        else
        {
            switch current_room
            {
                case "rm_snowdin_03_yellow":
                    if (global.route == 3)
                    {
                        switch global.flowey_flag[7]
                        {
                            case 0:
                                message[0] = "* ¿Has estado pensando#  en lo que dije?"
                                message[1] = "* Con el debido respeto#  a su proceso de toma#  de decisiones..."
                                message[2] = "* Pero, ¿le importaría#  darse prisa?"
                                message[3] = "* Hace frío aquí y#  no quiero congelarme."
                                prt[0] = 348
                                prt[1] = 353
                                prt[2] = 352
                                prt[3] = 352
                                break
                            case 1:
                                message[0] = "* Muévete, niño."
                                message[1] = "* Habrá más tiempo#  para pensar después."
                                prt[0] = 352
                                prt[1] = 352
                                break
                        }

                        return;
                    }
                    switch global.flowey_flag[7]
                    {
                        case 0:
                            message[0] = "* ¡Oye, amigo!"
                            message[1] = "* ¿Por qué pierdes#  el tiempo aquí?"
                            message[2] = "* ¿Te asusta la#  nueva zona?"
                            message[3] = "* ¡Vamos, puedes hacerlo!#  ¡Dudo que siquiera#  necesites un guardado!"
                            message[4] = "* Es sólo nieve, hielo,#  monstruos, y posible#  riesgo de congelación."
                            message[5] = "* ¡Nada de eso, amigo!#  ¡Ahora sal ahí fuera!"
                            prt[0] = 348
                            prt[1] = 347
                            prt[2] = 349
                            prt[3] = 348
                            prt[4] = 347
                            prt[5] = 348
                            global.flowey_flag[7] = (global.flowey_flag[7] + 1)
                            break
                        case 1:
                            message[0] = "* Cuanto más tiempo#  estés hablando conmigo,"
                            message[1] = "* Cuanto mayor sea ese#  riesgo de congelación."
                            message[2] = "* ¡Ahora muévete!"
                            prt[0] = 352
                            prt[1] = 353
                            prt[2] = 351
                            break
                    }

                    break
                case "rm_snowdin_08_yellow":
                    switch global.flowey_flag[8]
                    {
                        case 0:
                            message[0] = "* ¡Buenas!"
                            message[1] = "* ¿Qué tal lo llevas?"
                            message[2] = "* Las cosas no se ponen#  más fácil, ¿eh?."
                            message[3] = "* Estaría bien#  pasar por aquí#  sin molestias."
                            message[4] = "* Supongo que el#  mundo no funciona así."
                            message[5] = "* Así son los monstruos,#  nunca pueden ocuparse#  de sus propios asuntos."
                            message[6] = "* En cualquier caso,#  ¡lo estás haciendo muy bien!"
                            message[7] = "* ¡Sigue así, amigo!"
                            prt[0] = 348
                            prt[1] = 348
                            prt[2] = 353
                            prt[3] = 352
                            prt[4] = 348
                            prt[5] = 347
                            prt[6] = 348
                            prt[7] = 348
                            global.flowey_flag[8] = (global.flowey_flag[8] + 1)
                            break
                        case 1:
                            message[0] = "* Sigues haciéndolo#  muy bien, amigo."
                            message[1] = "* ¿Supongo que necesitabas#  una confirmación extra?"
                            message[2] = "* No te preocupes, lo#  dije en serio como la#  primera vez como la segunda."
                            prt[0] = 348
                            prt[1] = 347
                            prt[2] = 349
                            global.flowey_flag[8] = (global.flowey_flag[8] + 1)
                            break
                        case 2:
                            message[0] = "* Te agradezco que#  quieras que te felicite#  por tercera vez."
                            message[1] = "* Pero no tienes que#  apoyarte tanto en mí para#  apoyo emocional."
                            message[2] = "* Puedes creer en ti#  mismo un poco también,#  amigo."
                            prt[0] = 352
                            prt[1] = 353
                            prt[2] = 348
                            break
                    }

                    break
                case "rm_snowdin_12_yellow":
                    switch global.flowey_flag[9]
                    {
                        case 0:
                            message[0] = "* ¡Buenas!"
                            message[1] = "* Debo decir que no#  recordaba que este lugar#  fuera tan..."
                            message[2] = "* Ya sabes..."
                            message[3] = "* Colorido."
                            message[4] = "* Realmente no puedo#  pasar dos segundos#  sin ser acosado aquí."
                            message[5] = "* ¿Nadie ha oído hablar#  del espacio personal?"
                            message[6] = "* A menos que alguien nos#  envie por correo hacia ASGORE,#  no los necesitamos."
                            message[7] = "* En fin, sigamos adelante.#  Estamos perdiendo el tiempo."
                            prt[0] = 348
                            prt[1] = 348
                            prt[2] = 347
                            prt[3] = 357
                            prt[4] = 352
                            prt[5] = 353
                            prt[6] = 348
                            prt[7] = 348
                            global.flowey_flag[9] = (global.flowey_flag[9] + 1)
                            break
                        case 1:
                            message[0] = "* ¿Qué estás esperando?"
                            message[1] = "* Tienes un trabajo#  que hacer."
                            prt[0] = 348
                            prt[1] = 349
                            global.flowey_flag[9] = (global.flowey_flag[9] + 1)
                            break
                        case 2:
                            message[0] = "* Mira, lo entiendo,#  quieres ser cuidadoso."
                            message[1] = "* Dos guardados no es#  mejor que una, niño!"
                            message[2] = "* Tenemos lugares que ver,#  la mayoría son calidos."
                            message[3] = "* ¡Adelante!"
                            prt[0] = 352
                            prt[1] = 353
                            prt[2] = 348
                            prt[3] = 348
                            break
                    }

                    break
                case "rm_snowdin_14_yellow":
                    switch global.flowey_flag[10]
                    {
                        case 0:
                            message[0] = "* ¡Esto es de lo#  que hablo!"
                            message[1] = "* Un lugar perfecto para#  relajarse y desestresarse."
                            message[2] = "* Bueno, no perfecto,#  un poco lleno para mi gusto."
                            message[3] = "* Al menos eso mantiene#  las cosas interesantes."
                            prt[0] = 348
                            prt[1] = 347
                            prt[2] = 357
                            prt[3] = 349
                            global.flowey_flag[10] = (global.flowey_flag[10] + 1)
                            break
                        case 1:
                            message[0] = "* Siéntete libre de#  holgazanear durante un#  tiempo, niño."
                            message[1] = "* Estaré aquí comprobando#  las aguas termales."
                            prt[0] = 347
                            prt[1] = 348
                            break
                    }

                    break
                case "rm_snowdin_20_yellow":
                    if (global.snowdin_flag[13] == 0)
                    {
                        switch global.flowey_flag[11]
                        {
                            case 0:
                                message[0] = "* ¡Buenas!"
                                message[1] = "* Estamos casi fuera de#  aquí."
                                message[2] = "* Me sorprende que ese#  guardia nunca te viera#  cerca, ¿sabes?"
                                message[3] = "* Sus puzzles seguro que#  no eran impresionantes,#  eso seguro."
                                message[4] = "* Sabiendo eso, yo no#  me preocuparía si te#  los encuentras."
                                message[5] = "* Pase lo que pase,#  ¡te deseo suerte!"
                                prt[0] = 348
                                prt[1] = 348
                                prt[2] = 347
                                prt[3] = 349
                                prt[4] = 3251
                                prt[5] = 348
                                global.flowey_flag[11] = (global.flowey_flag[11] + 1)
                                break
                            case 1:
                                message[0] = "* No me digas que#  ahora te asusta la#  Guardia Real."
                                message[1] = "* Viste a esa señora,#  ¿verdad? Estarás bien."
                                message[2] = "* Confía un poco en mí,#  ¿quieres?"
                                prt[0] = 347
                                prt[1] = 348
                                prt[2] = 3251
                                global.flowey_flag[11] = (global.flowey_flag[11] + 1)
                                break
                            case 2:
                                message[0] = "* ¡Hagámoslo#  de una vez!"
                                prt[0] = 348
                                break
                        }

                    }
                    break
            }

        }
    }
}

