if live_call()
    return global.live_result;
depth = (-y)
interact = 0
if (keyboard_multicheck_pressed(0) && scr_interact() == 1)
    interact = 1
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
{
    image_speed = 0
    is_talking = 0
}
if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag)
if interact
    snow_cutscene = 1
if snow_cutscene
{
    if (npc_flag == 0)
    {
        switch scene
        {
            case 0:
                scr_cutscene_start()
                scr_text()
                with (msg)
                {
                    message[0] = "* (It's a snowcastle!#* How... cute?)"
                    message[1] = "* (You open the doors.)"
                }
                if (global.dialogue_open == 0)
                {
                    audio_play_sound(snd_snowcastle_door_1, 1, false)
                    scene++
                }
                break
            case 1:
                image_speed = 0.4
                if (image_index >= 12)
                {
                    image_speed = 0
                    scene++
                }
                break
            case 2:
                npc_flag += 1
                scene = 0
                scr_cutscene_end()
                snow_cutscene = 0
                break
        }

    }
    else if (npc_flag == 1)
    {
        switch scene
        {
            case 0:
                scr_cutscene_start()
                scr_text()
                with (msg)
                    message[0] = "* (You open the drawbridge.)"
                if (global.dialogue_open == 0)
                {
                    audio_play_sound(snd_snowcastle_door_2, 1, false)
                    scene++
                }
                break
            case 1:
                image_speed = 0.4
                if (image_index >= (image_number - 1))
                {
                    image_index = (image_number - 1)
                    image_speed = 0
                    scene++
                }
                break
            case 2:
                scr_cutscene_end()
                scene = 0
                npc_flag += 1
                snow_cutscene = 0
                break
        }

    }
    else if (npc_flag == 2)
    {
        scr_text()
        with (msg)
            message[0] = "* (Your head hurts too much to#  keep going.)"
        if (global.dialogue_open == 0)
        {
            npc_flag = 3
            snow_cutscene = 0
        }
    }
    else if (npc_flag == 3)
    {
        scr_text()
        with (msg)
            message[0] = "* (It's a snowcastles.)"
        if (global.dialogue_open == 0)
            snow_cutscene = 0
    }
}
