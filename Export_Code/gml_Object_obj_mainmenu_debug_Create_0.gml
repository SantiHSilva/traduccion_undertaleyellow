if live_call()
    return global.live_result;
menu_selection = 0
route_selection = "NEUTRAL"
route_list = ["NEUTRAL", "PACIFIST", "GENO"]
follower_selection = -4
follower_list = [1170, 1169, -4]
room_selection = "rm_ruins00"
room_list = ds_list_create()
var dbg_room_current = rm_intro
while room_exists(dbg_room_current)
{
    ds_list_add(room_list, room_get_name(dbg_room_current))
    dbg_room_current += 1
}
ds_list_sort(room_list, 1)
dbg_room_count = ds_list_size(room_list)
hold_delay_max = 2
hold_delay_left = (hold_delay_max * 4)
hold_delay_right = (hold_delay_max * 4)
bonus_items = 1
