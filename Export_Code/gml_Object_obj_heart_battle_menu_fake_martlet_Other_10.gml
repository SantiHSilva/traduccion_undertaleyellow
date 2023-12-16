var special_effect_end_value = global.special_effect_end_value
var player_character = global.player_character
if (special_effect_end_value != "")
    scr_determine_special_effect_end_enemy(special_effect_end_value)
switch player_character
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_down
        break
    default:
        var soul_mode = global.soul_mode
        if (soul_mode == "Red")
        {
            sprite_index = spr_heart_red
            break
        }
        else if (soul_mode == "Blue")
        {
            sprite_index = spr_heart_blue_down
            break
        }
        else if (soul_mode == "Yellow")
            sprite_index = spr_heart_yellow_down
}

