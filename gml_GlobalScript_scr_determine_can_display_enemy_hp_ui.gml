var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6;
function scr_determine_can_display_enemy_hp_ui() //gml_Script_scr_determine_can_display_enemy_hp_ui
{
    hp_ui_alpha_1 = 1
    hp_ui_alpha_2 = 1
    hp_ui_alpha_3 = 1
    var game_mode = global.game_mode
    var enemy_count = global.enemy_count
    var battle_enemy_name = global.battle_enemy_name
    if (global.game_mode == "customs")
        var _temp_local_var_2 = battle_enemy_name
    else if (global.game_mode == "yellow")
    {
        switch battle_enemy_name
        {
            case "dummy training pacifist":
                hp_ui_alpha_1 = 0
                break
            default:

        }

    }
    if (enemy_count >= 2)
    {
        battle_enemy_name = global.battle_enemy_name_2
        if (global.game_mode == "customs")
            var _temp_local_var_3 = battle_enemy_name
        else if (global.game_mode == "yellow")
            var _temp_local_var_6 = battle_enemy_name
    }
    if (enemy_count >= 3)
    {
        battle_enemy_name = global.battle_enemy_name_3
        if (global.game_mode == "customs")
            var _temp_local_var_4 = battle_enemy_name
        else if (global.game_mode == "yellow")
            var _temp_local_var_5 = battle_enemy_name
    }
    if instance_exists(obj_battle_hp_current_enemy)
    {
        with (obj_battle_hp_current_enemy)
            image_alpha = obj_heart_battle_menu.hp_ui_alpha_1
        with (obj_battle_hp_max_enemy)
            image_alpha = obj_heart_battle_menu.hp_ui_alpha_1
    }
    if instance_exists(obj_battle_hp_current_enemy_2)
    {
        with (obj_battle_hp_current_enemy_2)
            image_alpha = obj_heart_battle_menu.hp_ui_alpha_2
        with (obj_battle_hp_max_enemy_2)
            image_alpha = obj_heart_battle_menu.hp_ui_alpha_2
    }
    if instance_exists(obj_battle_hp_current_enemy_3)
    {
        with (obj_battle_hp_current_enemy_3)
            image_alpha = obj_heart_battle_menu.hp_ui_alpha_3
        with (obj_battle_hp_max_enemy_3)
            image_alpha = obj_heart_battle_menu.hp_ui_alpha_3
    }
}

