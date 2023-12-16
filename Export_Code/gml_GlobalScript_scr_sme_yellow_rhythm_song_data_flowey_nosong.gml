function scr_sme_yellow_rhythm_song_data_flowey_nosong(argument0, argument1, argument2, argument3, argument4) //gml_Script_scr_sme_yellow_rhythm_song_data_flowey_nosong
{
    if (argument0 == undefined)
        argument0 = 499
    if (argument1 == undefined)
        argument1 = 0
    if (argument2 == undefined)
        argument2 = 0
    if (argument3 == undefined)
        argument3 = 2
    if (argument4 == undefined)
        argument4 = [520, 517, 514]
    can_end_script = 1
    var sound = array_create(array_length(argument1), 0)
    for (var i = 0; i < array_length(sound); i++)
        sound[i] = argument4[argument2[i]]
    note_1second = 30
    note_speed_denominator = (30 * argument3)
    note_speed = (note_speed_numerator / note_speed_denominator)
    note_current = 0
    note_time = 0
    note_add = 0
    note_total = array_length(argument1)
    note_final = 0
    if (song_play_ct == 0)
        timeline = timeline_add()
    else if (!timeline_exists(timeline))
        timeline = timeline_add()
    else
        timeline_clear(timeline)
    note_time = ((argument1[0] * note_1second) - note_speed_denominator)
    note_sarray[0] = sound[0]
    note_parray[0] = argument2[0]
    timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    for (i = 1; i < array_length(argument1); i++)
    {
        note_add = ((argument1[i] - argument1[(i - 1)]) * note_1second)
        note_time += note_add
        note_sarray[i] = sound[i]
        note_parray[i] = argument2[i]
        timeline_moment_add_script(timeline, note_time, gml_Script_scr_sme_yellow_rhythm_create_note)
    }
    timeline_index = timeline
    timeline_loop = 0
    timeline_speed = 1
    timeline_position = 0
    timeline_running = 1
    song_play_ct += 1
}

