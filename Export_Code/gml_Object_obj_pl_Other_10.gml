var _temp_local_var_5, _temp_local_var_6;
if (autowalk_direction_no_loop == 0)
{
    switch global.flag[28]
    {
        case 1:
            switch room
            {
                case rm_dalvshouse:
                    switch global.lastroom
                    {
                        case "rm_dalvroomhall":
                            with (obj_dalv2)
                                instance_destroy()
                            autowalk_direction = "left"
                            state = gml_Script_scr_autowalk_state
                            alarm[1] = 30
                            break
                        default:
                            autowalk_direction = "nothing"
                    }

                    break
                case 39:
                    switch global.lastroom
                    {
                        case "rm_dalvshouse":
                            autowalk_direction = "right"
                            state = gml_Script_scr_autowalk_state
                            alarm[1] = 15
                            break
                        default:
                            autowalk_direction = "nothing"
                    }

                    break
                case 36:
                    var _temp_local_var_5 = global.lastroom
                    autowalk_direction = "nothing"
                    break
                case 40:
                    var _temp_local_var_6 = global.lastroom
                    autowalk_direction = "nothing"
                    break
                default:
                    autowalk_direction = "nothing"
            }

            break
        default:
            autowalk_direction = "nothing"
    }

    autowalk_direction_no_loop = 1
    get_last_room_no_loop = 0
}
