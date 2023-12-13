function scr_battle_core_directory_flavor_text_enemy_1_special() //gml_Script_scr_battle_core_directory_flavor_text_enemy_1_special
{
    var battle_enemy_name = global.battle_enemy_name
    var game_mode = global.game_mode
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "ms mettaton")
            message[0] = "* It seems that Ms. Mettaton is#  getting bored of you."
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "sweet corn solo")
            message[0] = "* Sweet Corn jumps up and down in#  celebration."
        else if (battle_enemy_name == "sweet corn duo")
            message[0] = "* Sweet Corn jumps up and down in#  celebration."
        else if (battle_enemy_name == "decibat")
        {
            if ((global.action_1_selected_count + global.action_3_selected_count) == 5)
                message[0] = "* Decibat tiembla de rabia."
            else if ((global.action_1_selected_count + global.action_3_selected_count) == 4)
                message[0] = "* Decibat rechina los dientes#  con rabia y se estremece#  por el alborto que causo."
            else if ((global.action_1_selected_count + global.action_3_selected_count) == 3)
                message[0] = "* Decibat no puede escuchar#  sus pensamientos."
            else if ((global.action_1_selected_count + global.action_3_selected_count) == 2)
                message[0] = "* Decibat está perdiendo la#  paciencia contigo."
            else if ((global.action_1_selected_count + global.action_3_selected_count) == 1)
                message[0] = "* Decibat mueve sus grandes orejas."
            else if (global.action_2_selected_count == 4)
                message[0] = "* Decibat está siendo#  dormido."
            else if (global.action_2_selected_count == 3)
                message[0] = "* Decibat disfruta del silencio."
            else if (global.action_2_selected_count == 2)
                message[0] = "* Decibat te hace un gesto de# aprobación."
            else if (global.action_2_selected_count == 1)
                message[0] = "* Decibat se ve un poco más#  en paz."
        }
        else if (battle_enemy_name == "dalv")
            message[0] = "* Dalv se ve inseguro de que hacer."
        else if (battle_enemy_name == "micro froggit")
            message[0] = "* Micro Froggit está impresionado#  de que pudiste golpearle."
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* ¡Know Cone sabía que había#  alguien allí!"
        else if (battle_enemy_name == "martlet pacifist")
            message[0] = "* Un par de plumas ensucian el#  suelo."
        else if (battle_enemy_name == "goosic")
            message[0] = "* A Goosic le está gustando#  la nueva música."
        else if (battle_enemy_name == "axis")
            message[0] = "* Axis te dará una mirada#  vacía hasta que hagas algo."
    }
}

