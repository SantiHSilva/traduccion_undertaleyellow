if live_call()
    return global.live_result;
switch sprite_index
{
    case spr_ceroba_p2_1:
        break
    case 3485:
        obj_ceroba_transformation_mask.image_alpha = 1
        sprite_index = -4
        break
    case 986:
        image_speed = 1
        sprite_index = spr_ceroba_p2_knocked_down_loop
        obj_ceroba_transformation_mask.mask_is_vulnerable = 1
        break
    case 2823:
        instance_create_depth(obj_ceroba_phase_2_shield.x, obj_ceroba_phase_2_shield.y, -9999, obj_ceroba_phase_2_shield_reappear)
        break
    case 3106:
    case 1799:
    case 2784:
        image_speed = 0
        image_index = (image_number - 1)
        break
    case 2288:
        sprite_index = spr_ceroba_p2_block_3
        image_index = 0
        image_speed = 1
        break
    case 3115:
        image_index = 0
        sprite_index = spr_ceroba_p2_get_up_3
        break
    case 2917:
        instance_create_depth(obj_ceroba_phase_2_shield.x, obj_ceroba_phase_2_shield.y, -9999, obj_ceroba_phase_2_shield_reappear)
        break
    case 1280:
        image_index = 0
        sprite_index = spr_ceroba_p2_special_attack_2
        break
    case 2606:
        image_index = 1
        image_xscale *= -1
        with (obj_battle_enemy_attack_ceroba_phase_2_special_attack_spawner)
        {
            bullet_attack_count -= 1
            if (bullet_attack_count <= 0 && image_xscale == 1)
            {
                sequence_layer_enabled = 1
                other.sprite_index = spr_ceroba_p2_special_attack
                other.image_index = 0
                event_user(0)
            }
        }
        break
    case 2774:
    case 2798:
    case 3390:
    case 3560:
    case 399:
    case 3514:
        break
    default:
        sprite_index = -4
        break
}

