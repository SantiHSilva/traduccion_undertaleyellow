if (!audio_is_playing(mus_ambient_river))
    audio_play_sound(mus_ambient_river, 20, true)
var martlet = obj_martlet_snowdin_22
var collider = obj_event_collider
with (collider)
{
    if trigger
    {
        if (global.snowdin_flag[13] == 1)
            other.scene = 0
        else
        {
            obj_flowey_snowdin_22.scene = 1
            instance_destroy()
        }
        global.snowdin_flag[14] = 2
        scr_cutscene_start()
        audio_sound_gain(obj_radio.current_song, 0, 500)
        instance_destroy()
    }
}
if (scene == -1)
{
}
switch scene
{
    case 0:
        scr_camera_move(380, 120, 2)
        timer = 45
        scene++
        break
    case 1:
        if (timer > 0)
            timer--
        else
        {
            timer = -1
            scene = 2
        }
        break
    case 2:
        scr_text()
        with (martlet)
            is_talking = 1
        with (msg)
        {
            sndfnt = 102
            message[0] = "* Hey there, so here's#  the plan!"
            message[1] = "* I'm sorry, I think that#  I went a little#  overboard but..."
            message[2] = "* I can't help it! This#  is all too exciting!"
            message[3] = "* So, I've been saving#  this for a rainy day."
            message[4] = "* Ya know, figuratively...#  We don't really have#  those..."
            message[5] = "* Either way! Behold! The#  UG Aviator!"
            prt[0] = 328
            prt[1] = 320
            prt[2] = 318
            prt[3] = 328
            prt[4] = 311
            prt[5] = 312
        }
        scene = 3
        break
    case 3:
        if (!instance_exists(obj_dialogue))
            scene = 4
        break
    case 4:
        if cutscene_npc_walk(1545, 440, obj_martlet_snowdin_22.y, 3, "x", "down", 0)
        {
            scene = 5
            timer = 15
        }
        break
    case 5:
        if (timer > 0)
            timer--
        else
        {
            timer = -1
            scene++
        }
        break
    case 6:
        scr_text()
        with (msg)
        {
            portrait = 0
            message[0] = "* (In the water sits an#  old-looking raft with just#  enough room for two passengers.)"
            message[1] = "* Isn't she a beauty?#* Boats are shes, ya know."
            message[2] = "* I call her Ava for#  short! Isn't that cute?"
            prt[0] = 0
            prt[1] = 318
            prt[2] = 312
            if (message_current > 0)
            {
                portrait = 1
                sndfnt = 102
                with (martlet)
                    is_talking = 1
                other.scene++
            }
        }
        break
    case 7:
        if (!instance_exists(obj_dialogue))
            scene = 8
        break
    case 8:
        if scr_camera_move(obj_pl.x, obj_pl.y, 2)
        {
            __view_set((9 << 0), 0, 1031)
            timer = 5
            scene++
        }
        break
    case 9:
        if (timer > 0)
            timer--
        else
        {
            timer = -1
            scr_radio_restart()
            scr_cutscene_end()
            scene = 10
        }
        break
    case 11:
        with (obj_npc_clover_snowdin_22)
        {
            can_walk = 1
            x_dest[0] = x
            y_dest[0] = 140
            x_dest[1] = 330
            y_dest[1] = 70
        }
        obj_martlet_snowdin_22.alarm[0] = 45
        scene++
        break
}

