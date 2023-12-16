if ((place_meeting(x, y, obj_pl) || place_meeting(x, y, obj_toriel_npc)) && image_index == 0)
{
    audio_play_sound(snd_switch, 10, false)
    image_index = 1
}
