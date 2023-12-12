if (!instance_exists(obj_heart_battle_fighting_parent))
    instance_destroy()
if (image_alpha < 1 && can_move == 0)
{
    image_alpha += 0.1
    if (image_alpha > 1)
        image_alpha = 1
    if (image_alpha == 1)
        can_move = 1
}
if (can_move == 1)
{
    game_maker_cannot_do_math = power(((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise)), 2)
    animation_disjoint_y = (sign_modifier * (max_rise - round(game_maker_cannot_do_math)))
    time_elapsed += time_increase
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0
        sign_modifier = (-sign_modifier)
    }
    y = (starting_position_y + animation_disjoint_y)
    animation_disjoint_x += x_speed
    x = round((starting_position_x + animation_disjoint_x))
    game_maker_cannot_do_math = power(((time_elapsed_angle / ((time_max_angle / 2) * (1 / sqrt(max_rise_angle)))) - sqrt(max_rise_angle)), 2)
    animation_disjoint_angle = (sign_modifier_angle * (max_rise_angle - round(game_maker_cannot_do_math)))
    time_elapsed_angle += time_increase_angle
    if (time_elapsed_angle >= time_max_angle)
    {
        time_elapsed_angle = 0
        sign_modifier_angle = (-sign_modifier_angle)
    }
    image_angle = animation_disjoint_angle
}
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
