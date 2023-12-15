function scr_shuffle_snowdin_13_yellow() //gml_Script_scr_shuffle_snowdin_13_yellow
{
    var shuffle_direction = irandom(1)
    if position_meeting(130, 200, shuffler[current_shuffler])
    {
        with (shuffler[current_shuffler])
            move_right = 1
        var shuff = instance_position(160, 200, obj_snowdin_13_shuffler_overworld_yellow)
        with (shuff)
            move_left = 1
    }
    else if position_meeting(160, 200, shuffler[current_shuffler])
    {
        if (shuffle_direction == 0)
        {
            with (shuffler[current_shuffler])
                move_right = 1
            shuff = instance_position(190, 200, obj_snowdin_13_shuffler_overworld_yellow)
            with (shuff)
                move_left = 1
        }
        else if (shuffle_direction == 1)
        {
            with (shuffler[current_shuffler])
                move_left = 1
            shuff = instance_position(130, 200, obj_snowdin_13_shuffler_overworld_yellow)
            with (shuff)
                move_right = 1
        }
    }
    else if position_meeting(190, 200, shuffler[current_shuffler])
    {
        with (shuffler[current_shuffler])
            move_left = 1
        shuff = instance_position(160, 200, obj_snowdin_13_shuffler_overworld_yellow)
        with (shuff)
            move_right = 1
    }
}

