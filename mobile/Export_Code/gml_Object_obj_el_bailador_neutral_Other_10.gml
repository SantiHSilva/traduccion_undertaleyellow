var enemy_dead = global.enemy_dead
var enemy_spared = global.enemy_spared
if (enemy_dead == 0 && enemy_spared == 0)
{
    if (id_el_bailador_dance != -4)
    {
        image_alpha = 0
        time_elapsed = 0
        sign_modifier = 1
        image_alpha_immunity = 1
    }
    else
    {
        if (global.image_alpha_enemy_attacking == 1)
            image_alpha_immunity = 0
        if (image_alpha_immunity == 1)
            image_alpha = 1
        else
            image_alpha = global.image_alpha_enemy_attacking
    }
}
