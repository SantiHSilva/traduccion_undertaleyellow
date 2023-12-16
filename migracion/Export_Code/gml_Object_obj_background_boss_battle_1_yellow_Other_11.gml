if ((!instance_exists(obj_battle_enemy_attack_dalv_lightning_vertical)) && (!instance_exists(obj_battle_enemy_attack_dalv_lightning_horizontal)))
    no_loop_animation = 0
if (no_loop_animation == 0)
{
    if instance_exists(obj_battle_enemy_attack_dalv_lightning_vertical)
    {
        if (obj_battle_enemy_attack_dalv_lightning_vertical.image_speed_counter < 1 || (obj_battle_enemy_attack_dalv_lightning_vertical.image_speed_counter >= 2 && obj_battle_enemy_attack_dalv_lightning_vertical.image_speed_counter < 4))
        {
            image_speed = 0.36666666666666664
            image_index = 0
            no_loop_animation = 1
        }
    }
    else if instance_exists(obj_battle_enemy_attack_dalv_lightning_horizontal)
    {
        if (obj_battle_enemy_attack_dalv_lightning_horizontal.image_speed_counter < 1 || (obj_battle_enemy_attack_dalv_lightning_horizontal.image_speed_counter >= 2 && obj_battle_enemy_attack_dalv_lightning_horizontal.image_speed_counter < 4))
        {
            image_speed = 0.36666666666666664
            image_index = 0
            no_loop_animation = 1
        }
    }
}
