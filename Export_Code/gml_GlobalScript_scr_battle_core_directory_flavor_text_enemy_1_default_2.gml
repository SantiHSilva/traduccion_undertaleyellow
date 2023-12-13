function scr_battle_core_directory_flavor_text_enemy_1_default_2() //gml_Script_scr_battle_core_directory_flavor_text_enemy_1_default_2
{
    var battle_enemy_name = global.battle_enemy_name
    var enemy_mode = global.enemy_mode
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* ¿¡Cuando se termina este semestre!?"
        else if (battle_enemy_name == "ms mettaton")
            message[0] = "* Como, ¡totalmente!"
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo")
            message[0] = "* Flier usa la jerga de moda#  como los niños."
        else if (battle_enemy_name == "flier trio")
            message[0] = "* Flier usa la jerga de moda#  como los niños."
        else if (battle_enemy_name == "penilla solo")
            message[0] = "* Penilla desecha su dibujo#  y vuelve a empezar."
        else if (battle_enemy_name == "flier penilla duo")
            message[0] = "* Flier usa la jerga de moda#  como los niños."
        else if (battle_enemy_name == "sweet corn solo")
            message[0] = "* Parece que Sweet Corn no#  puede dejar de crisparse."
        else if (battle_enemy_name == "sweet corn duo")
            message[0] = "* Parece que Sweet Corn no#  puede dejar de crisparse."
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Parece que Sweet Corn no#  puede dejar de crisparse."
        else if (battle_enemy_name == "crispy scroll solo")
            message[0] = "* Crispy Scroll hace una#  oscura referencia."
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Crispy Scroll hace una#  oscura referencia."
        else if (battle_enemy_name == "rorrim solo")
            message[0] = "* Rorrim reflexiona sobre#  sus actuales circustancias."
        else if (battle_enemy_name == "decibat")
            message[0] = "* Decibat susurra algo#  demasiado bajo para oírlo."
        else if (battle_enemy_name == "dalv")
            message[0] = "* Dalv hace una pausa para#  cepillar la capa."
        else if (battle_enemy_name == "micro froggit")
            message[0] = "* Captas un leve olor#  a semilla de mostaza."
        else if (battle_enemy_name == "insomnitot solo")
            message[0] = "* El olor a patatas fritas#  pasa a tu lado."
        else if (battle_enemy_name == "insomnitot duo")
            message[0] = "* El olor a patatas fritas#  pasa a tu lado."
        else if (battle_enemy_name == "know cone solo")
            message[0] = "* Know Cone empieza a hacer#  un baile primitivo."
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Know Cone empieza a hacer#  un baile primitivo."
        else if (battle_enemy_name == "frostermit solo")
        {
            switch enemy_mode
            {
                case 0:
                    message[0] = "* El iglú se eleva sobre ti#  amenazadoramente.#* Es broma. Es sólo un iglú."
                    break
                case 1:
                    message[0] = "* Frostermit está saliendo#  un poco de su caparazón."
                    break
            }

        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch enemy_mode
            {
                case 0:
                    message[0] = "* El iglú se eleva sobre ti#  amenazadoramente.#* Es broma. Es sólo un iglú."
                    break
                case 1:
                    message[0] = "* Frostermit está saliendo#  un poco de su caparazón."
                    break
            }

        }
        else if (battle_enemy_name == "trihecta together")
            message[0] = "* Trihecta parece estar#  presionando los botones#  de otro."
        else if (battle_enemy_name == "trihecta separated")
            message[0] = "* Tri se preocupa por los golpes#  y de los moretones#  de los demas."
        else if (battle_enemy_name == "martlet pacifist")
            message[0] = "* Todo huele a semillas# de ave con un toque#   de vainilla y naranja."
        else if (battle_enemy_name == "martlet genocide")
        {
            switch enemy_mode
            {
                case 3:
                    message[0] = "* Martlet busca su#  guía de primeros#  auxilios."
                    break
                case 4:
                    message[0] = "* Martlet marca el paso."
                    break
                default:
                    message[0] = "* Martlet mira paranoicamente#  a su alrededor."
            }

        }
        else if (battle_enemy_name == "dunebud solo" || battle_enemy_name == "dunebud duo")
            message[0] = "* Dunebud se está poniendo nervioso."
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
            message[0] = "* Cactony mira fijamente tu alma."
        else if (battle_enemy_name == "slither solo")
            message[0] = "* Sir Slither perdio el acceso#  a su cuenta bancaria. Se#  pregunta si puedes prestar latuya."
        else if (battle_enemy_name == "bowll solo")
            message[0] = "* Bowll observa un objeto rojo#  pero lucha contra la tentación#  de correr hacia él."
        else if (battle_enemy_name == "el bailador")
        {
            if (global.route == 3)
                message[0] = "* Te esta molestando#  la música."
            else
                message[0] = "* ¡El Bailador hace#  una pose motivadora!"
        }
        else if (battle_enemy_name == "dummy training pacifist")
            message[0] = "* El maniquí no hace nada."
        else if (battle_enemy_name == "flower girls")
        {
            switch global.dunes_flag[31]
            {
                case 1:
                    message[0] = "* Violetta mira a todas partes#  menos a ti."
                    break
                case 2:
                    message[0] = "* Pedla da vueltas por la arena."
                    break
                case 3:
                    message[0] = "* ¡Rosa baila entre los#  peligros de la vida#  con una confianza!"
                    break
            }

        }
        else if (battle_enemy_name == "ceroba genocide")
            message[0] = "* Se seca el#  sudor de la frente."
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = "* A Starlo le pican los#  dedos por su pistola#  de seis tiros."
            else
                message[0] = "* Starlo aprienta los dientes#  con frustación."
        }
        else if (battle_enemy_name == "tellyvis")
            message[0] = "* Telly empuja la aleta#  de la boca de Vis para#  divertirse. Vis no lo soporta."
        else if (battle_enemy_name == "jandroid" || battle_enemy_name == "jandroid duo" || battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Jandroid intenta silbar#  al ritmo de la música."
        else if (battle_enemy_name == "goosic")
            message[0] = "* Goosic empieza a girar#  en circulos."
        else if (battle_enemy_name == "sousborg")
            message[0] = "* Sousborg está haciendo malabares#  con cuchillas."
        else if (battle_enemy_name == "axis")
            message[0] = "* Muerte por metal y magia."
        else if (battle_enemy_name == "axis genocide")
            message[0] = "* A tu manera."
        else if (battle_enemy_name == "macro froggit")
            message[0] = "* Huele a rana."
        else if (battle_enemy_name == "guardener")
        {
            if (global.enemy_mode == 0)
                message[0] = "* Guardener riega su jaula."
            else if (global.enemy_mode >= 1)
                message[0] = "* Guardener golpea el suelo#  con los brazos agitados."
        }
        else if (battle_enemy_name == "flowey")
            message[0] = "* Huele a Aa;1rW4,je2FpA,,."
        else if (battle_enemy_name == "ceroba")
        {
            switch global.hotland_flag[2]
            {
                case 0:
                    message[0] = "* Ceroba se seca el sudor#  de la frente."
                    break
                case 1:
                    message[0] = "* Los pétalos llueven del cielo."
                    break
                case 2:
                    message[0] = "* Ceroba emite con furia."
                    break
                case 3:
                    message[0] = "* El fin se acerca."
                    break
            }

        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* El enemigo trata de insistir."
            if (global.hotland_flag[9] >= 2)
                message[0] = "* Clausura."
        }
    }
}

