function scr_walk_ai(argument0, argument1, argument2, argument3, argument4) //gml_Script_scr_walk_ai
{
    dalv_walk_speed = argument3
    condition_1 = 0
    if (no_loop_destination_dalv == 0)
    {
        var destination_x = abs((x - argument0))
        var destination_y = abs((y - argument1))
        var axis_override = argument4
        if (axis_override == "x" || axis_override == "y")
            dalv_walk_axis = axis_override
        else
        {
            var result = sign((destination_x - destination_y))
            switch result
            {
                case 1:
                    dalv_walk_axis = "x"
                    break
                case -1:
                    dalv_walk_axis = "y"
                    break
                default:
                    dalv_walk_axis = "y"
            }

        }
        dalv_walk_speed_x = (sign((argument0 - x)) * dalv_walk_speed)
        dalv_walk_speed_y = (sign((argument1 - y)) * dalv_walk_speed)
        no_loop_destination_dalv = 1
    }
    if (x == argument0 && y == argument1)
    {
        npc_walking = 0
        path_speed = 0
        image_speed = 0
        image_index = 0
    }
    switch dalv_walk_axis
    {
        case "x":
            x_previous = x
            x += dalv_walk_speed_x
            if (abs((argument0 - x)) < dalv_walk_speed && place_free(argument0, y) && (!(place_meeting(argument0, y, argument2))))
                x = argument0
            if (place_free(x, y) && (!(place_meeting(x, y, argument2))) && x_previous != argument0)
            {
                npc_walking = 1
                image_speed = 0.2
                if (dalv_walk_speed_x == (-dalv_walk_speed))
                    direction = 180
                else if (dalv_walk_speed_x == dalv_walk_speed)
                    direction = 0
            }
            if ((!(place_free(x, y))) || place_meeting(x, y, argument2) || x_previous == argument0)
            {
                x = x_previous
                dalv_walk_axis = "y"
            }
            dalv_walk_speed_y = (sign((argument1 - y)) * dalv_walk_speed)
            i = (x + dalv_walk_speed_x)
            j = y
            if (abs((argument0 - i)) < dalv_walk_speed)
                i = argument0
            while (j != argument1)
            {
                j += dalv_walk_speed_y
                if (abs((argument1 - j)) < dalv_walk_speed)
                    j = argument1
                if ((!(place_free(i, j))) || place_meeting(i, j, argument2))
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
                    i += dalv_walk_speed_x
                    j = y
                    if (abs((argument0 - i)) < dalv_walk_speed)
                        i = argument0
                    while (j != argument1)
                    {
                        j += dalv_walk_speed_y
                        if (abs((argument1 - j)) < dalv_walk_speed)
                            j = argument1
                        if (i == argument0 && j == argument1)
                            return;
                        else if ((!(place_free(i, j))) || place_meeting(i, j, argument2))
                            break
                        else
                        {
                            if (j == argument1)
                                return;
                            continue
                        }
                    }
                }
                dalv_walk_axis = "y"
                return;
            }
            break
        case "y":
            y_previous = y
            y += dalv_walk_speed_y
            if (abs((argument1 - y)) < dalv_walk_speed && place_free(x, argument1) && (!(place_meeting(x, argument1, argument2))))
                y = argument1
            if (place_free(x, y) && (!(place_meeting(x, y, argument2))) && y_previous != argument1)
            {
                npc_walking = 1
                image_speed = 0.2
                if (dalv_walk_speed_y == (-dalv_walk_speed))
                    direction = 90
                else if (dalv_walk_speed_y == dalv_walk_speed)
                    direction = 270
            }
            if ((!(place_free(x, y))) || place_meeting(x, y, argument2) || y_previous == argument1)
            {
                y = y_previous
                dalv_walk_axis = "x"
            }
            dalv_walk_speed_x = (sign((argument0 - x)) * dalv_walk_speed)
            i = x
            j = (y + dalv_walk_speed_y)
            if (abs((argument1 - j)) < dalv_walk_speed)
                j = argument1
            while (i != argument0)
            {
                i += dalv_walk_speed_x
                if (abs((argument0 - i)) < dalv_walk_speed)
                    i = argument0
                if ((!(place_free(i, j))) || place_meeting(i, j, argument2))
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
                    j += dalv_walk_speed_y
                    if (abs((argument1 - j)) < dalv_walk_speed)
                        j = argument1
                    while (i != argument0)
                    {
                        i += dalv_walk_speed_x
                        if (abs((argument0 - i)) < dalv_walk_speed)
                            i = argument0
                        if (i == argument0 && j == argument1)
                            return;
                        else if ((!(place_free(i, j))) || place_meeting(i, j, argument2))
                            break
                        else
                        {
                            if (i == argument0)
                                return;
                            continue
                        }
                    }
                }
                dalv_walk_axis = "x"
                return;
            }
            break
    }

    if (x == argument0 && y == argument1)
    {
        npc_walking = 0
        path_speed = 0
        image_speed = 0
        image_index = 0
    }
}

