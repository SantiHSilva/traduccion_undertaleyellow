if (attack_noloop == 0 && global.enemy_attacking == 1)
    attack_noloop = 1
if (attack_noloop == 1 && global.enemy_attacking == 0)
{
    if (global.current_pp_self > pp_original)
        global.current_pp_self = pp_original
    if (global.current_sp_self > sp_original)
        global.current_sp_self = sp_original
    instance_destroy()
}
