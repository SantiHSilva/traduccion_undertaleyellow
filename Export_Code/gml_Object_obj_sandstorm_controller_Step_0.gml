var y_goal = storm_y_start
var x_goal = storm_x_start
storm_alpha = 0.4
if (storm_x_pos < 320)
    storm_x_pos += storm_strength
else
    storm_x_pos = 10
if (obj_pl.x < x_goal)
    storm_delay_current = storm_delay
if (storm_delay_current > 0 && (!storm_active))
    storm_delay_current -= 1
else
{
    storm_active = 1
    storm_delay_current = storm_delay
}
if (storm_active == 1)
{
    with (obj_pl)
    {
        if (place_meeting(x, y, obj_sandstorm_safezone) && other.sandstorm_hit == 0)
            var in_safezone = 1
        else if place_meeting(x, y, obj_no_sandstorm_zone)
        {
            other.storm_alpha = 0
            in_safezone = 1
        }
        else
        {
            in_safezone = 0
            other.storm_alpha = 1
            if instance_exists(obj_pause_menu)
                instance_destroy(obj_pause_menu)
            if instance_exists(obj_dialogue)
            {
                global.dialogue_open = 0
                instance_destroy(obj_dialogue)
            }
            if (other.storm_distance == 0)
                other.storm_distance = (point_distance(x, y, x_goal, y_goal) / other.storm_strength)
        }
    }
    if (storm_alpha_current < storm_alpha)
    {
        if (in_safezone == 0)
            storm_alpha_current += 0.03
        else
            storm_alpha_current += 0.06
        return;
    }
    if (!audio_is_playing(snd_sandstorm))
    {
        var sandstorm_sound = audio_play_sound(snd_sandstorm, 1, true)
        var fadein_time = 1000
        if (!in_safezone)
            fadein_time = 500
        audio_sound_gain(sandstorm_sound, 0, 0)
        audio_sound_gain(sandstorm_sound, 1, fadein_time)
        audio_sound_set_track_position(sandstorm_sound, random_range(0, audio_sound_length(sandstorm_sound)))
    }
    if (!in_safezone)
    {
        sandstorm_hit = 1
        scr_cutscene_start()
        if (obj_pl.x > x_goal)
        {
            if (storm_alpha_current >= 1 && (!alarm[0]))
                alarm[0] = 45
        }
        else
        {
            obj_pl.image_alpha = 1
            obj_pl.image_angle = 0
            scr_cutscene_end()
            storm_active = 0
            storm_duration_current = storm_duration
            storm_delay_current = storm_delay
            storm_distance = 0
            sandstorm_hit = 0
            scr_audio_fade_out(snd_sandstorm, 1000)
        }
    }
    else if (storm_duration_current > 0)
        storm_duration_current -= 1
    else
    {
        storm_active = 0
        storm_duration_current = storm_duration
        scr_audio_fade_out(snd_sandstorm, 1000)
    }
}
else if (storm_alpha_current > 0)
    storm_alpha_current -= 0.03
