if (attack_noloop == 0 && global.enemy_attacking == 1)
    attack_noloop = 1
if (attack_noloop == 1 && global.enemy_attacking == 0)
    instance_destroy()
