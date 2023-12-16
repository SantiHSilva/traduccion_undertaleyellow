if (turn == 3)
{
    audio_play_sound(snd_success, 1, false)
    global.flag[1] = 1
    turn++
}
if (turn == 4 || global.flag[1] == 1)
    done = 1
