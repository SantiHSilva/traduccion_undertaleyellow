if (place_meeting(x, y, blockparent) && pressed == false)
{
    obj_puzzle.buttons += 1
    pressed = true
    if (!audio_is_playing(snd_switch))
        audio_play_sound(snd_switch, 1, false)
}
else if ((!(place_meeting(x, y, blockparent))) && pressed == true)
{
    obj_puzzle.buttons -= 1
    pressed = false
    if (!audio_is_playing(snd_switch))
        audio_play_sound(snd_switch, 1, false)
}
