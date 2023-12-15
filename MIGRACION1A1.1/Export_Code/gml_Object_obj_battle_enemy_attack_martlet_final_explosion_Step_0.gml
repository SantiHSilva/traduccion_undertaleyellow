if live_call()
    return global.live_result;
if (noloop == 0 && image_index >= 4)
{
    audio_play_sound(snd_undertale_explosion, 1, false)
    instance_create_depth(x, y, -100, obj_battle_enemy_attack_martlet_beams)
    scr_screenshake_battle_custom(3, 1)
    noloop = 1
}
