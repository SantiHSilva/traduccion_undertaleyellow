scene = 0
cutscene_timer = 0
with (obj_chem_05_door)
    event_perform(ev_create, 0)
if (global.sworks_flag[25] >= 1)
{
    instance_destroy()
    return;
}
if (global.sworks_flag[25] == 0)
{
    audio_play_sound(snd_elevator_door_shut, 1, false)
    global.sworks_flag[25] = 0.5
}
