if ((!instance_exists(obj_battle_enemy_attack_friendliness_pellets_yellow)) && (!instance_exists(obj_quote_battle_flowey_intro_parent_yellow)) && (!instance_exists(obj_battle_fade_out_screen)))
{
    hit_self_count += global.hit_self
    instance_create(367, 134, obj_quote_bubble_battle)
    if (hit_self_count == 0)
        instance_create(0, 0, obj_quote_battle_flowey_intro_success_yellow)
    else if (global.hit_self == 0)
        instance_create(0, 0, obj_quote_battle_flowey_intro_failure_yellow)
    else if (hit_self_count == 1)
        instance_create(0, 0, obj_quote_battle_flowey_intro_miss_1_yellow)
    else if (hit_self_count == 2)
        instance_create(0, 0, obj_quote_battle_flowey_intro_miss_2_yellow)
    else if (hit_self_count == 3)
        instance_create(0, 0, obj_quote_battle_flowey_intro_miss_3_yellow)
    global.hit_self = 0
    can_decrease_audio = 1
}
if (global.hit_self == 1 && can_decrease_audio == 1)
{
    if (hit_self_count >= 2)
        execute_audio_silence = 1
    else
    {
        audio_pitch -= audio_decrease_rate
        audio_sound_pitch(mus_floweynew_yellow, audio_pitch)
    }
    can_decrease_audio = 0
}
if (execute_audio_silence == 1)
{
    if (audio_pitch > 0)
        audio_pitch -= audio_silence_rate
    audio_sound_pitch(mus_floweynew_yellow, audio_pitch)
    if (audio_pitch <= 0)
        execute_audio_silence = 0
}
