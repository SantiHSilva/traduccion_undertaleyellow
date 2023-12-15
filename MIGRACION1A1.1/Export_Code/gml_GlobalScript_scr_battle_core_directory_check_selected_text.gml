function scr_battle_core_directory_check_selected_text() //gml_Script_scr_battle_core_directory_check_selected_text
{
    if (global.battling_boss == 1)
    {
        var battle_enemy_name = global.battle_enemy_name
        var enemy_attack_stat = global.enemy_attack_stat
        var enemy_defense_stat = global.enemy_defense_stat
        var enemy_mode = global.enemy_mode
        var enemy_low_hp = global.enemy_low_hp
    }
    else
    {
        var act_number = global.act_number
        switch act_number
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1
                enemy_attack_stat = global.enemy_attack_stat
                enemy_defense_stat = global.enemy_defense_stat
                enemy_mode = global.enemy_mode
                enemy_low_hp = global.enemy_low_hp
                break
            case 2:
                battle_enemy_name = global.battle_enemy_name_2
                enemy_attack_stat = global.enemy_attack_stat_2
                enemy_defense_stat = global.enemy_defense_stat_2
                enemy_mode = global.enemy_mode_2
                enemy_low_hp = global.enemy_low_hp_2
                break
            case 3:
                battle_enemy_name = global.battle_enemy_name_3
                enemy_attack_stat = global.enemy_attack_stat_3
                enemy_defense_stat = global.enemy_defense_stat_3
                enemy_mode = global.enemy_mode_3
                enemy_low_hp = global.enemy_low_hp_3
                break
            default:
                battle_enemy_name = global.battle_enemy_name_1
                enemy_attack_stat = global.enemy_attack_stat
                enemy_defense_stat = global.enemy_defense_stat
                enemy_mode = global.enemy_mode
                enemy_low_hp = global.enemy_low_hp
        }

    }
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = (((("* CRANIEX -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Dotada lógicamente, terco emocionalmente.")
        else if (battle_enemy_name == "ms mettaton")
        {
            if (global.ms_mettaton_transformed == 0)
                message[0] = (((("* MS. METTATON -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Su velocidad la hace invulnerable al ataque..")
            else
                message[0] = (((("* MS. METTATON EX ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* La robot asesina definitiva, aunque imperfecta!")
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
            message[0] = (((("* FROGGIT -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* La vida es dificil para este enemigo.")
        else if (battle_enemy_name == "flier a" || battle_enemy_name == "flier b" || battle_enemy_name == "flier c")
            message[0] = (((("* FLIER -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Flier siente nada.")
        else if (battle_enemy_name == "penilla a" || battle_enemy_name == "penilla b")
            message[0] = (((("* PENILLA -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Un personaje incompleto.")
        else if (battle_enemy_name == "sweet corn a" || battle_enemy_name == "sweet corn b")
            message[0] = (((("* SWEET CORN -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Constantemente en una carrera de azucar.")
        else if (battle_enemy_name == "crispy scroll a")
            message[0] = (((("* CRISPY SCROLL -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Buscando alguien que pueda ser retador de su entusiasmo.")
        else if (battle_enemy_name == "rorrim a")
            message[0] = (((("* RORRIM -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Rorrim's expresión está en blanco.")
        else if (battle_enemy_name == "decibat")
            message[0] = (((("* DECIBAT -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Extrañando su tranquila soledad.")
        else if (battle_enemy_name == "dalv")
        {
            switch enemy_mode
            {
                case 0:
                    message[0] = (((("* DALV -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Quiere que lo dejen solo.")
                    break
                case 1:
                    message[0] = (((("* DALV -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Actuando sombrío.")
                    break
                case 2:
                    message[0] = (((("* DALV -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Finalmente solo...")
                    break
                default:
                    message[0] = (((("* DALV -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Quiere que lo dejen solo.")
            }

        }
        else if (battle_enemy_name == "micro froggit")
            message[0] = (((("* MICRO FROGGIT -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* A menudo pasa desapercibido.")
        else if (battle_enemy_name == "insomnitot a" || battle_enemy_name == "insomnitot b")
            message[0] = (((("* INSOMNITOT -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Más allá de su hora de dormir.")
        else if (battle_enemy_name == "know cone a" || battle_enemy_name == "know cone b")
        {
            if (global.route == 2)
                message[0] = (((("* KNOW CONE -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Un esquí menos que una moto de nieve.")
            else
                message[0] = (((("* KNOW CONE -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Una mente ansiosa llena de una pasión ardiente.")
        }
        else if (battle_enemy_name == "frostermit a")
        {
            if (enemy_mode == 1)
                message[0] = (((("* FROSTERMIT -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Siempre como en casa.")
            else
                message[0] = (((("* FROSTERMIT -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Un sospechoso igloo.")
        }
        else if (battle_enemy_name == "trihecta")
            message[0] = (((("* TRIHECTA -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Intimidantemente alto.")
        else if (battle_enemy_name == "tri")
        {
            if (enemy_low_hp == 1)
                message[0] = (((("* TRI -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Ya no intimida.")
            else
                message[0] = (((("* TRI -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Tomando las cosas un paso a la vez.")
        }
        else if (battle_enemy_name == "hec")
        {
            if (enemy_low_hp == 1)
                message[0] = (((("* HEC -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Ya no intimida.")
            else
                message[0] = (((("* HEC -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* El dia esta mejorando.")
        }
        else if (battle_enemy_name == "ta")
        {
            if (enemy_low_hp == 1)
                message[0] = (((("* TA -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Ya no intimida.")
            else
                message[0] = (((("* TA -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Saltos de emoción!!")
        }
        else if (battle_enemy_name == "martlet pacifist")
            message[0] = (((("* MARTLET -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Un poco atolondrado.")
        else if (battle_enemy_name == "martlet genocide")
        {
            if (enemy_mode == 3)
                message[0] = (((("* MARTLET -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Manteniendome Firme.")
            else
                message[0] = (((("* MARTLET -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Atolondrado.")
        }
        else if (battle_enemy_name == "dunebud a" || battle_enemy_name == "dunebud b")
        {
            if (enemy_low_hp == 1)
                message[0] = (((("* DUNEBUD -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Cuestionandome.")
            else
                message[0] = (((("* DUNEBUD -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Buscando algo de diversión.")
        }
        else if (battle_enemy_name == "cactony a")
            message[0] = (((("* CACTONY -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Carece de cariño físico.")
        else if (battle_enemy_name == "slither a" || battle_enemy_name == "slither b")
            message[0] = (((("* SLITHER -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Colocando un pie sobre el mundo!!!.")
        else if (battle_enemy_name == "bowll a")
            message[0] = (((("* BOWLL -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Una fachada frágil.")
        else if (battle_enemy_name == "el bailador")
        {
            if (global.route != 3)
                message[0] = (((("* EL BAILADOR -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* La definición de pasión!")
            else
                message[0] = (((("* EL BAILADOR -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Otro obstáculo.")
        }
        else if (battle_enemy_name == "flower girls")
        {
            switch global.dunes_flag[31]
            {
                case 1:
                    message[0] = (((("* Violetta -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* No es alguien para una conversación.")
                    break
                case 2:
                    message[0] = (((("* Pedla -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Le encanta regalar flores.")
                    break
                case 3:
                    message[0] = (((("* Rosa -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Le gusta un buen reto.")
                    break
            }

        }
        else if (battle_enemy_name == "dummy training pacifist")
            message[0] = "* DUMMY -- ATK ? DEF ?#* Just a dummy."
        else if (battle_enemy_name == "ceroba genocide")
            message[0] = (((("* CEROBA -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* No queda nada.")
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = (((("* STARLO -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* El almirante Sheriff.")
            else
                message[0] = (((("* STARLO -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* El no-tan-almirante Sheriff.")
        }
        else if (battle_enemy_name == "ed")
            message[0] = (((("* ED -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* El equipo ensueño !")
        else if (battle_enemy_name == "moray")
            message[0] = (((("* MORAY -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* El equipo ensueño!")
        else if (battle_enemy_name == "ace")
            message[0] = (((("* ACE -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* El equipo ensueño!")
        else if (battle_enemy_name == "mooch")
            message[0] = (((("* MOOCH -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* El equipo ensueño!")
        else if (battle_enemy_name == "tellyvis a")
            message[0] = (((("* TELLYVIS -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* No puedo vivir con o sin el otro.")
        else if (battle_enemy_name == "jandroid a" || battle_enemy_name == "jandroid b")
            message[0] = (((("* JANDROID -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* \"Hygiene\" No esta en su vocabulario.")
        else if (battle_enemy_name == "goosic a" || battle_enemy_name == "goosic b")
            message[0] = (((("* GOOSIC -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Music dirige el animo.")
        else if (battle_enemy_name == "sousborg")
            message[0] = (((("* SOUSBORG -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Una receta para el desastre.")
        else if (battle_enemy_name == "axis")
            message[0] = (((("* AXIS -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Hoy significara la superficie.")
        else if (battle_enemy_name == "axis genocide")
            message[0] = ((("* AXIS -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat))
        else if (battle_enemy_name == "macro froggit")
        {
            if (global.turns_passed == 0)
                message[0] = (((("* MICRO FROGGIT -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* A menudo pasa desapercibido.")
            else
                message[0] = (((("* MACRO FROGGIT -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Grande rana.")
        }
        else if (battle_enemy_name == "guardener")
        {
            if (global.enemy_mode == 0)
                message[0] = (((("* GUARDENER -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Atrapa a los delincuentes para una aprehensión fácil.")
            else
                message[0] = (((("* GUARDENER -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Debería bajar su ira un poco.")
        }
        else if (battle_enemy_name == "flowey")
            message[0] = "* Tu mejor amigo!"
        else if (battle_enemy_name == "ceroba")
        {
            if (global.hotland_flag[2] == 0)
                message[0] = (((("* CEROBA -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Un legado para no olvidar.")
            else
                message[0] = "* Absolute devotion."
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = (((("* MARTLET -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Un digno oponente.")
            if (global.hotland_flag[9] >= 2)
                message[0] = (((("* MARTLET -- ATK " + string(enemy_attack_stat)) + " DEF ") + string(enemy_defense_stat)) + "#* Un ser caido.")
        }
    }
}

