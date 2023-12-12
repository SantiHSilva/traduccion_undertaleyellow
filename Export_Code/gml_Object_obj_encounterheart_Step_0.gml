if (image_index == 2)
    audio_play_sound(snd_battle, 10, false)
if (image_index == 4)
    audio_play_sound(snd_battle, 10, false)
if (x <= (__view_get((0 << 0), 0) + 25) && y >= (__view_get((1 << 0), 0) + 224))
{
    room_goto(enroom)
    instance_destroy()
    with (obj_battle_transition)
        instance_destroy()
}
