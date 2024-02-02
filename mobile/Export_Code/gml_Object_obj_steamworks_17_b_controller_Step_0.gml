switch scene
{
    case 0:
        if (obj_pl.x < 850)
        {
            scr_cutscene_start()
            global.sworks_flag[53] = 1
            cutscene_advance()
        }
        break
    case 1:
        cutscene_follower_into_actor()
        global.party_member = -4
        break
    case 2:
        cutscene_npc_direction(obj_ceroba_npc, "left")
        break
    case 3:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = 1161
            message[0] = "* Again?"
            message[1] = "* Well, best get on with#  it."
            message[2] = "* Watch your step."
            prt[0] = 371
            prt[1] = 377
            prt[2] = 370
        }
        break
    case 4:
        cutscene_wait(0.5)
        break
    case 5:
        cutscene_npc_walk(actor_follower, 860, 120, 3, "x", "down")
        break
    case 6:
        scr_cutscene_end()
        cutscene_advance()
        break
    case 7:
        if ((!pacifist_skip) && obj_ceroba_npc.interact == 1)
        {
            scr_text()
            with (msg)
            {
                talker[0] = 1161
                message[0] = "* I know you're skilled#  enough for this small#  task."
                message[1] = "* Go on."
                prt[0] = 395
                prt[1] = 372
            }
        }
        if (obj_pl.x <= 190)
            cutscene_advance()
        break
    case 8:
        scr_cutscene_start()
        cutscene_advance()
        break
    case 9:
        cutscene_sfx_play(snd_success, 1)
        break
    case 10:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc)
        break
    case 11:
        cutscene_npc_walk(1168, 160, 324, 3, "x", "left")
        break
    case 12:
        cutscene_wait(0.5)
        break
    case 13:
        with (obj_steamworks_17_lever)
        {
            image_speed = (1/3)
            audio_play_sound(snd_switch, 1, false)
        }
        with (obj_steamworks_steam_blaster)
            instance_destroy()
        cutscene_advance()
        break
    case 14:
        if (obj_steamworks_17_lever.image_speed == 0)
            cutscene_advance()
        break
    case 15:
        cutscene_wait(1)
        break
    case 16:
        cutscene_npc_direction(obj_player_npc, "right")
        break
    case 17:
        instance_destroy(obj_player_npc)
        cutscene_advance()
        if pacifist_skip
            cutscene_advance(23)
        break
    case 18:
        obj_ceroba_npc.x = 384
        obj_ceroba_npc.y = obj_pl.y
        cutscene_advance()
        break
    case 19:
        cutscene_npc_set_sprites(obj_ceroba_npc, 81, 80, 78, 79, 61, 65, 60, 63)
        break
    case 20:
        cutscene_npc_walk(1161, (obj_pl.x + 20), obj_pl.y, 4, "x", "left")
        break
    case 21:
        obj_pl.direction = 180
        global.party_member = 1171
        actor_follower = 1161
        cutscene_actor_into_follower()
        break
    case 22:
        global.sworks_flag[53] = 2
        cutscene_end()
        break
    case 23:
        cutscene_wait(0.5)
        break
    case 24:
        cutscene_npc_direction(obj_player_npc, "down")
        global.sworks_flag[53] = 2
        cutscene_end()
        break
}

