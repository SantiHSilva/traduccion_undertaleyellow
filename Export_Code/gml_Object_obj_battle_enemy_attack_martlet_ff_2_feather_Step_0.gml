if (image_alpha < 1 && can_fade_in == 1)
{
    image_alpha += 0.2
    if (image_alpha > 1)
        image_alpha = 1
    if (image_alpha == 1)
        can_fade_in = 0
}
var can_trail = 0
trail_cc_current += 1
if (trail_cc_current >= trail_cc_max)
{
    can_trail = 1
    trail_cc_current = 0
}
if (can_trail == 1)
{
    ds_list_add(x_list, x)
    ds_list_add(y_list, y)
    ds_list_add(angle_list, image_angle)
    while (ds_list_size(x_list) > max_points_trail)
    {
        ds_list_delete(x_list, 0)
        ds_list_delete(y_list, 0)
        ds_list_delete(angle_list, 0)
    }
}
feather_radius += feather_radius_increase
feather_angle += feather_angle_increase
if (feather_angle >= 360)
    feather_angle -= 360
else if (feather_angle < 0)
    feather_angle += 360
x = (x_center + (feather_radius * cos(degtorad(feather_angle))))
y = (y_center - (feather_radius * sin(degtorad(feather_angle))))
if (feather_radius != 0)
    image_angle = point_direction(x, y, x_center, y_center)
if (feather_radius < 0)
    image_angle += 180
if (feather_radius > fai_radius_min)
{
    if (abs(feather_angle_increase) > abs(feather_angle_min))
        feather_angle_increase += feather_angle_decrease
}
else if (abs(feather_angle_increase) < abs(feather_angle_max))
    feather_angle_increase -= feather_angle_decrease
if (place_meeting(x, y, obj_dialogue_box_battle_transformation_any) && in_box == 0)
    in_box = 1
if ((!(place_meeting(x, y, obj_dialogue_box_battle_transformation_any))) && in_box == 1)
{
    if (can_fade_out == 0)
    {
        global.id_store = id
        can_fade_out_temp = 1
        for (i = 0; i < obj_battle_enemy_attack_martlet_ff_2_checker.feather_create_max; i++)
        {
            with (obj_battle_enemy_attack_martlet_ff_2_checker.id_feather[feather_count][i])
            {
                if (!(((!(place_meeting(x, y, obj_dialogue_box_battle_transformation_any))) && in_box == 1)))
                {
                    with (global.id_store)
                        can_fade_out_temp = 0
                }
            }
        }
        can_fade_out = can_fade_out_temp
    }
    if (can_fade_out == 1)
    {
        if (image_alpha > 0)
        {
            image_alpha -= 0.1
            if (image_alpha < 0)
                image_alpha = 0
            if (image_alpha == 0)
                instance_destroy()
        }
    }
}
