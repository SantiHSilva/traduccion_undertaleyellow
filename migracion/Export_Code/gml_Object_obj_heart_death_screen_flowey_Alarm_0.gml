audio_play_sound(snd_hurt, 1, false)
shake_count -= 1
shake_intensity = (4 - shake_count)
if (shake_count <= 0)
{
    audio_play_sound(snd_undertale_flash, 1, false)
    sprite_index = spr_heart_released
    alarm[1] = 60
}
else
    alarm[0] = (30 + (shake_count * 0.5))
