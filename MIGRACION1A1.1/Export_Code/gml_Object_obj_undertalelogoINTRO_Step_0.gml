if keyboard_multicheck_pressed(0)
{
    instance_destroy()
    with (obj_yellowlogoINTRO)
        instance_destroy()
    if (!file_exists("Save.sav"))
        room_goto(rm_mmfirst)
    else
        room_goto(rm_mainmenu)
    audio_stop_sound(mus_intronoise)
}
