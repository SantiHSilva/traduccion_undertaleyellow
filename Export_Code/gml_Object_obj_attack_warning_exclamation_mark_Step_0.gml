counter += image_speed
sound_play_noloop = 0
switch counter
{
    case 3.2:
    case 5.6:
    case 8:
        with (obj_attack_warning_exclamation_mark)
        {
            if (sound_play_noloop == 1)
                return;
        }
        audio_play_sound(snd_bullet_warning, 20, false)
        sound_play_noloop = 1
        break
}

