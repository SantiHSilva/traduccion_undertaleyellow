if (image_alpha < 1 && can_charge == 0)
{
    image_alpha += fade_speed
    if (image_alpha >= 1)
    {
        image_alpha = 1
        alarm[0] = ((charge_alarm * chalm_mult) - chalm_sub)
    }
}
if (can_charge == 1)
{
    x += (x_dir * charge_speed)
    y += (y_dir * charge_speed)
    if (distance_to_point(id_cape.x, id_cape.y) <= cape_distance)
    {
        with (id_cape)
        {
            if (image_speed >= 0 && can_disappear == 0)
                image_speed = (-default_imspd)
        }
    }
    if place_meeting(x, y, obj_dialogue_box_battle_transformation_any)
        in_box = 1
    if ((!(place_meeting(x, y, obj_dialogue_box_battle_transformation_any))) && in_box == 1)
    {
        image_alpha -= fade_speed
        if (image_alpha <= 0)
            instance_destroy()
    }
}
