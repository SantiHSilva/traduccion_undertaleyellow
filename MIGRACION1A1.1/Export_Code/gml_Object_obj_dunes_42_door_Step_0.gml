event_inherited()
if ((interact || place_meeting(x, y, obj_pl)) && noloop == 0)
{
    if (!instance_exists(obj_transition))
    {
        audio_play_sound(snd_doorclose, 1, false)
        scr_change_room(283, 217, 200)
        scr_cutscene_start()
        noloop = 1
    }
}
