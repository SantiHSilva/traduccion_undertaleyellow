if live_call()
    return global.live_result;
battle_box = 3153
shuffle_time = 90
alarm[0] = shuffle_time
alarm[1] = 270
attack_list = ds_list_create()
ds_list_add(attack_list, 0, 0, 1, 2, 3, 4, 5, 6)
attack_count = 2
event_user(1)
ds_list_delete(attack_list, ds_list_find_index(attack_list, 5))
attack_last = -4
scr_enable_battle_box_surface()
