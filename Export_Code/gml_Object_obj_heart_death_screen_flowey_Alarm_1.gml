no_loop = 1
script_execute(gml_Script_scr_battle_load)
script_execute(gml_Script_scr_determine_death_count_yellow)
instance_destroy()
switch global.battle_enemy_name
{
    case "flowey":
        room_goto(rm_battle_flowey)
        break
    case "flowey2":
        room_goto(rm_battle_flowey_phase_2)
        break
    default:
        room_goto(rm_battle)
        break
}

var glitch = instance_create(x, y, obj_flowey_battle_screen_glitch_fight)
glitch.persistent = true
glitch.alarm[0] = 9
audio_play_sound(snd_flowey_glitch_yellow, 1, false)
obj_pl.state = gml_Script_scr_frozen_state