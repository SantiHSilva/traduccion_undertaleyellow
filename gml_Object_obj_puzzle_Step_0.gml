if (buttons == maxbuttons)
    solved = 1
if (solved == 1)
{
    audio_play_sound(snd_success, 1, false)
    with (obj_spikes)
        swit = 1
    solved = 2
}
