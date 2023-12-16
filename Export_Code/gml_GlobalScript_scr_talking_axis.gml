function scr_talking_axis() //gml_Script_scr_talking_axis
{
    switch current_char
    {
        case " ":
        case "*":
            break
        default:
            var axis_talknoise = snd_talk_axis
            audio_stop_sound(axis_talknoise)
            audio_play_sound(axis_talknoise, 20, false)
    }

    switch current_char
    {
        case ".":
        case ",":
        case "?":
        case "!":
            break
        default:
            can_talk = 1
    }

}

