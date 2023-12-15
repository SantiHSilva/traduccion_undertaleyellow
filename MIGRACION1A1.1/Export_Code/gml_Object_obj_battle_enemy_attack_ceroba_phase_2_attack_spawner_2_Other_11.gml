var attack_index;
if live_call()
    return global.live_result;
for (var i = 0; i < attack_count; i++)
{
    var list_pos = irandom_range(0, (ds_list_size(attack_list) - 1))
    var attack_choice = ds_list_find_value(attack_list, list_pos)
    switch attack_choice
    {
        case 0:
            attack_choice = choose(0, 1)
            if (attack_choice == 0)
                instance_create_depth(0, 0, 0, obj_battle_enemy_attack_ceroba_phase_2_p2_spawner_mask)
            if (attack_choice == 1)
                instance_create_depth(0, 0, 0, obj_ceroba_attack_bullet_spawner_spawner)
            break
        case 1:
            instance_create_depth(0, 0, -100, obj_battle_enemy_attack_ceroba_phase_2_bell_spawner)
            break
        case 2:
            instance_create_depth(0, 0, 0, obj_ceroba_attack_fire_pillar_spawner)
            break
        case 3:
            attack_choice = choose(0, 1)
            if (attack_choice == 0)
                instance_create_depth(0, 0, 0, obj_battle_enemy_attack_ceroba_flower_circle_full_checker)
            if (attack_choice == 1)
                instance_create_depth(0, 0, 0, obj_battle_enemy_attack_ceroba_phase_2_black_hole_checker)
            break
        case 4:
            instance_create_depth(0, 0, 0, obj_battle_enemy_attack_ceroba_diamond_attack_phase2_spawner)
            break
        case 5:
            instance_create_depth(battle_box.x, battle_box.y, -100, obj_battle_enemy_attack_ceroba_phase_2_p2_rope_circle)
            break
        case 6:
            instance_create_depth(0, 0, -100, obj_battle_enemy_attack_ceroba_phase_2_mask)
            break
        case 7:
            event_user(0)
            attack_count = 1
            instance_create_depth(0, 0, 0, obj_battle_enemy_attack_ceroba_phase_2_p2_circling_lanterns)
            var additional_attack = choose(0, 1, 2)
            switch additional_attack
            {
                case 0:
                    instance_create_depth(0, 0, 0, obj_battle_enemy_attack_ceroba_phase_2_black_hole_checker)
                    break
                case 1:
                    instance_create_depth(0, 0, 0, obj_battle_enemy_attack_ceroba_diamond_attack_phase2_spawner)
                    break
                case 2:
                    instance_create_depth(battle_box.x, battle_box.y, -100, obj_battle_enemy_attack_ceroba_phase_2_p2_rope_circle)
                    break
            }

            break
        case 8:
            event_user(0)
            attack_count = 1
            instance_create_depth(0, 0, 0, obj_battle_enemy_attack_ceroba_phase_2_p2_obstacle_spawner)
            additional_attack = choose(0)
            switch additional_attack
            {
                case 0:
                    instance_create_depth(0, 0, 0, obj_battle_enemy_attack_ceroba_phase_2_p2_circling_lanterns)
                    break
            }

            break
    }

}
