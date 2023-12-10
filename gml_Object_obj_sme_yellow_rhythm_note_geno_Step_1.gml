if live_call()
    return global.live_result;
if (note_destroy == 1)
{
    image_angle += (sign((hspeed + 0.1)) * 15)
    image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}
if (image_alpha_val < 1)
{
    image_alpha_val += fade_in_speed
    if (image_alpha_val > 1)
        image_alpha_val = 1
}
y += note_speed
if (y >= end_boundary)
{
    var fail_sound = audio_play_sound(snd_fail, 1, false)
    audio_sound_pitch(fail_sound, random_range(0.8, 1.3))
    note_destroy = 1
    vspeed = -6
    if (global.battle_enemy_name == "flowey")
        vspeed = -8
    gravity = 0.25
    if (x < (box.bbox_left + 30))
        hspeed = -2
    else if (x >= (box.bbox_left + 30) && x <= (box.bbox_left + 128))
        hspeed = 0
    else
        hspeed = 2
}
