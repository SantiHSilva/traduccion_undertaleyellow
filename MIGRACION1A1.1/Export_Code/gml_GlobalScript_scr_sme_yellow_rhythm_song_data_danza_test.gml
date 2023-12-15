function scr_sme_yellow_rhythm_song_data_danza_test() //gml_Script_scr_sme_yellow_rhythm_song_data_danza_test
{
    can_end_script = 1
    scr_audio_stop_sound(1)
    audio_play = mus_danza_attack_10_yellow
    audio_sound_gain(audio_play, 1, 0)
    audio_sound_pitch(audio_play, 1)
    audio_play_sound(audio_play, 20, false)
    note_1second = 30
    note_speed_denominator = 30
    note_speed = (note_speed_numerator / note_speed_denominator)
    note_current = 0
    note_time = 0
    note_add = 0
    note_total = 18
    note_final = 0
    if (song_play_ct == 0)
        timeline = timeline_add()
    else if (!timeline_exists(timeline))
        timeline = timeline_add()
    else
        timeline_clear(timeline)
    note_time = ((1.3 * note_1second) - note_speed_denominator)
    note_sarray[0] = 0
    note_parray[0] = 2
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.4 * note_1second)
    note_time += note_add
    note_sarray[1] = 0
    note_parray[1] = 1
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.4 * note_1second)
    note_time += note_add
    note_sarray[2] = 0
    note_parray[2] = 0
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.4 * note_1second)
    note_time += note_add
    note_sarray[3] = 0
    note_parray[3] = 2
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.4 * note_1second)
    note_time += note_add
    note_sarray[4] = 0
    note_parray[4] = 0
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.4 * note_1second)
    note_time += note_add
    note_sarray[5] = 0
    note_parray[5] = 1
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (1.3 * note_1second)
    note_time += note_add
    note_sarray[6] = 0
    note_parray[6] = 2
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.3 * note_1second)
    note_time += note_add
    note_sarray[7] = 0
    note_parray[7] = 1
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.3 * note_1second)
    note_time += note_add
    note_sarray[8] = 0
    note_parray[8] = 0
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.3 * note_1second)
    note_time += note_add
    note_sarray[9] = 0
    note_parray[9] = 2
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.3 * note_1second)
    note_time += note_add
    note_sarray[10] = 0
    note_parray[10] = 0
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.3 * note_1second)
    note_time += note_add
    note_sarray[11] = 0
    note_parray[11] = 1
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (1.3 * note_1second)
    note_time += note_add
    note_sarray[12] = 0
    note_parray[12] = 2
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.2 * note_1second)
    note_time += note_add
    note_sarray[13] = 0
    note_parray[13] = 1
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.2 * note_1second)
    note_time += note_add
    note_sarray[14] = 0
    note_parray[14] = 0
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.2 * note_1second)
    note_time += note_add
    note_sarray[15] = 0
    note_parray[15] = 2
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.2 * note_1second)
    note_time += note_add
    note_sarray[16] = 0
    note_parray[16] = 0
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    note_add = (0.2 * note_1second)
    note_time += note_add
    note_sarray[17] = 0
    note_parray[17] = 1
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    timeline_index = timeline
    timeline_loop = 0
    timeline_speed = 1
    timeline_position = 0
    timeline_running = 1
    song_play_ct += 1
}

