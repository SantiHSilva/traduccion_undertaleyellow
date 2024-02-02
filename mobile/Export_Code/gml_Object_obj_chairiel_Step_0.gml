if (is_reading == 0)
{
    if (pause_time > 0)
        pause_time--
    else
    {
        pause_time = pause_time_max
        image_speed = 1
        is_reading = 1
    }
}
else if (reading_time > 0)
    reading_time--
else
{
    reading_time = irandom_range(30, 120)
    is_reading = 0
    image_speed = 0
    image_index = 0
}
if (floor(image_index) == 1 && talk_noloop == 0 && can_talk == 1)
{
    var talk_noise = audio_play_sound(sndfnt_toriel, 1, false)
    audio_sound_gain(talk_noise, 0.2, 0)
    talk_noloop = 1
}
if (floor(image_index) == 0)
    talk_noloop = 0
