retry_enabled = 0
if (global.option_retry_toggle == 1 || global.battling_boss == 1 || global.battle_enemy_name == "feisty five")
    retry_enabled = 1
if (global.sworks_flag[45] == 1)
    retry_enabled = 0
no_loop = 0
menu_option_selected = 1
image_alpha = 0
if (!retry_enabled)
    menu_option_selected = 2