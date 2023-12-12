if live_call()
    return global.live_result;
if (hp_self > 0)
{
    if (other == collider_id)
        return;
    audio_play_sound(snd_arc_hit, 1, false)
    hit_flash = 1
    if (other.object_index == obj_heart_yellow_shot_big)
    {
        collider_id = other
        hp_self -= 3
    }
    else
    {
        instance_destroy(other)
        hp_self -= 1
    }
    alarm[0] = 3
    shake_strength = 4
    vspeed -= 12
}
