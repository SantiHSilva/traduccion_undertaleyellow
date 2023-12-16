if (puzzlecount == 5)
{
    global.flag[2] = 1
    audio_play_sound(snd_success, 1, false)
    puzzlecount++
}
if (global.flag[2] == 1)
    obj_spikes.image_index = 1
