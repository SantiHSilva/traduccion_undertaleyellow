var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6;
function scr_determine_can_display_damage_ui(argument0) //gml_Script_scr_determine_can_display_damage_ui
{
    hp_ui_alpha = 1
    damage_ui_alpha = 1
    miss_ui_alpha = 1
    if (argument0 == 1)
    {
        var game_mode = global.game_mode
        var battle_enemy_name = global.battle_enemy_name
        if (global.game_mode == "customs")
            var _temp_local_var_2 = battle_enemy_name
        else if (global.game_mode == "yellow")
        {
            switch battle_enemy_name
            {
                case "dummy training pacifist":
                    hp_ui_alpha = 0
                    damage_ui_alpha = 0
                    break
                default:

            }

        }
    }
    if (argument0 == 2)
    {
        game_mode = global.game_mode
        battle_enemy_name = global.battle_enemy_name_2
        if (global.game_mode == "customs")
            var _temp_local_var_3 = battle_enemy_name
        else if (global.game_mode == "yellow")
            var _temp_local_var_6 = battle_enemy_name
    }
    if (argument0 == 3)
    {
        game_mode = global.game_mode
        battle_enemy_name = global.battle_enemy_name_3
        if (global.game_mode == "customs")
            var _temp_local_var_4 = battle_enemy_name
        else if (global.game_mode == "yellow")
            var _temp_local_var_5 = battle_enemy_name
    }
    if instance_exists(obj_battle_hp_enemy_attacking_parent)
    {
        with (obj_battle_hp_enemy_attacking_parent)
            image_alpha = obj_target_bar_battle.hp_ui_alpha
    }
    if instance_exists(obj_text_damage_count)
    {
        with (obj_text_damage_count)
            image_alpha = obj_target_bar_battle.damage_ui_alpha
    }
    if instance_exists(obj_text_miss)
    {
        with (obj_text_miss)
            image_alpha = obj_target_bar_battle.miss_ui_alpha
    }
}

