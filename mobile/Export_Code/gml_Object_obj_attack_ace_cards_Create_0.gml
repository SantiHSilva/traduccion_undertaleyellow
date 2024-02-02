switch irandom_range(1, 4)
{
    case 1:
        idle_sprite = 3228
        flip_sprite = spr_attack_ace_flip_card_1
        shape_sprite = 3121
        break
    case 2:
        idle_sprite = 2099
        flip_sprite = spr_attack_ace_flip_card_2
        shape_sprite = 2986
        break
    case 3:
        idle_sprite = 110
        flip_sprite = spr_attack_ace_flip_card_3
        shape_sprite = 1459
        break
    case 4:
        idle_sprite = 3479
        flip_sprite = spr_attack_ace_flip_card_4
        shape_sprite = 1525
        break
}

sprite_index = flip_sprite
image_speed = 0
card_original_x = xstart
card_original_y = ystart
card_target_x = 0
card_target_y = 0
card_active = 1
attack_stage = 0
audio_play_sound(snd_card_game_deal, 1, false)
depth = -999999
