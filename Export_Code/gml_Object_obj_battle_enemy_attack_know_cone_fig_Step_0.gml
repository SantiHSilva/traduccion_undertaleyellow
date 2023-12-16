if (jump_speed < grav_limit)
    jump_speed += grav
if (jump_speed_initial > 0)
{
    if ((bbox_bottom + jump_speed) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
    {
        while ((bbox_bottom + (sign(jump_speed) * grav)) < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
            y += (sign(jump_speed) * grav)
        jump_speed = 0
        can_switch_y = 1
    }
    y += jump_speed
    if (can_switch_y == 1)
    {
        jump_speed_initial -= jump_speed_initial_decrease
        jump_speed = (-jump_speed_initial)
        if (abs(jump_speed) < jump_speed_initial_decrease)
            jump_speed = 0
        can_switch_y = 0
    }
}
if (jump_speed_initial <= 0)
{
    x_speed -= (x_speed_decrease * sign(x_speed))
    if (abs(x_speed) < x_speed_decrease)
        x_speed = 0
}
if (x_speed == 0 && no_loop == 0)
{
    alarm[0] = 30
    no_loop = 1
}
if (bbox_top > (obj_dialogue_box_battle_transformation_any.bbox_top + 4) && bbox_bottom < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4) && bbox_left > (obj_dialogue_box_battle_transformation_any.bbox_left + 4) && bbox_right < (obj_dialogue_box_battle_transformation_any.bbox_right - 4) && in_box == 0)
    in_box = 1
if (in_box == 1)
{
    if (sign(x_speed) == -1 && (bbox_left + x_speed) <= (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
    {
        while ((bbox_left + (sign(x_speed) * x_speed_decrease)) > (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
            x += (sign(x_speed) * x_speed_decrease)
        x_speed_hold = (-x_speed)
        x_speed = 0
        can_switch_x = 1
    }
    else if (sign(x_speed) == 1 && (bbox_right + x_speed) >= (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
    {
        while ((bbox_right + (sign(x_speed) * x_speed_decrease)) < (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
            x += (sign(x_speed) * x_speed_decrease)
        x_speed_hold = (-x_speed)
        x_speed = 0
        can_switch_x = 1
    }
}
x += x_speed
if (can_switch_x == 1)
{
    x_speed = x_speed_hold
    can_switch_x = 0
}
