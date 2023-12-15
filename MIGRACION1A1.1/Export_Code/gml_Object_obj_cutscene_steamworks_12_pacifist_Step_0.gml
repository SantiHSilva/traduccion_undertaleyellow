switch scene
{
    case 0:
        if (obj_pl.x < 320)
        {
            scr_cutscene_start()
            cutscene_advance()
        }
        break
    case 1:
        cutscene_wait(0.5)
        break
    case 2:
        cutscene_camera_move(220, obj_pl.y, 1, 0)
        break
    case 3:
        cutscene_audio_fade(obj_radio.current_song, 0, 300, 0.25, 0, 1)
        break
    case 4:
        cutscene_wait(1)
        break
    case 5:
        tile_layer_hide(-1000)
        cutscene_advance()
        break
    case 6:
        cutscene_sfx_play(snd_elevator_start, 0.8)
        break
    case 7:
        cutscene_screenshake(0.5, 2)
        break
    case 8:
        cutscene_wait(0.5)
        break
    case 9:
        cutscene_music_start(219)
        break
    case 10:
        cutscene_npc_walk(1165, 190, obj_pl.y, 4, "y", "right", 0)
        break
    case 11:
        cutscene_dialogue()
        with (msg)
        {
            color = 1
            col_modif[0] = 16711935
            talker[0] = 1165
            message[0] = "* AXIS MODEL 014 READY TO#  GUARD AND PROTECT."
            message_col[0][0] = "  AXIS                                        "
            message[1] = "* INTRUDERS SPOTTED.#  STEAMWORKS: EASTERN#  BRANCH."
            prt[0] = 473
            prt[1] = 473
        }
        break
    case 12:
        with (obj_ceroba_follower)
        {
            image_alpha = 0
            instance_create(x, y, obj_ceroba_npc)
            obj_ceroba_npc.npc_direction = "left"
            obj_ceroba_npc.sprite_index = obj_ceroba_follower.sprite_index
        }
        cutscene_advance()
        break
    case 13:
        cutscene_npc_walk(1160, (obj_pl.x - 30), obj_pl.y, 4, "y", "left")
        break
    case 14:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = 1160
            talker[1] = 1165
            talker[2] = 1160
            talker[3] = 1165
            talker[4] = 1160
            talker[6] = 1165
            talker[10] = 1160
            talker[13] = 1165
            talker[18] = 1160
            message[0] = "* Wait! Who are you!?"
            message[1] = "* AXIS MODEL 014 READY TO#  GUARD AND PROTECT."
            message[2] = "* You just said that."
            message[3] = "* MY VOCABULARY IS NOT#  EXPANSIVE, MA'AM."
            message[4] = "* Okay... Well, I wasn't#  expecting anyone to be#  here."
            message[5] = "* If you let us through,#  we'll be out of your#  hair."
            message[6] = "* ONE: I DO NOT HAVE#  HAIR."
            message[7] = "* TWO: I CANNOT ALLOW YOU#  TO PASS."
            message[8] = "* YOU HAVE TRESPASSED ON#  PRIVATE PROPERTY."
            message[9] = "* YOU HAVE ALSO UTILIZED#  MACHINERY WITHOUT#  PERMISSION. "
            message[10] = "* No, no! We're just#  heading to Hotland."
            message[11] = "* We aren't malicious in#  the slightest!"
            message[12] = "* It was us who woke up#  this place. Isn't it#  nice to have power?"
            message[13] = "* WHILE IT IS NICE TO BE#  OPERATIONAL AGAIN, IT IS#  ALSO NOT NICE."
            message[14] = "* I AM THE LAST OF MY#  KIND TO POLICE THIS#  AREA."
            message[15] = "* ALL OF MY COMRADES HAVE#  RUSTED OVER."
            message[16] = "* I ALWAYS KNEW I WAS THE#  BEST BUT I AM ALSO#  LONELY NOW. OH WELL."
            message[17] = "* I WILL NOW TRAP YOU IN#  A COLD, DARK ROOM, FOR#  WHICH YOU MIGHT PERISH."
            message[18] = "* My husband, Chujin,#  used to work here! I#  have permission!"
            message[19] = "* Don't make me hurt you."
            prt[0] = 388
            prt[1] = 473
            prt[2] = 382
            prt[3] = 473
            prt[4] = 394
            prt[5] = 371
            prt[6] = 473
            prt[7] = 473
            prt[8] = 473
            prt[9] = 473
            prt[10] = 381
            prt[11] = 381
            prt[12] = 3754
            prt[13] = 473
            prt[14] = 473
            prt[15] = 473
            prt[16] = 473
            prt[17] = 473
            prt[18] = 371
            prt[19] = 394
        }
        break
    case 15:
        cutscene_npc_action_sprite(1160, 77, (1/3), 1, 0)
        break
    case 16:
        cutscene_wait(0.5)
        break
    case 17:
        cutscene_instance_create(obj_axis_npc.x, (obj_axis_npc.y - 28), obj_cutscene_ex)
        break
    case 18:
        cutscene_wait(0.8)
        break
    case 19:
        instance_destroy(obj_cutscene_ex)
        cutscene_advance()
        break
    case 20:
        cutscene_audio_fade(cutscene_music, 0, 300, 0.25, 0, 1)
        break
    case 21:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = 1165
            talker[1] = 1160
            message[0] = "* CHUJIN? MY CREATOR?"
            message[1] = "* Huh?"
            prt[0] = 473
            prt[1] = 393
        }
        if (msg.message_current == 1)
            obj_ceroba_npc.action_sprite = 0
        break
    case 22:
        cutscene_npc_direction(obj_axis_npc, "down")
        break
    case 23:
        cutscene_wait(0.2)
        break
    case 24:
        cutscene_npc_direction(obj_axis_npc, "left")
        break
    case 25:
        cutscene_wait(0.2)
        break
    case 26:
        cutscene_npc_direction(obj_axis_npc, "up")
        break
    case 27:
        cutscene_wait(0.2)
        break
    case 28:
        cutscene_npc_direction(obj_axis_npc, "right")
        break
    case 29:
        cutscene_wait(1.5)
        break
    case 30:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = 1165
            message[0] = "* SORRY, I DO NOT SEE HIM#  PRESENT."
            message[1] = "* GOODBYE."
            prt[0] = 473
            prt[1] = 473
        }
        break
    case 31:
        cutscene_sfx_play(snd_rock_break, 1)
        break
    case 32:
        cutscene_instance_create((obj_pl.x - 15), (obj_pl.y + 5), obj_steamworks_12_trapdoor)
        break
    case 33:
        cutscene_wait(1)
        break
    case 34:
        cutscene_dialogue()
        with (msg)
        {
            talker[0] = 1160
            message[0] = "* WAIT!"
            prt[0] = 381
        }
        break
    case 35:
        cutscene_sfx_play(snd_decibatfall, 1)
        break
    case 36:
        with (obj_ceroba_npc)
        {
            action_sprite = 1
            sprite_index = spr_ceroba_fall
            image_alpha = 0.75
        }
        with (obj_pl)
        {
            direction = 270
            image_alpha = 0.75
        }
        instance_destroy(obj_steamworks_footsteps)
        cutscene_advance()
        break
    case 37:
        with (obj_ceroba_npc)
            image_angle += 1.5
        with (obj_pl)
        {
            direction = 270
            image_angle -= 1
        }
        var fall_speed = 10
        for (var i = 1000002; i >= 999998; i--)
            tile_layer_shift(i, 0, (-fall_speed))
        layer_y("ts_steamworks", (layer_get_y("ts_steamworks") - fall_speed))
        with (obj_asset_steamworks_smallgear)
            y -= fall_speed
        obj_axis_npc.y -= fall_speed
        obj_steamworks_12_trapdoor.y -= fall_speed
        cutscene_wait(2)
        break
    case 38:
        with (obj_ceroba_npc)
        {
            image_angle += 1.5
            image_alpha -= 0.1
        }
        with (obj_pl)
        {
            direction = 270
            image_angle -= 1
            image_alpha -= 0.1
        }
        if (obj_pl.image_alpha <= 0 && obj_ceroba_npc.image_alpha <= 0)
            cutscene_wait(0.5)
        break
    case 39:
        cutscene_sfx_play(snd_undertale_thud, 0.8)
        break
    case 40:
        cutscene_wait(0.3)
        break
    case 41:
        cutscene_sfx_play(snd_toy_squeak, 0.3)
        break
    case 42:
        cutscene_wait(0.5)
        break
    case 43:
        cutscene_change_room(160, 135, 150, 0.025)
        break
}

