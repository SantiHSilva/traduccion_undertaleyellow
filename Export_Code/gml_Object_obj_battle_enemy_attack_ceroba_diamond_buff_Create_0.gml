if (global.battle_enemy_name == "energy balls minifight")
{
    instance_destroy()
    return;
}
fade_out = 0
image_xscale = 2
image_yscale = 2
image_speed = 0.5
if (!audio_is_playing(snd_ceroba_trap))
    audio_play_sound(snd_ceroba_trap, 1, false)
image_blend = c_yellow
