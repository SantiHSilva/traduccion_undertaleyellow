can_execute = 0
switch global.player_weapon_modifier
{
    case "Silver Ammo":
        outline = 45
        shrink_speed = 3
        break
    default:
        outline = 30
        shrink_speed = 2
}

small_circle = 16
shrink = 1
color[0] = 16777215
color[1] = 0
color_number = 0
cursor_color = color[0]
outline_color = color[1]
color_alt_speed = 0.2
color_alt_max = 1
color_alt_total = 0
shot_total_pre = 0
shot_type = "nothing"
button_pressed = 0
button_pressed_main = 0
button_pressed_pre = 0
no_loop = 0
