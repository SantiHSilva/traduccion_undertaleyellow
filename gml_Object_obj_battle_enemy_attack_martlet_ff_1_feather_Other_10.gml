trail_cc_current = trail_cc_start
target_speed = spin_angle_speed
x_destination = obj_battle_enemy_attack_martlet_ff_1_checker.x_center
y_destination = obj_battle_enemy_attack_martlet_ff_1_checker.y_center
angle_destination = point_direction(x, y, x_destination, y_destination)
target_direction = 1
obj_battle_enemy_attack_martlet_ff_1_checker.x_store = x_destination
obj_battle_enemy_attack_martlet_ff_1_checker.y_store = y_destination
obj_battle_enemy_attack_martlet_ff_1_checker.angle_store = angle_destination
state = 1
switch sprite_index
{
    case spr_battle_enemy_attack_martlet_feather_1:
        audio_play_sound(snd_mart_feather_atk3, 20, false)
        break
    case 2274:
    case 2275:
        audio_play_sound(snd_mart_feather_atk1, 20, false)
        break
    case 2276:
    case 2278:
        audio_play_sound(snd_mart_feather_atk2, 20, false)
        break
    default:
        audio_play_sound(snd_mart_feather_atk1, 20, false)
}

alarm[0] = 20
