if (arc_controls_open == 1)
{
    if (keyboard_multicheck_pressed(0) || keyboard_multicheck_pressed(1))
    {
        arc_controls_open = 0
        audio_play_sound(snd_arc_menu_select, 1, false)
    }
}
if (overlay_alpha > 0)
    overlay_alpha -= 0.1
if end_game
{
    if ((!audio_is_playing(snd_mew_seeya)) && (!instance_exists(obj_transition)))
    {
        global.cutscene = false
        var trn = instance_create(0, 0, obj_transition)
        with (trn)
        {
            newRoom = 125
            xx = 43
            yy = 78
        }
    }
}
switch scene
{
    case 3:
        if (arc_title_x > 160)
            arc_title_x -= 5
        else
            scene++
        break
    case 4:
        if (!alarm[4])
            alarm[4] = 15
        break
    case 5:
        if global.down_keyp
        {
            if (arc_cursor_pos < 3)
                arc_cursor_pos++
            else
                arc_cursor_pos = 1
            audio_play_sound(snd_arc_menu_move, 1, false)
        }
        if global.up_keyp
        {
            if (arc_cursor_pos > 1)
                arc_cursor_pos--
            else
                arc_cursor_pos = 3
            audio_play_sound(snd_arc_menu_move, 1, false)
        }
        if keyboard_multicheck_pressed(0)
        {
            switch arc_cursor_pos
            {
                case 1:
                    scene++
                    audio_play_sound(snd_arc_menu_select, 1, false)
                    break
                case 2:
                    arc_controls_open = 1
                    arc_cursor_pos = 1
                    audio_play_sound(snd_arc_menu_select, 1, false)
                    break
                case 3:
                    end_game = true
                    audio_play_sound(snd_mew_seeya, 1, false)
                    break
            }

        }
        break
    case 6:
        if (!alarm[5])
            alarm[5] = 30
        break
}

if (scene < 5)
{
    if keyboard_multicheck_pressed(0)
    {
        arc_title_x = 160
        arc_draw_menu_options = 1
        audio_stop_all()
        audio_play_sound(snd_mew_title, 1, false)
        scene = 5
        for (var i = 0; i < 12; i++)
        {
            if (alarm_get(i) > 0)
                alarm_set(i, -1)
        }
    }
}
