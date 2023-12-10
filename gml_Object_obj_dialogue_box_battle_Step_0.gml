var battle_enemy_name = global.battle_enemy_name
var enemy_attack = global.enemy_attack
var game_mode = global.game_mode
if (global.enemy_attacking == 1 && no_loop == 0)
{
    script_execute(gml_Script_scr_battle_core_directory_tb_dimensions)
    if instance_exists(obj_dialogue_box_battle_transformation_attack)
    {
        with (obj_dialogue_box_battle_transformation_attack)
            instance_destroy()
    }
    instance_destroy()
    no_loop = 1
}
if (global.important_cutscene == 1 && no_loop_important_cutscene == 0)
    script_execute(gml_Script_scr_battle_core_directory_important_cutscene)
else if (global.can_attack == 0 && no_loop_can_attack == 0)
    script_execute(gml_Script_scr_battle_core_directory_no_attack)
