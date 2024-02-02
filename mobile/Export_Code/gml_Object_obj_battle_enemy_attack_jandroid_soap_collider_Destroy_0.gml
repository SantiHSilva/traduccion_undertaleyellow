if (heart_collided == 1)
{
    audio_play_sound(snd_battle_item_eat, 1, false)
    instance_destroy(white_id)
    if (global.act_number == 1)
        global.enemy_sparing = 1
    else
        global.enemy_sparing_2 = 1
    instance_create_depth(0, 0, -9999, obj_quote_battle_jandroid_a_mid_attack)
    obj_battle_enemy_attack_jandroid_garbage_cans_generator.alarm[0] += 30
}
