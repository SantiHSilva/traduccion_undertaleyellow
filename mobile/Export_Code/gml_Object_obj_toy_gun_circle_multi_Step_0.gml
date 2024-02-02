if live_call()
    return global.live_result;
if (execute_create == 1)
{
    var fight_number = global.fight_number
    if (fight_number == 1)
    {
        var enemy_sparing = global.enemy_sparing
        var enemy_vulnerable = global.enemy_vulnerable
        var current_hp_enemy = global.current_hp_enemy
        var attacking_damage_stat_critical = global.attacking_damage_stat_critical
        var enemy_target_x = global.enemy_target_x
        var enemy_target_y = global.enemy_target_y
    }
    else if (fight_number == 2)
    {
        enemy_sparing = global.enemy_sparing_2
        enemy_vulnerable = global.enemy_vulnerable_2
        current_hp_enemy = global.current_hp_enemy_2
        attacking_damage_stat_critical = global.attacking_damage_stat_critical_2
        enemy_target_x = global.enemy_target_x_2
        enemy_target_y = global.enemy_target_y_2
    }
    else if (fight_number == 3)
    {
        enemy_sparing = global.enemy_sparing_3
        enemy_vulnerable = global.enemy_vulnerable_3
        current_hp_enemy = global.current_hp_enemy_3
        attacking_damage_stat_critical = global.attacking_damage_stat_critical_3
        enemy_target_x = global.enemy_target_x_3
        enemy_target_y = global.enemy_target_y_3
    }
    script_execute(gml_Script_scr_controls_battle_reticle_multi)
    for (i = 0; i <= final_circle; i++)
    {
        if (outline[i] <= 0 && shrink[i] == 1)
        {
            outline[i] = 0
            shrink[i] = 0
            imagea[i] = 0
            audio_play_sound(snd_fail, 1, false)
            shrink_speed = 0
            circle_current = (final_circle + 1)
            var missed_shot = 1
            alarm[0] = 10
            no_loop = 1
        }
    }
    if (key_select && circle_current <= final_circle)
    {
        missed_shot = 0
        var enemy_target_x_offset = 0
        var enemy_target_y_offset = 0
        switch global.player_weapon_modifier
        {
            case "Flint":
            case "Ice Pellets":
                enemy_target_x_offset = irandom_range(-40, 40)
                enemy_target_y_offset = irandom_range(-40, 40)
                break
            default:
                enemy_target_x_offset = 0
                enemy_target_y_offset = 0
                break
        }

        if (outline[circle_current] >= small_circle)
        {
            outline[circle_current] = 0
            shrink[circle_current] = 0
            imagea[circle_current] = 0
            shrink_speed = 0
            circle_current = (final_circle + 1)
            missed_shot = 1
            audio_play_sound(snd_fail, 1, false)
            alarm[0] = 10
            no_loop = 1
        }
        else if ((enemy_sparing == 1 && enemy_vulnerable == 1) || (enemy_vulnerable == 1 && current_hp_enemy <= attacking_damage_stat_critical) || outline[circle_current] <= (small_circle * 0.25))
        {
            hit[circle_current] = 2
            color_hit_number[circle_current] = 1
            shot_total += 3
            if (circle_current == final_circle)
                hit_object = obj_shot_strong
            else
                hit_object = obj_shot_strong_fake
        }
        else if (outline[circle_current] <= (small_circle * 0.6) && outline[circle_current] > (small_circle * 0.25))
        {
            hit[circle_current] = 1
            color_hit_number[circle_current] = 0
            shot_total += 2
            if (circle_current == final_circle)
                hit_object = obj_shot_medium
            else
                hit_object = obj_shot_medium_fake
        }
        else if (outline[circle_current] < small_circle && outline[circle_current] > (small_circle * 0.6))
        {
            hit[circle_current] = 1
            color_hit_number[circle_current] = 0
            shot_total += 1
            if (circle_current == final_circle)
                hit_object = obj_shot_weak
            else
                hit_object = obj_shot_weak_fake
        }
        if (missed_shot == 0)
        {
            instance_create((enemy_target_x + enemy_target_x_offset), (enemy_target_y + enemy_target_y_offset), hit_object)
            shrink[circle_current] = 0
            button_pressed = 1
        }
        circle_current += 1
    }
    for (i = 0; i <= final_circle; i++)
    {
        if (outline[i] > 0 && shrink[i] == 1)
        {
            outline[i] -= shrink_speed
            if (outline[i] < 0)
                outline[i] = 0
        }
        if (shrink[i] == 0 && imagea[i] > 0)
        {
            if (hit[i] == 2)
            {
                color_alt_total[i] += color_alt_speed
                if (color_alt_total[i] >= color_alt_max)
                {
                    color_alt_total[i] = 0
                    color_hit_number[i] += 1
                    if (color_hit_number[i] > 2)
                        color_hit_number[i] = 0
                }
            }
            if (hit[i] != 0)
            {
                cursor_color[i] = color_hit[color_hit_number[i]]
                outline_color[i] = color_hit[color_hit_number[i]]
            }
            thickness[i] += thick_increase
            imagea[i] -= imagea_dec
            if (imagea[i] < 0)
                imagea[i] = 0
        }
    }
    if (no_loop == 0)
    {
        if (outline[final_circle] == 0 && hit[final_circle] == 0)
        {
            if (!instance_exists(obj_strike_fake))
            {
                if (button_pressed == 1)
                    alarm[0] = 3
                else
                    alarm[0] = 1
                no_loop = 1
            }
        }
    }
}
