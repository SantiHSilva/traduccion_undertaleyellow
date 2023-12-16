function scr_walk_npc_solid(argument0, argument1, argument2, argument3, argument4, argument5, argument6) //gml_Script_scr_walk_npc_solid
{
    is_walking = 1
    actor_speed = argument2
    condition_1 = 0
    if (no_loop_destination == 0)
    {
        var destination_x = abs((x - argument0))
        var destination_y = abs((y - argument1))
        var axis_override = argument4
        if (axis_override == "x" || axis_override == "y")
            walk_axis = axis_override
        else
        {
            var result = sign((destination_x - destination_y))
            switch result
            {
                case 1:
                    walk_axis = "x"
                    break
                case -1:
                    walk_axis = "y"
                    break
                default:
                    walk_axis = "y"
            }

        }
        actor_speed_x = (sign((argument0 - x)) * actor_speed)
        actor_speed_y = (sign((argument1 - y)) * actor_speed)
        no_loop_destination = 1
    }
    if (x == argument0 && y == argument1)
    {
        no_loop_destination = 0
        npc_walking = 0
        if (argument5 != "nothing")
            npc_direction = argument5
        image_speed = 0
        image_index = 0
    }
    switch walk_axis
    {
        case "x":
            x_previous = x
            x += actor_speed_x
            if (abs((argument0 - x)) < actor_speed && place_free(argument0, y) && (!(place_meeting(argument0, y, argument6))))
                x = argument0
            if (place_free(x, y) && (!(place_meeting(x, y, argument6))) && x_previous != argument0)
            {
                npc_walking = 1
                image_speed = argument3
                if (actor_speed_x == (-actor_speed))
                    npc_direction = "left"
                else if (actor_speed_x == actor_speed)
                    npc_direction = "right"
            }
            if ((!(place_free(x, y))) || place_meeting(x, y, argument6) || x_previous == argument0)
            {
                x = x_previous
                walk_axis = "y"
            }
            actor_speed_y = (sign((argument1 - y)) * actor_speed)
            i = (x + actor_speed_x)
            j = y
            if (abs((argument0 - i)) < actor_speed)
                i = argument0
            while (j != argument1)
            {
                j += actor_speed_y
                if (abs((argument1 - j)) < actor_speed)
                    j = argument1
                if ((!(place_free(i, j))) || place_meeting(i, j, argument6))
                {
                    condition_1 = 1
                    break
                }
                else
                    continue
            }
            if (condition_1 == 1)
            {
                while (i != argument0)
                {
                    i += actor_speed_x
                    j = y
                    if (abs((argument0 - i)) < actor_speed)
                        i = argument0
                    while (j != argument1)
                    {
                        j += actor_speed_y
                        if (abs((argument1 - j)) < actor_speed)
                            j = argument1
                        if (i == argument0 && j == argument1)
                            return;
                        else if ((!(place_free(i, j))) || place_meeting(i, j, argument6))
                            break
                        else
                        {
                            if (j == argument1)
                                return;
                            continue
                        }
                    }
                }
                walk_axis = "y"
                return;
            }
            break
        case "y":
            y_previous = y
            y += actor_speed_y
            if (abs((argument1 - y)) < actor_speed && place_free(x, argument1) && (!(place_meeting(x, argument1, argument6))))
                y = argument1
            if (place_free(x, y) && (!(place_meeting(x, y, argument6))) && y_previous != argument1)
            {
                npc_walking = 1
                image_speed = argument3
                if (actor_speed_y == (-actor_speed))
                    npc_direction = "up"
                else if (actor_speed_y == actor_speed)
                    npc_direction = "down"
            }
            if ((!(place_free(x, y))) || place_meeting(x, y, argument6) || y_previous == argument1)
            {
                y = y_previous
                walk_axis = "x"
            }
            actor_speed_x = (sign((argument0 - x)) * actor_speed)
            i = x
            j = (y + actor_speed_y)
            if (abs((argument1 - j)) < actor_speed)
                j = argument1
            while (i != argument0)
            {
                i += actor_speed_x
                if (abs((argument0 - i)) < actor_speed)
                    i = argument0
                if ((!(place_free(i, j))) || place_meeting(i, j, argument6))
                {
                    condition_1 = 1
                    break
                }
                else
                    continue
            }
            if (condition_1 == 1)
            {
                while (j != argument1)
                {
                    i = x
                    j += actor_speed_y
                    if (abs((argument1 - j)) < actor_speed)
                        j = argument1
                    while (i != argument0)
                    {
                        i += actor_speed_x
                        if (abs((argument0 - i)) < actor_speed)
                            i = argument0
                        if (i == argument0 && j == argument1)
                            return;
                        else if ((!(place_free(i, j))) || place_meeting(i, j, argument6))
                            break
                        else
                        {
                            if (i == argument0)
                                return;
                            continue
                        }
                    }
                }
                walk_axis = "x"
                return;
            }
            break
    }

    if (x == argument0 && y == argument1)
    {
        no_loop_destination = 0
        npc_walking = 0
        is_walking = 0
        if (argument5 != "nothing")
            npc_direction = argument5
        image_speed = 0
        image_index = 0
        return 1;
    }
}

