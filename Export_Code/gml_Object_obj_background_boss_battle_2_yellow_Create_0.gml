increase_number = 24
instance_create((66 + increase_number), 10, obj_background_boss_battle_2_grid_yellow)
id_grid[0] = global.id_store
instance_create((574 - increase_number), 10, obj_background_boss_battle_2_grid_yellow)
id_grid[1] = global.id_store
instance_create((66 + increase_number), 128, obj_background_boss_battle_2_grid_yellow)
id_grid[2] = global.id_store
instance_create((574 - increase_number), 128, obj_background_boss_battle_2_grid_yellow)
id_grid[3] = global.id_store
sign_modifier = 1
time_elapsed = 0
time_max = 50
time_increase = 1
max_rise = increase_number
time_elapsed_decrease = 6
snowflake_max = 20
snowflake_ypos = -20
alarm[0] = 1
