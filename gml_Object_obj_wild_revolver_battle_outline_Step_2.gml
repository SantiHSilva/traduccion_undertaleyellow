if live_call()
    return global.live_result;
if (!instance_exists(obj_target_bar_battle))
{
    if instance_exists(obj_dialogue_box_battle_transformation_attack)
    {
        with (obj_dialogue_box_battle_transformation_attack)
        {
            max_frames_default = 10
            transform_type = "out"
        }
    }
    image_alpha -= 0.2
    image_xscale -= 0.1
    image_yscale -= 0.1
}
if (image_alpha <= 0)
    instance_destroy()
if ((!instance_exists(obj_wild_revolver_circle_pre)) && target_current < target_max && ((multishot_id == noone && (!instance_exists(obj_wild_revolver_circle_multi_pre))) || (multishot_id != noone && instance_exists(multishot_id) && multishot_id.gun_spin)) && no_loop_rotate == 0)
{
    if (continue_shot == 0)
    {
        with (obj_target_bar_battle)
            alarm[0] = 1
    }
    else
    {
        can_rotate = 1
        target_angle_default = target_angle
    }
    if (multishot_id != noone)
        multishot_id.gun_spin = 0
    no_loop_rotate = 1
}
if (can_rotate == 1)
{
    time_elapsed += time_increase
    game_maker_cannot_do_math = power(((time_elapsed / ((tm[(target_current - 1)] / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise)), 2)
    animation_disjoint_angle = (sign_modifier * (max_rise - round(game_maker_cannot_do_math)))
    target_angle = (target_angle_default + animation_disjoint_angle)
    if (time_elapsed >= (tm[(target_current - 1)] / 2))
        event_user(0)
}
