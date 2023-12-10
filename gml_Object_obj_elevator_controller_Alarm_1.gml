scene = 2
if (global.route == 3)
    audio_play_sound(mus_elevator_broken, 1, false)
else
    audio_play_sound(mus_elevator, 1, false)
audio_play_sound(snd_rumble, 1, true)
if (global.dunes_flag[4] < 3)
    alarm[2] = 660
else
    alarm[2] = 90
