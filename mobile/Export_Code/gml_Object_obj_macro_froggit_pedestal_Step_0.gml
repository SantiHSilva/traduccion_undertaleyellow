if (global.sworks_flag[pedestal_flag] == 0)
{
    if (scr_interact() && keyboard_multicheck_pressed(0))
    {
        scr_text()
        if (!pedestal_is_active)
        {
            with (msg)
                message[0] = "* (Something seems to have once#  rested here...)"
            pedestal_menu_open = 1
        }
        else
        {
            with (msg)
            {
                message[0] = "* (A beautiful flower made of#  solid gold.)"
                message[1] = "* (Unfortunately, it's stuck to#  the pedestal.)"
            }
        }
    }
    if ((!instance_exists(obj_dialogue)) && pedestal_menu_open == 1)
    {
        instance_create(x, y, obj_item_use_menu)
        scr_cutscene_start()
        pedestal_menu_open = 2
    }
    var correct_item = 0
    if (global.item_used_overworld != undefined && pedestal_menu_open == 2)
    {
        switch global.item_used_overworld
        {
            case "G. Pear":
                correct_item = 1
                global.sworks_flag[pedestal_flag] = 1
                break
            case "G. Coffee":
                correct_item = 1
                global.sworks_flag[pedestal_flag] = 2
                break
            case "G. Cactus":
                correct_item = 1
                global.sworks_flag[pedestal_flag] = 3
                break
            default:
                scr_text()
                with (obj_dialogue)
                    message[0] = "* (Nothing happened.)"
                global.cutscene = false
                break
        }

        if (correct_item == 1)
        {
            scr_screenshake(6, 2)
            alarm[0] = 1
            alarm[1] = 15
            audio_play_sound(snd_undertale_swipe, 1, false)
            scr_item_remove(global.item_used_overworld)
        }
    }
    if (pedestal_menu_open == 2 && (!instance_exists(obj_item_use_menu)))
    {
        pedestal_menu_open = 0
        global.item_used_overworld = undefined
    }
}
