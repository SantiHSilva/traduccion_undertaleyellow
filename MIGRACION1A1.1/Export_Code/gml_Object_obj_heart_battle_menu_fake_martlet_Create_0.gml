moveable = 0
no_loop = 1
no_loop_moveable = 0
if (global.battling_boss == 1)
    no_loop_determine_sparing = 1
else
    no_loop_determine_sparing = 0
image_speed = 0
image_index = 0
image_alpha = 0
text_deadlock_1 = 0
text_desdlock_contents_1 = 3016
key_select_simulate = 0
fade_in = 1
var player_character = global.player_character
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
        {
            sprite_index = spr_heart_yellow_up_original
            break
        }
        else if (soul_mode == "Yellow Rhythm")
            sprite_index = spr_heart_yellow_down
}

