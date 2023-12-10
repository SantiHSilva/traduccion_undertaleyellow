if live_call()
    return global.live_result;
if (image_alpha >= 0.5)
    scr_enemy_attack_bullet_hit()
if (bullet_hit_draw_timer > 0)
    bullet_hit_draw_timer -= 1
if (image_alpha < 1)
    image_alpha += 0.2
else if ((!destroy_self) && fall_delay <= 0)
    gravity = 0.5
else
    fall_delay--
var battle_box = obj_dialogue_box_battle_transformation_any
if (bullet_destroy_self && destroy_self < 1)
{
    vspeed = 0
    destroy_type = 0
    destroy_self = 1
}
else if (bbox_bottom >= battle_box.bbox_bottom && destroy_self < 1)
{
    audio_play_sound(choose(423, 424, 425), 1, false)
    audio_play_sound(snd_ceroba_attack_bell_ring, 1, false)
    vspeed = 0
    destroy_type = 1
    destroy_self = 1
}
if (destroy_self == 1)
{
    hspeed = 0
    gravity = 0
    vspeed = 0
    image_angle_rot = 0
    image_index = 0
    image_speed = 1
    sprite_index = spr_ceroba_attack_bell_explosion
    audio_play_sound(snd_ceroba_attack_bell_explode, 1, false)
    destroy_self = 2
}
