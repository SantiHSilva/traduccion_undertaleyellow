if live_call()
    return global.live_result;
if (execute_create == 1)
{
    if (can_execute == 0)
        return;
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
            circle_current += 1
        }
    }
    if key_select
    {
        if (outline[circle_current] > small_circle)
        {
            self.shoot_fail()
            return;
        }
        else if ((enemy_sparing == 1 && enemy_vulnerable == 1) || (enemy_vulnerable == 1 && current_hp_enemy <= attacking_damage_stat_critical) || outline[circle_current] <= (small_circle * 0.5))
        {
            gun_spin = 1
            hit[circle_current] = 2
            color_hit_number[circle_current] = 1
            shot_add += 3
            if (circle_current == final_circle)
                hit_object = 2915
            else
                hit_object = 2915
            var shot_sound = audio_play_sound(snd_attackhitperfect, 1, false)
        }
        else if (outline[circle_current] <= small_circle && outline[circle_current] > (small_circle * 0.5))
        {
            gun_spin = 1
            hit[circle_current] = 1
            color_hit_number[circle_current] = 0
            shot_add += 2
            if (circle_current == final_circle)
                hit_object = 2914
            else
                hit_object = 2914
            shot_sound = audio_play_sound(snd_attackhit, 1, false)
        }
        audio_sound_pitch(shot_sound, (1 + (obj_wild_revolver_battle_outline.target_current * 0.08)))
        instance_create((enemy_target_x + irandom_range(-50, 50)), (enemy_target_y + irandom_range(-50, 50)), hit_object)
        shrink[circle_current] = 0
        button_pressed = 1
        button_pressed_main = 1
        circle_current += 1
        if (circle_current > final_circle)
            alarm[0] = 5
        key_select = 0
    }
    for (i = 0; i <= final_circle; i++)
    {
        if (outline[i] > 0 && shrink[i] == 1)
        {
            outline[i] -= shrink_speed
            if (outline[i] <= 0)
            {
                outline[i] = 0
                self.shoot_fail()
            }
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
                alarm[0] = 5
                no_loop = 1
            }
        }
    }
}
function shoot_fail_gml_Object_obj_wild_revolver_circle_multi_pre_Step_0() //gml_Script_shoot_fail_gml_Object_obj_wild_revolver_circle_multi_pre_Step_0
{
    if (!shoot_miss)
    {
        gun_spin = 0
        hit[circle_current] = 0
        color_hit_number[circle_current] = 0
        button_pressed = 1
        if (shot_add == 0)
            button_pressed = 0
        shot_sound = audio_play_sound(snd_fail, 1, false)
        shrink[circle_current] = 0
        shrink_speed = 0
        alarm[0] = 20
        shoot_miss = 1
        key_select = 0
        no_loop = 1
    }
}

