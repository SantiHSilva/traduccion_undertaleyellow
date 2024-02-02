if (!instance_exists(obj_bowll_body_a))
    instance_destroy()
if (obj_bowll_body_a.animating == 1)
{
    x = starting_point_x
    y = starting_point_y
    image_angle = 0
}
else
{
    x = starting_point_x
    y = starting_point_y
    image_angle = 0
}
image_speed = 0
image_index = 0
with (obj_bowll_leg_back_behind_shadow_a)
    event_user(0)
