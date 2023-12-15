var specific_encounter = "null"
switch room
{
    case rm_darkruins_13:
        specific_encounter = "flier trio"
        if (global.flag[17] != 0)
            specific_encounter = "null"
        break
}

if (specific_encounter != "null")
    ds_list_add(global.encounter_list, specific_encounter)
scr_determine_world_value_yellow()
switch room
{
    case rm_darkruins_04:
        global.kill_area_current = 0
        break
    case 18:
        global.kill_area_current = 1
        break
    case 24:
        global.kill_area_current = 2
        break
    case 20:
        global.kill_area_current = 3
        break
    case 22:
        global.kill_area_current = 4
        break
    case 26:
        global.kill_area_current = 5
        break
    case 27:
        global.kill_area_current = 6
        break
    case 47:
        global.kill_area_current = 0
        break
    case 48:
        global.kill_area_current = 1
        break
    case 51:
        global.kill_area_current = 2
        break
    case 54:
        global.kill_area_current = 3
        break
    case 61:
        global.kill_area_current = 4
        break
    case 64:
        global.kill_area_current = 5
        break
    case 67:
        global.kill_area_current = 6
        break
    case 68:
        global.kill_area_current = 7
        break
    case 79:
        global.kill_area_current = 0
        break
    case 80:
        global.kill_area_current = 1
        break
    case 81:
        global.kill_area_current = 2
        break
    case 82:
        global.kill_area_current = 3
        break
    case 84:
        global.kill_area_current = 4
        break
    case 87:
        global.kill_area_current = 5
        break
    case 88:
        global.kill_area_current = 6
        break
    case 95:
        global.kill_area_current = 7
        break
    case 113:
        global.kill_area_current = 8
        break
    case 164:
        global.kill_area_current = 0
        break
    case 169:
        global.kill_area_current = 1
        break
    case 173:
        global.kill_area_current = 2
        break
    case 176:
        global.kill_area_current = 3
        break
    case 177:
        global.kill_area_current = 4
        break
    case 190:
        global.kill_area_current = 5
        break
    case 195:
        global.kill_area_current = 6
        break
    case 196:
        global.kill_area_current = 7
        break
    case 198:
        global.kill_area_current = 8
        break
    case 199:
        global.kill_area_current = 9
        break
    case 200:
        global.kill_area_current = 10
        break
    case 281:
        global.kill_area_current = 11
        break
    case 202:
        global.kill_area_current = 12
        break
    case 204:
        global.kill_area_current = 13
        break
}

