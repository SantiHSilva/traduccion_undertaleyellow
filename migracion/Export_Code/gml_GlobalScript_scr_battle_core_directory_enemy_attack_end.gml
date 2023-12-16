function scr_battle_core_directory_enemy_attack_end() //gml_Script_scr_battle_core_directory_enemy_attack_end
{
    var battle_enemy_name = global.battle_enemy_name
    if (battle_enemy_name == "el bailador")
    {
        var new_return = script_execute(gml_Script_scr_end_enemy_attacking_bailador_geno)
        return new_return;
    }
    if (battle_enemy_name == "guardener")
    {
        new_return = script_execute(gml_Script_scr_end_enemy_attacking_guardener)
        return new_return;
    }
    if (battle_enemy_name == "axis")
    {
        new_return = script_execute(gml_Script_scr_end_enemy_attacking_axis)
        return new_return;
    }
    if (battle_enemy_name == "axis genocide")
    {
        new_return = script_execute(gml_Script_scr_end_enemy_attacking_axis_geno)
        return new_return;
    }
    if (battle_enemy_name == "ceroba")
    {
        new_return = script_execute(gml_Script_scr_end_enemy_attacking_ceroba)
        return new_return;
    }
    if (battle_enemy_name == "macro froggit")
    {
        new_return = script_execute(gml_Script_scr_end_enemy_attacking_macro)
        return new_return;
    }
    return 0;
}

