var geno_snowdin = 0
if global.geno_complete[2]
    geno_snowdin = 1
if (scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_text()
    is_talking = 1
    waiter = 1
}
if (waiter == 1)
{
    with (msg)
    {
        portrait = 0
        sndfnt = 99
        if (global.route == 3 && geno_snowdin == 0)
        {
            message[0] = "* La atmósfera parece más#  fría de lo esperado por aquí."
            message[1] = "* Tal vez este viaje no#  fue una buena idea..."
        }
        else
        {
            switch global.snowdin_flag[1]
            {
                case 0:
                    message[0] = "* ¡Hola amigo!"
                    message[1] = "* Mi marido y yo hemos#  estado explorando el#  Subsuelo."
                    message[2] = "* Hay muchos secretos en#  estas tierras."
                    message[3] = "* Es una luna de miel#  estupenda y exótica."
                    message[4] = "* ..."
                    message[5] = "* Por desgracia, estamos#  un poco perdidos en#  este momento."
                    message[6] = "* Dice que sabe dónde#  estamos, pero creo que#  sólo está avergonzado."
                    message[7] = "* ¿Alguna idea de dónde#  podríamos conseguir un mapa?"
                    global.snowdin_flag[1] = 1
                    other.waiter = 0
                    break
                case 1:
                    if scr_item_exists_check("Snowdin Map")
                    {
                        if (message_current == 0 || message_current == 10)
                            other.is_talking = 0
                        if (message_current == 1)
                            other.is_talking = 1
                        if (message_current == 10)
                        {
                            scr_item_remove("Snowdin Map")
                            scr_item("Matches")
                            global.snowdin_flag[1] = 2
                            other.is_talking = 0
                            other.waiter = 0
                        }
                        message[0] = "* (Sacas el mapa.)"
                        message[1] = "* ¿Un mapa?#  ¡Fantástico! "
                        message[2] = "* ¿Hiciste esto sólo para#  nosotros?"
                        message[3] = "* Ojalá tuviera algo tan#  sincero que dar a#  cambio..."
                        message[4] = "* ¿Quieres unos fosforos extra?"
                        message[5] = "* Los he estado guardando#  por si necesitábamos un#  incendio."
                        message[6] = "* Ya no la necesitaremos."
                        message[7] = "* ¡Nuestro amor nos#  mantendrá calientes!"
                        message[8] = "* Lo siento, eso es un#  poco cliché, ¿no?"
                        message[9] = "* Bueno, te deseo lo mejor.#  No uses todos esos fósforos#  en un solo lugar."
                        message[10] = "* (¡Recibiste algunos Matches!)"
                    }
                    else
                    {
                        message[0] = "* La siguiente parada de#  nuestro viaje se supone#  que es Waterfall."
                        message[1] = "* He oído que hay piedras#  brillantes en el techo."
                        message[2] = "* Debe ser impresionante#  y romántico."
                        message[3] = "* ...si alguna vez lo#  encontramos, claro..."
                    }
                    break
                case 2:
                    message[0] = "* Esta cueva bloqueada#  es absolutamente#  impresionante."
                    message[1] = "* Espero que despejen el#  camino pronto. No veo#  la hora de volver a moverme."
                    break
            }

        }
    }
}
if (instance_exists(obj_dialogue) && is_talking == 1)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.2
}
else
    is_talking = 0
if ((!global.dialogue_open) && waiter == 1)
    waiter = 0
