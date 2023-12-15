small_circle = 64
outline = 120
shrink = 1
switch global.player_weapon_modifier
{
    case "Silver Ammo":
        shrink_speed = 9
        break
    default:
        shrink_speed = 6
}

color[0] = 16777215
color[1] = 0
color_number = 0
cursor_color = color[0]
outline_color = color[1]
color_alt_speed = 0.2
color_alt_max = 1
color_alt_total = 0
shot_type = "nothing"
button_pressed = 0
no_loop = 0
hit_object = 2910
