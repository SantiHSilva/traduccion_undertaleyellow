swit = 0
if (scr_interact() && keyboard_multicheck_pressed(0))
{
    if place_meeting(x, y, obj_mc_cart)
    {
        audio_play_sound(snd_fail, 1, false)
        return;
    }
    audio_play_sound(snd_switch, 1, false)
    swit = 1
}
if place_meeting(x, y, obj_pl)
    solid = 0
else
    solid = 1
