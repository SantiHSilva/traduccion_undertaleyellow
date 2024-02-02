state = 1
spin_default_x = x
spin_default_y = y
spin_direction = angle_position_current
switch sprite_index
{
    case spr_battle_enemy_attack_martlet_feather_1:
    case 2274:
    case 2275:
        audio_play_sound(snd_mart_spiral_attack_2, 20, false)
        break
    case 2276:
    case 2278:
        audio_play_sound(snd_mart_spiral_attack_1, 20, false)
        break
    default:
        audio_play_sound(snd_mart_spiral_attack_1, 20, false)
}

