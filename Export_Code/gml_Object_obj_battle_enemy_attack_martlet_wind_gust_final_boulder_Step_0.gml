if live_call()
    return global.live_result;
if (image_alpha < 1)
    image_alpha += 0.2
if (image_alpha == 1 && floor(obj_martlet_final_base.image_index) >= 3 && floor(obj_martlet_final_base.image_index) <= 4 && (!can_fall))
    can_fall = 1
if (!can_fall)
{
}
vspeed += 1
if (vspeed > fall_speed)
    vspeed = fall_speed
var box = 3153
if (y >= (box.bbox_bottom - 12))
{
    instance_destroy()
    var break_sound = audio_play_sound(snd_rock_break, 1, false)
    audio_sound_gain(break_sound, 0.7, 0)
    for (var i = 0; i < 3; i++)
    {
        var debris = instance_create_depth(x, y, (depth - 1), obj_battle_enemy_attack_martlet_wind_gust_final_boulder_piece)
        debris.hspeed = (-3 + (i * 3))
    }
}