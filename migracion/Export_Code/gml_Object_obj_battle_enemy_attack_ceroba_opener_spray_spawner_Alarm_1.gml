audio_play_sound(snd_decibatbouncewave2, 1, false)
if (attack_spray_state > 0)
{
}
current_position += 1
if (current_position > 2)
{
    attack_spray_state = 1
    return;
}
alarm[1] = 75
