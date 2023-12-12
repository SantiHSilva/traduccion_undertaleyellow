if (!instance_exists(obj_heart_battle_fighting_parent))
{
}
if (rope_damaged == 1)
{
    rope_damaged = 0
    rope_overlay_alpha = 1.5
    audio_play_sound(snd_starlo_rope_shot, 1, false)
    if instance_exists(obj_battle_enemy_attack_starlo_take_aim_one_checker)
    {
        with (obj_battle_enemy_attack_starlo_take_aim_one_checker)
            starlo_take_aim_rope_hit = 1
        instance_create(x, y, obj_battle_enemy_attack_starlo_rope_particles)
    }
    if instance_exists(obj_battle_enemy_attack_starlo_take_aim_checker)
    {
        with (obj_battle_enemy_attack_starlo_take_aim_checker)
            starlo_take_aim_rope_hit = 1
        instance_destroy()
        instance_create(x, y, obj_battle_enemy_attack_starlo_rope_particles)
    }
}
var soul_distance = point_distance(x, y, obj_heart_battle_fighting_red.x, obj_heart_battle_fighting_red.y)
if (soul_distance > 28 && rope_strain_noloop == 0)
{
    audio_play_sound(snd_starlo_rope_strain, 1, false)
    rope_strain_noloop = 1
}
else if (rope_strain_noloop == 1 && soul_distance < 20)
    rope_strain_noloop = 0
rope_overlay_alpha = lerp(rope_overlay_alpha, 0, 0.15)
rope_soul_overlay_alpha = lerp(rope_soul_overlay_alpha, 0, 0.2)
if (rope_soul_overlay_alpha < 0.1)
    rope_soul_overlay_alpha = 0
