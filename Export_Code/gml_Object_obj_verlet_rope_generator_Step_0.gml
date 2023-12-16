if live_call()
    return global.live_result;
if instance_exists(obj_verlet_rope_generator)
    image_alpha = obj_verlet_rope_generator.image_alpha
scr_verlet_updatepoints(points, p_friction, p_gravity)
for (var i = 0; i < precision; i++)
    scr_verlet_updatesticks(sticks)
if can_move
{
    var wind_inc = 0.003
    wind_power = clamp((wind_power + (wind_inc * wind_direction)), (-wind_power_max), wind_power_max)
    if (wind_direction_change_countdown > 0)
    {
        if (abs(wind_power) == wind_power_max)
        {
            if (!alarm[0])
                alarm[0] = 15
            wind_direction_change_countdown--
        }
        else
            alarm[0] = -1
    }
    else
    {
        wind_direction_change_countdown = wind_direction_change_countdown_max
        wind_direction *= -1
    }
    for (i = 0; i < r_segments; i++)
        points[i][0] += (i * (wind_power + sway))
}
var col = 0
for (i = 0; i < array_length(points); i++)
{
    var p = points[i]
    if (!p[4])
    {
        if position_meeting(p[0], p[1], obj_heart_battle_fighting_parent)
            col = 1
    }
}
if (col == 1 && obj_heart_battle_fighting_parent.vulnerable == 1 && obj_heart_battle_fighting_parent.is_dashing == 0)
{
    var damage = ((((global.enemy_attack_stat - global.player_armor_defense) - global.player_armor_modifier_defense) - global.player_defense) + 10)
    with (obj_heart_battle_fighting_parent)
    {
        if (global.current_pp_self > 0)
        {
            instance_create(x, y, obj_heart_battle_effect_expand)
            for (i = 0; i < 5; i++)
                instance_create(x, y, obj_heart_battle_effect_shard)
            global.current_pp_self -= 1
            audio_play_sound(snd_mirrorbreak1, 20, false)
        }
        else
        {
            global.current_hp_self -= damage
            audio_play_sound(snd_hurt, 1, false)
        }
        vulnerable = 0
        global.hit_self = 1
        alarm[0] = global.invulnerability_self
    }
}
