if (global.ruins_flag[0] == 0)
{
    if (obj_pl.y <= 300)
    {
        instance_create((obj_pl.x - 4), (obj_pl.y - 26), obj_exclamation_mark)
        global.battle_enemy_name = "froggit intro"
        global.current_room_overworld = room_get_name(room)
        global.battling_boss = 0
        global.battle_start = 1
        scr_cutscene_start()
        instance_destroy()
    }
}
if (global.ruins_flag[0] == 1)
{
    var actor_toriel = obj_toriel_npc
    switch scene
    {
        case 0:
            global.cutscene = true
            if (!audio_is_playing(mus_fallendownyellow))
                audio_play_sound(mus_fallendownyellow, 1, true)
            if instance_exists(obj_overworld_fade_in_screen)
                return;
            scr_text()
            with (msg)
            {
                talker[0] = actor_toriel
                color = 1
                col_modif[0] = 16711680
                col_modif[1] = 255
                message[0] = "* ¡Ah! Hola."
                message[1] = "* ¿Estás bien?"
                message[2] = "* Te estarás preguntando#  qué está pasando..."
                message[3] = "* Yo soy TORIEL, cuidadora#  de las RUINAS."
                message[4] = "* Paso por aquí#  todos los días para ver#  si alguien se ha caído."
                message[5] = "* No ocurre con#  frecuencia."
                message[6] = "* Eres el primero en venir#  aquí en mucho#  tiempo."
                message[7] = "* No tengas miedo,#  pequeño."
                message[8] = "* Haré todo lo posible#  para protegerte aquí."
                message[9] = "* ¡Ven! Te guiaré#  a tu nuevo hogar."
                message_col[3][0] = "         TORIEL                           "
                message_col[3][1] = "                        #         RUINAS "
                prt[0] = 343
                prt[1] = 343
                prt[2] = 343
                prt[3] = 343
                prt[4] = 343
                prt[5] = 343
                prt[6] = 343
                prt[7] = 343
                prt[8] = 343
                prt[9] = 343
                position = 0
            }
            if (!global.dialogue_open)
            {
                scene++
                scr_cutscene_end()
            }
            break
        case 1:
            cutscene_npc_walk(actor_toriel, actor_toriel.x, 120, (3 + (obj_pl.is_sprinting * 2)), "y", "up")
            break
        case 2:
            with (actor_toriel)
            {
                image_alpha -= 0.1
                if (image_alpha < 0)
                {
                    instance_destroy()
                    global.ruins_flag[0] = 2
                }
            }
            break
    }

    if instance_exists(obj_transition)
        global.ruins_flag[0] = 2
}
