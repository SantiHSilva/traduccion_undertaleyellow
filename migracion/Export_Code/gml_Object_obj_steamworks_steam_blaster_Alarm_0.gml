steam_active = 1
alarm[0] = (steam_interval * 30)
alarm[1] = 20
alarm[3] = (alarm[0] * 0.8)
if point_in_rectangle(x, y, __view_get((0 << 0), 0), __view_get((1 << 0), 0), (__view_get((0 << 0), 0) + __view_get((3 << 0), 0)), (__view_get((1 << 0), 0) + __view_get((13 << 0), 0)))
{
    if (obj_steamworks_07_controller.steam_audio_noloop == 0)
    {
        audio_play_sound(steam_sound, 1, false)
        audio_sound_gain(steam_sound, 0.25, 0)
        audio_sound_pitch(steam_sound, 1.1)
        with (obj_steamworks_07_controller)
        {
            steam_audio_noloop = 1
            if (!alarm[1])
                alarm[1] = 1
        }
    }
}
