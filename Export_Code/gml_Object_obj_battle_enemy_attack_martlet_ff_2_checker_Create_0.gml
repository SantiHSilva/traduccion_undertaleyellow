x_center = obj_dialogue_box_battle_transformation_any.x
y_center = obj_dialogue_box_battle_transformation_any.y
feather_angle_radius = ((obj_dialogue_box_battle_transformation_any.bbox_right - x_center) + 100)
feather_angle_master = 90
feather_angle_speed = 60
feather_angle_total = 0
feather_angle_total_max = 180
feather_count = 0
feather_create_max = 3
no_loop_destroy = 0
var random_number = 2
switch random_number
{
    case 1:
        feather_sprite = 2273
        break
    case 2:
        feather_sprite = 2274
        break
    case 3:
        feather_sprite = 2275
        break
    case 4:
        feather_sprite = 2276
        break
    case 5:
        feather_sprite = 2278
        break
    default:
        feather_sprite = 2273
}

event_user(0)
