var actor_toriel = obj_toriel_npc
switch scene
{
    case 0:
        cutscene_wait(0.25)
        break
    case 1:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = actor_toriel
            message[0] = "* Las RUINAS están llenas#  de puzzles."
            message[1] = "* Fusiones antiguas entre#  distracciones y llaves#  para abrir la puerta."
            message[2] = "* Para pasar de sala#  a sala."
            message[3] = "* Permitame que#  le demuestre."
            prt[0] = 343
            prt[1] = 343
            prt[2] = 343
            prt[3] = 343
        }
        break
    case 2:
        cutscene_npc_walk(actor_toriel, 233, 124, 3, "y", "up", "nothing", 184, 84, 208, 70)
        break
    case 3:
        cutscene_sfx_play(snd_switch, 1)
        obj_switch1.image_index = 1
        instance_destroy(obj_door)
        break
    case 4:
        cutscene_wait(1)
        break
    case 5:
        cutscene_npc_walk(actor_toriel, 144, 124, 3, "x", "down", "nothing")
        break
    case 6:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = actor_toriel
            message[0] = "* Ahora somos libres para #  proceder ahora. "
            message[1] = "* Sigueme, mi niño.#* Hay más puzzles#  por delante."
            prt[0] = 343
            prt[1] = 343
        }
        break
    case 7:
        global.ruins_flag[2] = 1
        scr_cutscene_end()
        cutscene_advance()
        break
    case 8:
        cutscene_npc_walk(actor_toriel, 144, 60, (3 + (obj_pl.is_sprinting * 2)), "x", "up", "nothing")
        break
    case 9:
        with (actor_toriel)
        {
            image_alpha -= 0.1
            if (image_alpha < 0)
                instance_destroy()
        }
}

