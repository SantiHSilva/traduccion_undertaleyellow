function scr_determine_low_hp_enemy_sparing() //gml_Script_scr_determine_low_hp_enemy_sparing
{
    var enemy_count = global.enemy_count
    if (enemy_count >= 1)
    {
        if (global.enemy_low_hp == 1)
            global.enemy_sparing = 1
    }
    if (enemy_count >= 2)
    {
        if (global.enemy_low_hp_2 == 1)
            global.enemy_sparing_2 = 1
    }
    if (enemy_count >= 3)
    {
        if (global.enemy_low_hp_3 == 1)
            global.enemy_sparing_3 = 1
    }
}

