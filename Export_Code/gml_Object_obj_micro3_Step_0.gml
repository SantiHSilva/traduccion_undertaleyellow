if keyboard_multicheck_pressed(0)
{
    if (scr_interact() == 1)
    {
        if (obj_pl.direction == 90 && global.tinypuzzle == 3)
        {
            audio_play_sound(snd_tinyfroggit, 10, false)
            audio_sound_pitch(snd_tinyfroggit, 2)
            global.tinypuzzle = 2
        }
    }
}