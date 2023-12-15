if (sprite_index == spr_trihecta_falling)
{
    global.battle_phase_step += 1
    global.battle_enemy_name = "trihecta separated"
    script_execute(gml_Script_scr_generate_battle_trihecta_separated)
    global.enemy_attacking = 1
    instance_destroy()
    return;
}
