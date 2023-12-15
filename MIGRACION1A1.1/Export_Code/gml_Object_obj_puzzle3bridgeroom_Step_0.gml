if (puzzlecount == 10)
{
    global.flag[6] = 1
    audio_play_sound(snd_success, 1, false)
    puzzlecount++
}
if (global.flag[6] == 1)
    obj_spikes.image_index = 1
if (global.flag[12] == 1)
{
    dor = instance_create(940, 120, obj_doorway)
    with (dor)
    {
        nextroom = 32
        xx = 160
        yy = 380
        image_xscale = 2.5
        image_yscale = 1.25
    }
    with (obj_drgate)
        instance_destroy()
    instance_destroy()
}
else if (!instance_exists(obj_drgate))
    instance_create(960, 110, obj_drgate)
