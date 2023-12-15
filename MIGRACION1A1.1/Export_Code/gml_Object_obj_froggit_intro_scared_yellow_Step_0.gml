if (image_index == 1 && x > x_max)
    x -= x_speed
if (x < x_max)
    x = x_max
if (x == x_max)
{
    if instance_exists(obj_toriel_intro_yellow)
    {
        with (obj_toriel_intro_yellow)
            image_index = 1
    }
    global.important_cutscene = 0
    global.enemy_sparing = 1
    global.enemy_spared = 1
    with (obj_battle_generator)
        audio_extend = 0
    audio_stop_all()
    audio_play_sound(snd_monster_damage_death, 1, false)
    instance_create(0, 0, obj_dialogue_battle_win_pacifist)
    instance_destroy()
}
