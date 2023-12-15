function scr_end_enemy_attacking_axis_geno() //gml_Script_scr_end_enemy_attacking_axis_geno
{
    if (global.geno_complete[4] == 0 && global.geno_complete[3] == 1)
    {
        if (global.enemy_sparing == 1)
            return 0;
        if (global.attack_cycle >= (global.attack_cycle_max - 4))
        {
            instance_create(402, 68, obj_quote_bubble_battle_yellow_2)
            instance_create(0, 0, obj_quote_battle_axis_neutral_geno_end)
            return 1;
        }
        else
            return 0;
    }
    else if (global.attack_cycle >= global.attack_cycle_max)
    {
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2)
        instance_create(0, 0, obj_quote_battle_axis_geno_end)
        return 1;
    }
    else
        return 0;
}

