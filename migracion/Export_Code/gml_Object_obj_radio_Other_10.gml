if (room == rm_battle || room == rm_battle_flowey_phase_2)
{
    if (!global.sound_carry_overworld)
        audio_stop_sound(bgm)
    return;
}
switch room
{
    case rm_death_screen:
    case 6:
    case 7:
    case 13:
    case 15:
    case 34:
    case 35:
    case 43:
    case 40:
    case 41:
    case 42:
    case 29:
    case 93:
    case 179:
    case 161:
    case 172:
    case 209:
    case 140:
    case 136:
    case 204:
    case 206:
    case 207:
    case 208:
    case 255:
    case 273:
    case 285:
        bgm = -4
        break
    case 8:
    case 9:
    case 10:
        bgm = mus_ruins_yellow
        break
    case 14:
    case 30:
    case 25:
    case 105:
    case 134:
        bgm = mus_wind
        break
    case 17:
    case 24:
    case 31:
    case 26:
    case 20:
    case 21:
    case 27:
        bgm = mus_darkruins
        break
    case 28:
        bgm = mus_coolestcave
        break
    case 37:
    case 38:
    case 39:
        if (global.flag[17] == 1 && global.route != 3)
            bgm = mus_spook
        else
            bgm = mus_null
        break
    case 44:
    case 45:
    case 49:
    case 51:
    case 54:
    case 56:
    case 57:
    case 58:
    case 64:
    case 70:
        bgm = mus_snowfall
        break
    case 284:
        bgm = -4
        break
    case 233:
        bgm = mus_snow
        break
    case 53:
        if (global.snowdin_flag[5] == 0 || global.snowdin_flag[5] == 2 || global.geno_complete[2])
            bgm = mus_snowfall
        else
            bgm = mus_gimme_ur_cash_yellow
        break
    case 59:
    case 61:
    case 62:
        bgm = mus_relaxation
        if global.geno_complete[2]
            bgm = mus_mart_geno_wind_yellow
        break
    case 63:
        bgm = mus_funsized_yellow
        if global.geno_complete[2]
            bgm = mus_mart_geno_wind_yellow
        break
    case 60:
        if audio_is_playing(mus_honeydew_bark)
            song = 145
        else if audio_is_playing(mus_honeydew_dalv)
            song = 146
        else if audio_is_playing(mus_honeydew_snow)
            song = 149
        else if audio_is_playing(mus_honeydew_ruins)
            song = 148
        else
            bgm = mus_honeydew_lodge
        if (global.snowdin_flag[13] != 0)
            bgm = mus_relaxation
        if global.geno_complete[2]
            bgm = mus_mart_geno_wind_yellow
        break
    case 71:
        if (global.snowdin_flag[13] == 1)
            bgm = mus_birdsofafeather
        else if ((!global.geno_complete[2]) || global.dunes_flag[0] > 0)
            bgm = mus_snowfall
        else
            bgm = mus_mart_geno_wind_yellow
        break
    case 73:
        if (global.snowdin_flag[13] == 1)
            bgm = mus_aviation
        else
            bgm = mus_quietstray
        break
    case 77:
    case 78:
        bgm = mus_wind
        break
    case 79:
    case 82:
    case 81:
    case 85:
    case 89:
    case 110:
    case 111:
    case 113:
    case 114:
        bgm = mus_vigorous_terrain
        break
    case 83:
        bgm = mus_funsized_yellow
        break
    case 121:
    case 123:
    case 124:
    case 126:
        bgm = mus_vigorous_terrain
        if (global.dunes_flag[41] == 1)
            bgm = mus_the_trek
        break
    case 251:
    case 252:
        bgm = mus_mart_geno_wind_yellow
        break
    case 241:
    case 242:
        bgm = mus_trapdoor
        break
    case 250:
        bgm = mus_computer_ambience
        if instance_exists(obj_ceroba_phase_2_overworld_cutscene_2)
            bgm = -4
        break
    case 98:
        if (global.route == 3)
            bgm = mus_mart_geno_wind_yellow
        else
        {
            if (!audio_is_playing(mus_dunes_cave_outdoors))
            {
                dynamic_song = audio_play_sound(mus_dunes_cave_outdoors, 1, true)
                var dynamic_mus_pos = audio_sound_get_track_position(current_song)
                audio_sound_set_track_position(dynamic_song, dynamic_mus_pos)
                audio_sound_gain(dynamic_song, 0, 0)
            }
            audio_sound_gain(dynamic_song, 1, 400)
            audio_sound_gain(current_song, 0, 600)
            return;
        }
        break
    case 86:
        if (global.dunes_flag[3] == 0 || global.dunes_flag[3] == 2)
            bgm = mus_vigorous_terrain
        else
            bgm = mus_gimme_ur_cash_yellow
        break
    case 90:
    case 92:
    case 94:
    case 96:
    case 97:
    case 99:
    case 101:
    case 103:
    case 104:
        bgm = mus_dunes_cave
        if (global.route == 3)
            bgm = mus_mart_geno_wind_yellow
        break
    case 106:
    case 107:
    case 108:
        bgm = mus_apex
        break
    case 125:
        if (global.geno_complete[3] == 1 && global.route == 3)
            bgm = -4
        else
            bgm = mus_cafe
        break
    case 102:
        bgm = -4
        break
    case 112:
        bgm = mus_gemstone_fever
        break
    case 276:
        bgm = mus_oasis
        if (global.dunes_flag[41] == 1)
            bgm = mus_the_trek
        if (global.route == 3)
            bgm = mus_vigorous_terrain
        if global.geno_complete[3]
            bgm = mus_mart_geno_wind_yellow
        break
    case 127:
    case 133:
        if (global.dunes_flag[41] >= 1 && global.dunes_flag[41] <= 2)
            bgm = mus_the_trek
        else if (global.dunes_flag[20] == 0 || global.dunes_flag[20] == 8)
            bgm = -4
        else if (global.dunes_flag[20] == 9 && (global.dunes_flag[24] == 0 || global.dunes_flag[24] == 2))
            bgm = mus_getting_the_thoughts_out
        else
            bgm = mus_the_wild_east
        if (room == rm_dunes_37 && global.route == 2 && global.sworks_flag[40] == 2 && global.dunes_flag[41] == 0)
            bgm = -4
        break
    case 135:
        bgm = -4
        break
    case 137:
        bgm = mus_sunnyside_ranch
        break
    case 128:
        if (global.route == 3)
            bgm = -4
        else if (global.dunes_flag[20] == 9 && (global.dunes_flag[24] == 0 || global.dunes_flag[24] == 2))
            bgm = mus_getting_the_thoughts_out
        else if (global.route == 1 && global.sworks_flag[0] > 0 && global.dunes_flag[24] == 1 && global.sworks_flag[61] == 0)
            bgm = mus_after_hours
        else
            bgm = mus_happy_hour
        break
    case 141:
    case 142:
    case 143:
        bgm = mus_abandoned
        break
    case 144:
    case 146:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 169:
    case 167:
    case 190:
    case 188:
        if (global.sworks_flag[1] < 3)
            bgm = mus_abandoned
        else
            bgm = mus_steamworks_overworld
        break
    case 275:
        bgm = mus_golden_opportunity
        break
    case 192:
        bgm = mus_abandoned
        break
    case 237:
    case 240:
        bgm = mus_corner_of_a_circle
        break
    case 238:
        bgm = -4
        break
    case 193:
        bgm = mus_abandoned
        break
    case 195:
    case 196:
    case 198:
    case 201:
    case 199:
    case 200:
        if (global.route != 3)
            bgm = mus_corner_of_a_circle
        else
            bgm = mus_treading_lightly
        break
    case 197:
        bgm = mus_greenhouse
        break
    case 156:
    case 157:
    case 170:
    case 171:
    case 202:
    case 205:
        bgm = mus_treading_lightly
        break
    case 173:
        if (global.sworks_flag[13] >= 2 || global.route == 3)
            bgm = mus_treading_lightly
        else
            bgm = -4
        break
    case 168:
        if (global.sworks_flag[10] == 1)
            bgm = mus_gimme_ur_cash_yellow
        else
            bgm = mus_steamworks_overworld
        break
    case 160:
        bgm = mus_detainment
        break
    case 162:
        bgm = -4
        if (global.sworks_flag[3] >= 3)
            bgm = mus_treading_lightly
        break
    case 187:
    case 189:
    case 191:
        if (global.sworks_flag[18] == 0)
            bgm = -4
        else
            bgm = mus_greenhouse
        break
    case 163:
        bgm = mus_steamworks_overworld
        break
    case 174:
    case 175:
    case 176:
    case 280:
    case 177:
        bgm = mus_abandoned
        if (global.sworks_flag[14] == 1 || global.route == 1)
            bgm = mus_corner_of_a_circle
        break
    case 210:
    case 211:
        if (global.hotland_flag[1] == 1)
            bgm = mus_flock_together
        if (global.hotland_flag[9] >= 3)
            bgm = mus_honest_days_work
        bgm = mus_medium
        if (global.route == 3)
            bgm = mus_UNDERTALE_oogloop
        break
    case 212:
    case 213:
    case 221:
        bgm = -4
        if (global.hotland_flag[1] == 1)
            bgm = mus_flock_together
        if (global.hotland_flag[9] >= 3)
            bgm = mus_honest_days_work
        break
    case 217:
        bgm = mus_complex
        if (global.hotland_flag[1] == 1)
            bgm = mus_flock_together
        if (global.hotland_flag[9] >= 3)
            bgm = mus_honest_days_work
        if (global.route == 3)
        {
            if (global.hotland_flag[9] < 3)
                bgm = snd_light_loop
            else
                bgm = -4
        }
        break
    case 253:
    case 254:
        bgm = mus_flock_together
        if (global.hotland_flag[9] >= 3)
            bgm = mus_honest_days_work
        if (global.hotland_flag[3] == 2)
            bgm = -4
        break
    case 264:
        if (global.hotland_flag[9] >= 3)
            bgm = mus_honest_days_work
        break
    case 265:
        bgm = -4
        break
    case 268:
        bgm = mus_birdnoise
        break
    case 269:
        bgm = mus_barrier
        break
}

if ((!audio_is_playing(bgm)) && bgm != -4)
{
    audio_stop_sound(current_song)
    if (!audio_is_playing(bgm))
        current_song = audio_play_sound(bgm, 10, true)
    audio_sound_gain(current_song, 1, 0)
    if (music_position != 0)
    {
        audio_sound_set_track_position(current_song, music_position)
        music_position = 0
    }
}
var world_current = scr_determine_world_value_yellow()
if global.geno_complete[world_current]
{
    if ((world_current == 2 || world_current == 3) && bgm == 154)
        audio_sound_pitch(current_song, 1)
    else
        audio_sound_pitch(current_song, 0.25)
}
else if (global.route == 3)
    audio_sound_pitch(current_song, 0.5)
if (room == rm_waterfall_og || room == rm_castle_throne_room || room == rm_hotland || room == rm_lava_tubes || room == rm_wildeast_cave || bgm == 609)
    audio_sound_pitch(current_song, 1)
