with (obj_battle_enemy_attack_martlet_feather_spiral_explosion)
    instance_destroy()
with (obj_battle_enemy_attack_martlet_feather_spiral_feather)
    instance_destroy()
with (obj_battle_enemy_attack_martlet_feather_spiral_target_2_axis)
    instance_destroy()
with (obj_dialogue_box_battle_transformation_any)
{
    if (instance_exists(obj_martlet_body) && global.enemy_mode == 5 && global.turns_passed == 4)
        script_execute(gml_Script_scr_start_during_attack_dialogue_martlet_pacifist)
    else
        event_user(0)
}
