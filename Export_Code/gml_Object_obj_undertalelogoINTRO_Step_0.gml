if keyboard_multicheck_pressed(0)
{
    instance_destroy()
    with (obj_yellowlogoINTRO)
        instance_destroy()
    var first_time = 0
    if (!file_exists("Save.sav"))
        first_time = 1
    if file_exists("Save.sav")
    {
        var demo_check = 0
        ini_open("Save.sav")
        demo_check = ini_key_exists("Save1", "Progress")
        if demo_check
            first_time = 1
        ini_close()
        if demo_check
            file_rename("Save.sav", "Savedemo.sav")
    }
    if first_time
        room_goto(rm_mmfirst)
    else
        room_goto(rm_mainmenu)
    audio_stop_sound(mus_intronoise)
}
