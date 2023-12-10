audio_play_sound(snd_bullet_warning, 1, false)
if (warning_col == 255)
    warning_col = 65535
else
    warning_col = 255
if (warning_count > 0)
{
    alarm[0] = 3
    warning_count -= 1
}
else
{
    warning_draw = 0
    scene++
}
