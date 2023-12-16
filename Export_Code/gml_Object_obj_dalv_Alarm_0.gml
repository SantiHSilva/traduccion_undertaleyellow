if (door_open_alarm_counter == 0)
{
    audio_play_sound(snd_doorclose, 1, false)
    alarm[0] = 25
    door_open_alarm_counter++
}
else if (door_open_alarm_counter == 1)
{
    audio_play_sound(snd_doorlock, 1, false)
    if (global.flag[17] == 3)
    {
        audio_play_sound(snd_doorlock, 1, false)
        alarm[0] = 25
        door_open_alarm_counter++
        global.flag[17] = 4
    }
}
else
{
    global.cutscene = false
    obj_pl.state = gml_Script_scr_normal_state
    with (obj_dalv2)
        instance_destroy()
    instance_destroy()
}
