function scr_save_flowey_dark_ruins() //gml_Script_scr_save_flowey_dark_ruins
{
    var current_room = room_get_name(room)
    current_save_number = 1
    scr_determine_save_area()
    if (global.flowey_save_number < current_save_number)
        global.flowey_save_number = current_save_number
    scr_text()
    with (msg)
    {
        sndfnt = 96
        var kill_number = global.kill_number[1]
        if (global.kill_number[1] <= 15 && global.flowey_flag[6] == 0)
        {
            global.flowey_flag[6] = 1
            if (kill_number <= 10)
            {
                instance_destroy()
                scr_save_flowey_dark_ruins()
                return;
            }
            message[0] = "* Vaya, se está poniendo#  un poco polvoriento,#  por aquí ¿no?"
            prt[0] = 357
        }
        else if (global.kill_number[1] <= 10 && global.flowey_flag[6] == 1)
        {
            global.flowey_flag[6] = 2
            if (kill_number <= 5)
            {
                instance_destroy()
                scr_save_flowey_dark_ruins()
                return;
            }
            col_modif[0] = 255
            message[0] = "* ¿No te gusta mucho#  la misericordia?"
            message[1] = "* Está bien, mientras#  te lleve a ser amigo#  de ASGORE!"
            message_col[0][1] = "##     ASGORE"
            prt[0] = 353
            prt[1] = 348
        }
        else if (global.kill_number[1] <= 5 && global.flowey_flag[6] == 2)
        {
            global.flowey_flag[6] = 3
            if (kill_number <= 0)
            {
                instance_destroy()
                scr_save_flowey_dark_ruins()
                return;
            }
            message[0] = "* Realmente tienes#  pasión ahí."
            message[1] = (("* Sólo quedan " + string(global.kill_number[scr_determine_world_value_yellow()])) + " de los#  monstruos sin contar#  al bicho raro.")
            message[2] = "* ¡Buena suerte, amigo!"
            prt[0] = 357
            prt[1] = 348
            prt[2] = 347
            global.flowey_flag[6] = 3
        }
        else if (global.kill_number[1] <= 0 && global.flowey_flag[6] == 3)
        {
            message[0] = "* Vaya, sí que hay#  silencio por aquí."
            message[1] = "* Tengo que decir, es#  un poco agradable#  no tener molestias."
            message[2] = "* Bueno, no queda nada#  que hacer por aquí,#  supongo. ¡Sigamos!"
            prt[0] = 347
            prt[1] = 348
            prt[2] = 348
            global.flowey_flag[6] = 4
        }
        else if (global.flowey_flag[6] == 4 && current_room != "rm_darkruins_16")
        {
            message[0] = "* ¡Sigamos avanzando!"
            prt[0] = 348
        }
        else if (other.current_save_number < global.flowey_save_number)
        {
            message[0] = "* ¿Qué haces aquí#  atrás? La salida es por#  el otro lado, ¡tonto!"
            message[1] = "* Vámonos."
            prt[0] = 352
            prt[1] = 348
        }
        else
        {
            switch current_room
            {
                case "rm_darkruins_03":
                    switch global.flowey_flag[0]
                    {
                        case 0:
                            message[0] = "* ¡Buenas!#* ¡Parece que#  lo conseguiste!  "
                            prt[0] = 348
                            global.flowey_flag[0] = (global.flowey_flag[0] + 1)
                            break
                        case 1:
                            message[0] = "* ¿Por qué la cara larga,#  amigo?"
                            message[1] = "* No te preocupes, ¡este#  sitio es mucho mejor#  que allí arriba!"
                            message[2] = "* ¡Esa vieja#  nos habría arruinado#  la diversión!"
                            message[3] = "* ¡Vamos, no nos quedemos#  aquí todo el día!"
                            prt[0] = 348
                            prt[1] = 347
                            prt[2] = 357
                            prt[3] = 348
                            global.flowey_flag[0] = (global.flowey_flag[0] + 1)
                            break
                        case 2:
                            message[0] = "* Tú... solo necesitas#  guardar una vez..."
                            message[1] = "* ¿No confías en mi#  o algo así?"
                            message[2] = "* ¡Por favor!#* ¡Soy tu amigo!#* ¡Soy heroico en Free Fire!"
                            message[3] = "* ¡Yo te cubro#  las espaldas!"
                            prt[0] = 352
                            prt[1] = 357
                            prt[2] = 347
                            prt[3] = 348
                            global.flowey_flag[0] = (global.flowey_flag[0] + 1)
                            break
                        case 3:
                        case 4:
                        case 5:
                        case 7:
                            message[0] = "* Deberías ponerte#  en marcha..."
                            prt[0] = 352
                            if (global.flowey_flag[0] != 7)
                                global.flowey_flag[0] = (global.flowey_flag[0] + 1)
                            break
                        case 6:
                            message[0] = "* ¿Enserio?#* ¿De qué se trata esto?"
                            message[1] = "* Ya te lo dije,#  ¡No necesitas a esa#  estupida señora cabra!"
                            message[2] = "* ¡Ella no podría#  haberte protegido#  de todas formas!"
                            message[3] = "* ¡Me tienes a mí! #* ¡Soy mucho mejor!"
                            message[4] = "* ¡Soy tu amigo, Flowey!"
                            message[5] = "* ¡Soy el único amigo #  que necesitarás!"
                            message[6] = "* ¿Toriel te ayuda a guardar?#* ¡NO!"
                            message[7] = "* ¡Asi que salgamos#  de aquí mientras#  seamos jovenes!"
                            prt[0] = 351
                            prt[1] = 351
                            prt[2] = 351
                            prt[3] = 347
                            prt[4] = 348
                            prt[5] = 347
                            prt[6] = 348
                            prt[7] = 357
                            global.flowey_flag[0] = (global.flowey_flag[0] + 1)
                            break
                    }

                    break
                case "rm_darkruins_08":
                    switch global.flowey_flag[1]
                    {
                        case 0:
                            message[0] = "* ¡Buenas!"
                            prt[0] = 348
                            message[1] = "* ¡Veo que sigues#  en una pieza!"
                            prt[1] = 357
                            message[2] = "* Viste a ese bicho#  raro ¿verdad?"
                            prt[2] = 352
                            message[3] = "* Si quieres salir de#  aquí tendras que#  pasar por él."
                            prt[3] = 357
                            message[4] = "* Aunque no deberia#  ser un problema."
                            prt[4] = 348
                            message[5] = "* Y si lo fuera,#  ¡Yo estoy aquí!"
                            prt[5] = 348
                            global.flowey_flag[1] = (global.flowey_flag[1] + 1)
                            break
                        case 1:
                            message[0] = "* ¿Otra vez?"
                            prt[0] = 352
                            message[1] = "* Vale, ¡estas doblemente#  guardando!"
                            prt[1] = 347
                            global.flowey_flag[1] = (global.flowey_flag[1] + 1)
                            break
                        case 2:
                            message[0] = "* ¿Otra vez?"
                            message[0] = "* ¿Enserio?"
                            prt[0] = 351
                            message[1] = "* ¿Cuantos guardados #  necesitas?"
                            prt[1] = 351
                            break
                    }

                    break
                case "rm_darkruins_10":
                    switch global.flowey_flag[2]
                    {
                        case 0:
                            message[0] = "* ¡Buenas!"
                            message[1] = "* Caramba, ¡Este sitio#  está muerto!"
                            message[2] = "* Todos los monstruos#  están quietos y#  al acecho."
                            message[3] = "* ¡Eso no es propio#  de los monstruos!"
                            message[4] = "* No dejes que esto#  arruine tu impresión#  del Subsuelo!"
                            message[5] = "* ¡Pronto dejaremos#  este basurero!"
                            prt[0] = 348
                            prt[1] = 352
                            prt[2] = 352
                            prt[3] = 347
                            prt[4] = 348
                            prt[5] = 348
                            global.flowey_flag[2] = (global.flowey_flag[2] + 1)
                            break
                        case 1:
                            message[0] = "* Ya guardaste,#  ¡Vamonos!"
                            prt[0] = 348
                            break
                    }

                    break
                case "rm_darkruins_12":
                    switch global.flowey_flag[3]
                    {
                        case 0:
                            message[0] = "* ¡Buenas!"
                            message[1] = "* ¡Parece que lo estás#  haciendo bien!"
                            if (global.death_count_total > 1)
                                message[2] = (("* ¡Solo " + string(global.death_count_total)) + " muertes!#* ¡Experto en el#  Dark Souls!")
                            else if (global.death_count_total == 1)
                                message[2] = "* ¡Solo una muerte!"
                            else
                            {
                                message[2] = "* ¡No has muerto#  ni una vez!"
                                message[3] = "* No es que pensara#  que lo harias, ¡pero#  está bien estar listo!"
                            }
                            if (global.death_count_total > 0)
                            {
                                message[3] = "* ¿Viste? ¿¡No te alegra#  tenerme cerca!?"
                                message[4] = "* ¡Es genial ser un#  amigo necesario!"
                            }
                            prt[0] = 348
                            prt[1] = 347
                            prt[2] = 348
                            prt[3] = 348
                            prt[4] = 347
                            if (global.death_count_total > 0)
                                global.flowey_flag[3] = 1
                            else
                                global.flowey_flag[3] = 2
                            break
                        case 1:
                            message[0] = "* ¿Qué? No estás contento#  con tu cuenta de muertes?"
                            message[1] = "* ¿Nunca escuchaste la#  frase: No le dispares#  al mensajero?"
                            prt[0] = 357
                            prt[1] = 347
                            global.flowey_flag[3] = (global.flowey_flag[3] + 1)
                            break
                        case 2:
                            message[0] = "* ¡Vamonos, amigo!"
                            message[1] = "* ¡Puedes guardar#  después!"
                            prt[0] = 352
                            prt[1] = 352
                            break
                    }

                    break
                case "rm_darkruins_16":
                    if (global.flag[17] == 0)
                    {
                        switch global.flowey_flag[4]
                        {
                            case 0:
                                message[0] = "* ¡Buenas!"
                                message[1] = "* ¡Ya falta menos!"
                                message[2] = "* ¡Solo tengo que#  lidiar con ese bajón!"
                                message[3] = "* ¡Entonces saldrás#  de las Ruinas!"
                                message[4] = "* ¡Nos vemos en el#  otro lado, amigo!"
                                prt[0] = 348
                                prt[1] = 348
                                prt[2] = 348
                                prt[3] = 347
                                prt[4] = 348
                                global.flowey_flag[4] = (global.flowey_flag[4] + 1)
                                break
                            case 1:
                                message[0] = "* ¿Qué?"
                                message[1] = "* ¿Te asusta ese#  tipo pesimista?"
                                message[2] = "* Mira, ¡solo tienes que#  abrir un camino#  a través de él!"
                                message[3] = "* ¡Caerá facilmente!"
                                message[4] = "* Y por si no te#  diste cuenta..."
                                message[5] = "* ¡No se le echara#  de menos!"
                                message[6] = "* ¡Así que vamos por él!"
                                prt[0] = 352
                                prt[1] = 357
                                prt[2] = 348
                                prt[3] = 348
                                prt[4] = 347
                                prt[5] = 348
                                prt[6] = 348
                                global.flowey_flag[4] = (global.flowey_flag[4] + 1)
                                break
                            case 2:
                                message[0] = "* ¡Vamos, niño!#* ¡Demuéstrale quién manda!"
                                prt[0] = 348
                                break
                        }

                    }
                    else if (global.route == 3 || global.flag[17] >= 3 || global.geno_complete[1] == 1)
                    {
                        switch global.flowey_flag[5]
                        {
                            case 0:
                                message[0] = "* Bueno, es todo."
                                message[1] = "* Vaya, qué comienzo#  de aventura."
                                message[2] = "* No esperaba esto,#  pero es su#  elección."
                                message[3] = "* En fin..."
                                message[4] = "* Si quieres seguir#  explorando antes irnos#  debes saber esto."
                                message[5] = "* Removi todos mis puntos#  de guardado exceptuando#  este de aquí."
                                message[6] = "* Es inútil#  volver allí."
                                message[7] = "* Estaré en esta#  sala y solo en esta#  hasta que quieras irte."
                                message[8] = "* ¡Nos vemos luego!"
                                prt[0] = 352
                                prt[1] = 357
                                prt[2] = 348
                                prt[3] = 347
                                prt[4] = 347
                                prt[5] = 348
                                prt[6] = 347
                                prt[7] = 348
                                prt[8] = 348
                                global.flowey_flag[5] = (global.flowey_flag[5] + 1)
                                break
                            case 1:
                                message[0] = "* La salida es a#  través de su casa."
                                message[1] = "* Continúa."
                                prt[0] = 348
                                prt[1] = 347
                                break
                        }

                    }
                    else if (global.flag[17] == 1)
                    {
                        switch global.flowey_flag[5]
                        {
                            case 0:
                                message[0] = "* ¡Buen trabajo, chico!"
                                message[1] = "* Apuesto a que tu#  concienca se siente#  ligera como pluma."
                                message[2] = "* Hacer amigos es una#  buena manera de salir#  adelante aquí."
                                message[3] = "* Evitar los conflictos,#  mantenerse a salvo..."
                                message[4] = "* Entiendo."
                                message[5] = "* Acabamos de empezar#  y ya te hiciste#  amigo mio, y de él."
                                message[6] = "* ¡No eres tú el#  popular!"
                                message[7] = "* Por cierto..."
                                message[8] = "* Si quieres seguir#  explorando antes irnos#  debes saber esto."
                                message[9] = "* Removi todos mis puntos#  de guardado exceptuando#  este de aquí."
                                message[10] = "* Es inútil#  volver allí."
                                message[11] = "* Estaré en esta#  sala y solo en esta#  hasta que quieras irte."
                                message[12] = "* ¡Nos vemos luego!"
                                prt[0] = 348
                                prt[1] = 348
                                prt[2] = 348
                                prt[3] = 348
                                prt[4] = 347
                                prt[5] = 348
                                prt[6] = 347
                                prt[7] = 348
                                prt[8] = 348
                                prt[9] = 348
                                prt[10] = 348
                                prt[11] = 348
                                prt[12] = 348
                                global.flowey_flag[5] = (global.flowey_flag[5] + 1)
                                break
                            case 1:
                                message[0] = "* La salida es a#  través de su casa."
                                message[1] = "* Continúa."
                                prt[0] = 348
                                prt[1] = 347
                                break
                        }

                    }
                    else if (global.flag[17] == 2)
                    {
                        switch global.flowey_flag[5]
                        {
                            case 0:
                                message[0] = "* ¡Bien hecho!"
                                message[1] = "* Eso fue demasiado fácil."
                                message[2] = "* Se resistio#  pero lo manejaste#  con habilidad."
                                message[3] = "* No es que nadie#  vaya a echar de menos#  a ese pesimista."
                                message[4] = "* Por cierto..."
                                message[5] = "* Si quieres seguir#  explorando antes irnos#  debes saber esto."
                                message[6] = "* Removi todos mis puntos#  de guardado exceptuando#  este de aquí."
                                message[7] = "* Es inútil#  volver allí."
                                message[8] = "* Estaré en esta#  sala y solo en esta#  hasta que quieras irte."
                                message[9] = "* ¡Nos vemos luego!"
                                prt[0] = 348
                                prt[1] = 348
                                prt[2] = 348
                                prt[3] = 349
                                prt[4] = 347
                                prt[5] = 348
                                prt[6] = 348
                                prt[7] = 348
                                prt[8] = 348
                                prt[9] = 348
                                global.flowey_flag[5] = (global.flowey_flag[5] + 1)
                                break
                            case 1:
                                message[0] = "* La salida es a#  través de su casa."
                                message[1] = "* Continúa."
                                prt[0] = 348
                                prt[1] = 347
                                break
                        }

                    }
                    break
            }

        }
    }
    global.menu_sprite = 2628
}

