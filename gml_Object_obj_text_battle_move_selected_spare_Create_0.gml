if (global.enemy_count == 1 && global.enemy_sparing == 1 && global.enemy_dead == 0 && global.enemy_spared == 0)
    sparing = 1
else if (global.enemy_count == 2)
{
    if (global.enemy_sparing == 1 && global.enemy_dead == 0 && global.enemy_spared == 0)
        sparing = 1
    else if (global.enemy_sparing_2 == 1 && global.enemy_dead_2 == 0 && global.enemy_spared_2 == 0)
        sparing = 1
    else
        sparing = 0
}
else if (global.enemy_count == 3)
{
    if (global.enemy_sparing == 1 && global.enemy_dead == 0 && global.enemy_spared == 0)
        sparing = 1
    else if (global.enemy_sparing_2 == 1 && global.enemy_dead_2 == 0 && global.enemy_spared_2 == 0)
        sparing = 1
    else if (global.enemy_sparing_3 == 1 && global.enemy_dead_3 == 0 && global.enemy_spared_3 == 0)
        sparing = 1
    else
        sparing = 0
}
else
    sparing = 0
