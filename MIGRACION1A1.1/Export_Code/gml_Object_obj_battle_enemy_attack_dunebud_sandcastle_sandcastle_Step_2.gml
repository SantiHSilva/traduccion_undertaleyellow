if (!instance_exists(obj_heart_battle_fighting_parent))
    instance_destroy()
if (image_speed == 0)
{
    if (!instance_exists(obj_battle_enemy_attack_dunebud_sandcastle_bucket))
        no_loop_animate = 0
    else if ((!(place_meeting(x, y, obj_battle_enemy_attack_dunebud_sandcastle_bucket))) && (!(place_meeting(x, (y - 30), obj_battle_enemy_attack_dunebud_sandcastle_bucket))))
        no_loop_animate = 0
    if (no_loop_animate == 0)
    {
        image_speed = image_speed_default
        image_index = 0
        audio_play_sound(snd_fanfare, 20, false)
        no_loop_animate = 1
    }
}
