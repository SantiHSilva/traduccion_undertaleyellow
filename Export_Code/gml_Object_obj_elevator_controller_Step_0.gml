var shake = 0
if (scene == 1)
{
    shake = 1
    if (shake_int > 0)
        shake_int -= 0.2
    else if (!alarm[1])
        alarm[1] = 50
}
if (scene == 2)
{
    if (irandom(60) == 1)
    {
        darkness_alpha = 0.15
        audio_play_sound(snd_electric_flash, 1, false)
    }
    else
        darkness_alpha = 0
    shake_int = 1
    shake = 1
}
if (scene == 3)
{
    shake = 1
    if (shake_int > 0)
        shake_int -= 0.2
    else if (!alarm[3])
        alarm[3] = 50
}
if shake
{
    __view_set((0 << 0), 0, 0)
    __view_set((1 << 0), 0, 0)
    __view_set((0 << 0), 0, (__view_get((0 << 0), 0) + random_range((-shake_int), shake_int)))
    __view_set((1 << 0), 0, (__view_get((1 << 0), 0) + random_range(((-shake_int) * 0.75), (shake_int * 0.75))))
}
