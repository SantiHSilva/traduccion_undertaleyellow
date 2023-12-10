if live_call()
    return global.live_result;
if (!instance_exists(obj_ceroba_phase_2_shield))
    destroy_self = 1
if destroy_self
{
    var disable_shooting = 1
    if (!instance_exists(obj_ceroba_phase_2_shield))
        disable_shooting = 0
    if (abs((obj_ceroba_body_pacifist_phase_2.x - obj_ceroba_body_pacifist_phase_2.xstart)) > 1)
        obj_ceroba_body_pacifist_phase_2.x = lerp(obj_ceroba_body_pacifist_phase_2.x, obj_ceroba_body_pacifist_phase_2.xstart, 0.25)
    else
    {
        var bell_check = 1
        with (obj_ceroba_phase_2_bell)
        {
            if (can_move == 1)
            {
                bell_check = 0
                disable_shooting = 1
            }
        }
        if (bell_check == 1)
        {
            if instance_exists(obj_ceroba_phase_2_shield)
                instance_destroy()
        }
    }
    if disable_shooting
    {
        with (obj_heart_yellow_shot)
            instance_destroy()
        with (obj_heart_battle_fighting_yellow_final)
            can_shoot = 0
    }
}
else
{
    var shield_x_offset_amount = 70
    var sin_deg_inc = 2
    sin_deg += sin_deg_inc
    if (sin_deg > 360)
        sin_deg -= 360
    with (obj_ceroba_body_pacifist_phase_2)
        x = (xstart + (sin(degtorad(other.sin_deg)) * shield_x_offset_amount))
}
with (obj_ceroba_phase_2_shield)
    x = (obj_ceroba_body_pacifist_phase_2.x + other.shield_x_offset)
if instance_exists(obj_ceroba_phase_2_shield_destroy)
{
    with (obj_ceroba_phase_2_shield_destroy)
        x = (obj_ceroba_body_pacifist_phase_2.x + other.shield_x_offset)
}
with (obj_ceroba_phase_2_bell)
{
    if (can_move == 0 && other.destroy_self == 0)
    {
        for (var i = 0; i < array_length(other.bell_position); i++)
        {
            if (x_offset == other.bell_position[i][0] && y == other.bell_position[i][1])
            {
                can_move = 1
                var array_target = (i + 1)
                if (i == 3)
                    array_target = 0
                target_position[0] = other.bell_position[array_target][0]
                target_position[1] = other.bell_position[array_target][1]
            }
        }
    }
}
