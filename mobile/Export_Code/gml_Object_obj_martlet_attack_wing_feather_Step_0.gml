if live_call()
    return global.live_result;
if (!instance_exists(obj_heart_battle_fighting_parent))
    instance_destroy()
if (state == 1)
{
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
        ds_list_add(angle_list, direction)
        while (ds_list_size(x_list) > max_points_trail)
        {
            ds_list_delete(x_list, 0)
            ds_list_delete(y_list, 0)
            ds_list_delete(angle_list, 0)
        }
    }
    x += lengthdir_x(attack_speed, direction)
    y += lengthdir_y(attack_speed, direction)
    if (place_meeting(x, y, obj_dialogue_box_battle_transformation_any) && in_box == 0)
        in_box = 1
    if ((!(place_meeting(x, y, obj_dialogue_box_battle_transformation_any))) && in_box == 1)
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
