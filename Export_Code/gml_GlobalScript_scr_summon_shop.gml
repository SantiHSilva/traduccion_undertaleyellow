function scr_summon_shop(argument0) //gml_Script_scr_summon_shop
{
    global.current_room_overworld = room_get_name(room)
    switch argument0
    {
        case "Wild East Gunshop":
            global.sound_carry_overworld = 0
            if (global.dunes_flag[20] == 9 && (global.dunes_flag[24] == 0 || global.dunes_flag[24] == 2))
                global.sound_carry_overworld = 1
            break
        default:
            global.sound_carry_overworld = 1
            break
    }

    global.shop_name = argument0
    instance_create(__view_get((0 << 0), 0), __view_get((1 << 0), 0), obj_overworld_shop_fade_out_screen)
    scr_cutscene_start()
}

