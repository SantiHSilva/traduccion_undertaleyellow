function scr_talking_ace() //gml_Script_scr_talking_ace
{
    switch current_char
    {
        case " ":
        case "*":
            break
        default:
            audio_stop_sound(snd_talk_ace)
            audio_play_sound(snd_talk_ace, 20, false)
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

