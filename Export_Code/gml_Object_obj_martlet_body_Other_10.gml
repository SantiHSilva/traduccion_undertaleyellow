var enemy_dead = global.enemy_dead
var enemy_spared = global.enemy_spared
if (enemy_dead == 0 && enemy_spared == 0)
{
    if (id_martlet_wing_gust != -4)
    {
        image_alpha = 0
        time_elapsed = 0
        sign_modifier = 1
    }
    else if instance_exists(obj_quote_battle_martlet_pacifist_during_attack_parent)
    {
        during_dialogue = 1
        if (global.image_alpha_enemy_attacking_immunity == 1)
            image_alpha = 1
        if (image_alpha < 1)
        {
            image_alpha += 0.05
            if (image_alpha >= 1)
                image_alpha = 1
        }
        image_alpha_temp = image_alpha
    }
    else if (during_dialogue == 1)
    {
        image_alpha = (image_alpha_temp + (global.image_alpha_enemy_attacking * (1 - image_alpha_temp)))
        if (global.image_alpha_enemy_attacking == 1)
            during_dialogue = 0
    }
    else
        image_alpha = global.image_alpha_enemy_attacking
}
