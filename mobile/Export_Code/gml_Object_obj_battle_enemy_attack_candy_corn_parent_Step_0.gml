if (image_alpha < 1 && can_move == 0)
{
    image_alpha += 0.1
    if (image_alpha > 1)
        image_alpha = 1
    if (image_alpha == 1)
    {
        image_speed = 0.5
        can_move = 1
    }
}
if (can_move == 1)
{
    if (reverse == 1)
    {
        if (abs((starting_position_x - x)) < abs((x_speed * 3)))
            x -= (x_speed / 2)
        else
            reverse = 0
    }
    else
        x += x_speed
}
if place_meeting(x, y, obj_dialogue_box_battle_transformation_any)
    can_vanish = 1
if ((!(place_meeting(x, y, obj_dialogue_box_battle_transformation_any))) && can_vanish == 1)
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
