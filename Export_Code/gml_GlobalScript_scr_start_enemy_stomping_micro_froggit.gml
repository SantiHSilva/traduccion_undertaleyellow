function scr_start_enemy_stomping_micro_froggit() //gml_Script_scr_start_enemy_stomping_micro_froggit
{
    with (obj_micro_froggit)
    {
        with (obj_battle_generator)
            audio_extend = 0
        audio_stop_all()
        audio_play_sound(snd_mfsquish, 20, false)
        stomped_on = 1
    }
}

