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

instance_create(x, y, obj_battle_fade_in_screen)
