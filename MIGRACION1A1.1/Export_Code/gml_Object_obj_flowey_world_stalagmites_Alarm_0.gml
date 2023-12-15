image_speed = 1
active = false
var play_sound = 1
with (obj_flowey_world_stalagmites)
{
    if (sound_playing == 1)
        play_sound = 0
}
if (play_sound == 1)
{
    audio_play_sound(snd_undertale_spearrise, 1, false)
    sound_playing = 1
}
alarm[2] = 5
