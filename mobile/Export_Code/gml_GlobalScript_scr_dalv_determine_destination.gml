function scr_dalv_determine_destination() //gml_Script_scr_dalv_determine_destination
{
    switch global.flag[28]
    {
        case 0:
            switch room
            {
                case rm_dalvshouse:
                    destination_x_dalv = default_x_dalvshouse
                    destination_y_dalv = default_y_dalvshouse
                    no_loop_destination_dalv = 0
                    image_alpha = 0
                    direction = 180
                    break
                default:
                    instance_destroy()
            }

            break
        case 1:
            switch room
            {
                case rm_dalvshouse:
                    switch global.lastroom
                    {
                        case "rm_dalvroomhall":
                            destination_x_dalv = default_x_dalvshouse
                            destination_y_dalv = default_y_dalvshouse
                            no_loop_destination_dalv = 0
                            image_alpha = 0
                            direction = 180
                            break
                        case "rm_dalvhallway":
                            image_alpha = 1
                            direction = 270
                            x = default_x_dalvshouse
                            y = default_y_dalvshouse
                            destination_x_dalv = default_x_dalvshouse
                            destination_y_dalv = default_y_dalvshouse
                            no_loop_destination_dalv = 0
                            break
                        default:
                            image_alpha = 1
                            direction = 270
                            x = 160
                            y = 140
                            destination_x_dalv = default_x_dalvshouse
                            destination_y_dalv = default_y_dalvshouse
                            no_loop_destination_dalv = 0
                            break
                    }

                    break
                case 39:
                    switch global.lastroom
                    {
                        case "rm_dalvshouse":
                            destination_x_dalv = default_x_dalvroomhall
                            destination_y_dalv = default_y_dalvroomhall
                            no_loop_destination_dalv = 0
                            image_alpha = 0
                            direction = 0
                            break
                        case "rm_dalvsroom":
                            break
                    }

                    break
                case 36:
                    switch global.lastroom
                    {
                        case "rm_dalvshouse":
                            break
                        case "rm_dalvExit":
                            break
                        default:
                            instance_destroy()
                    }

                    break
                case 40:
                    switch global.lastroom
                    {
                        case "rm_dalvhallway":
                            break
                        default:
                            instance_destroy()
                    }

                    break
                default:
                    instance_destroy()
            }

            break
        default:
            instance_destroy()
    }

}

