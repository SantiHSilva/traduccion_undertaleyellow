function scr_talking_blackjack() //gml_Script_scr_talking_blackjack
{
    switch current_char
    {
        case " ":
        case "*":
            break
        default:
            audio_stop_sound(snd_talk_default)
            audio_play_sound(snd_talk_default, 20, false)
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
