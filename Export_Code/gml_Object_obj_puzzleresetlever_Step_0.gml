if ((room == rm_darkruins_06 && global.flag[2] == 1) || (room == rm_darkruins_10 && global.flag06 == 1))
    return;
if keyboard_multicheck_pressed(0)
{
    if (scr_interact() == 1 && obj_pl.direction == 90 && image_index == 0)
    {
        if (room == rm_darkruins_06)
        {
            with (obj_lightp)
            {
                if (i == 1 || i == 4)
                    turn = 0
                else
                    turn = 1
            }
        }
        if (room == rm_darkruins_12)
        {
            with (obj_lightp2)
            {
                if (i == 6 || i == 2 || i == 4 || i == 5)
                    turn = 0
                else
                    turn = 1
            }
        }
        audio_play_sound(snd_switch, 1, false)
        image_index = 1
        alarm[0] = 20
    }
}
