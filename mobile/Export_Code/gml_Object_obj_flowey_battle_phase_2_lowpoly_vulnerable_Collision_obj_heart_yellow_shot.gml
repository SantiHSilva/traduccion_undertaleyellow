if (hp_self > 0)
{
    instance_destroy(other)
    audio_play_sound(snd_arc_hit, 1, false)
    hit_flash = 1
    hp_self -= 1
    alarm[0] = 3
}
shake_strength = 4
