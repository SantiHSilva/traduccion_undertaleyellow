dbg_pos = 1
dbg_menu = 0
no_encounters = 0
sixty_fps = 0
kanako_time = 0
show_timer = 0
is_recording = 0
gif_image = 0
room_list = ds_list_create()
var dbg_room_current = rm_intro
while room_exists(dbg_room_current)
{
    ds_list_add(room_list, room_get_name(dbg_room_current))
    dbg_room_current += 1
}
ds_list_sort(room_list, 1)
dbg_room_count = ds_list_size(room_list)
cheat_map = ds_map_create()
ds_map_add(cheat_map, 0, 1)
ds_map_add(cheat_map, 1, 0)
ds_map_add(cheat_map, 2, 0)
ds_map_add(cheat_map, 3, 1)
ds_map_add(cheat_map, 4, 0)
ds_map_add(cheat_map, 5, 1)
ds_map_add(cheat_map, 6, 0)
ds_map_add(cheat_map, 7, 0)
dbg_cheat[8] = -1
dbg_cheat[7] = -1
dbg_cheat[6] = -1
dbg_cheat[5] = -1
dbg_cheat[4] = -1
dbg_cheat[3] = -1
dbg_cheat[2] = -1
dbg_cheat[1] = -1
dbg_battle_enemy_name[0] = "flier solo"
dbg_battle_enemy_name[1] = "flier trio"
dbg_battle_enemy_name[2] = "penilla solo"
dbg_battle_enemy_name[3] = "flier penilla duo"
dbg_battle_enemy_name[4] = "sweet corn solo"
dbg_battle_enemy_name[5] = "sweet corn duo"
dbg_battle_enemy_name[6] = "sweet corn penilla duo"
dbg_battle_enemy_name[7] = "crispy scroll solo"
dbg_battle_enemy_name[8] = "crispy scroll penilla duo"
dbg_battle_enemy_name[9] = "rorrim solo"
dbg_battle_enemy_name[10] = "insomnitot solo"
dbg_battle_enemy_name[11] = "insomnitot duo"
dbg_battle_enemy_name[12] = "know cone solo"
dbg_battle_enemy_name[13] = "know cone insomnitot duo"
dbg_battle_enemy_name[14] = "frostermit solo"
dbg_battle_enemy_name[15] = "frostermit know cone duo"
dbg_battle_enemy_name[16] = "trihecta together"
dbg_battle_enemy_name[17] = "shufflers"
dbg_battle_enemy_name[18] = "flower girls"
dbg_battle_enemy_name[19] = "feisty five"
dbg_battle_enemy_name[20] = "dummy training pacifist"
dbg_battle_enemy_name[21] = "dunebud solo"
dbg_battle_enemy_name[22] = "cactony solo"
dbg_battle_enemy_name[23] = "bowll solo"
dbg_battle_enemy_name[24] = "el bailador"
dbg_battle_enemy_name[25] = "dummy training pacifist"
dbg_battle_enemy_name[26] = "jandroid"
dbg_battle_enemy_name[27] = "tellyvis"
dbg_battle_enemy_name[28] = "goosic"
dbg_battle_enemy_name[29] = "sousborg"
dbg_battle_enemy_name[30] = "dunebud duo"
dbg_battle_enemy_name[31] = "slither solo"
dbg_battle_enemy_name[32] = "cactony slither duo"
dbg_battle_enemy_name[33] = "jandroid goosic duo"
dbg_battle_enemy_name[34] = "jandroid duo"
dbg_battle_boss_name[0] = "decibat"
dbg_battle_boss_name[1] = "dalv"
dbg_battle_boss_name[2] = "micro froggit"
dbg_battle_boss_name[3] = "martlet pacifist"
dbg_battle_boss_name[4] = "martlet genocide"
dbg_battle_boss_name[5] = "dummy training pacifist"
dbg_battle_boss_name[6] = "ceroba genocide"
dbg_battle_boss_name[7] = "starlo"
dbg_battle_boss_name[8] = "guardener"
dbg_battle_boss_name[9] = "axis"
dbg_battle_boss_name[10] = "flowey"
dbg_battle_boss_name[11] = "ceroba"
dbg_battle_boss_name[12] = "el bailador"
dbg_battle_boss_name[13] = "martlet genocide final"
dbg_battle_boss_name[14] = "macro froggit"
dbg_battle_boss_name[15] = "axis genocide"
dbg_enemy_current = 0
dbg_boss_current = 0
