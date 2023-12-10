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
script_execute(gml_Script_scr_controls_battle_reticle)
if (outline <= 0 && no_loop == 0)
    self.shotFail()
if key_select
{
    if (outline > small_circle)
    {
        audio_play_sound(snd_fail, 1, false)
        self.shotFail()
    }
    else if ((enemy_sparing == 1 && enemy_vulnerable == 1) || (enemy_vulnerable == 1 && current_hp_enemy <= attacking_damage_stat_critical) || outline <= (small_circle * 0.25))
    {
        shot_type = "strong"
        hit_object = obj_shot_strong
        if (global.battle_enemy_name == "micro froggit" && outline > (small_circle * 0.25))
        {
            shot_type = "weak"
            hit_object = obj_shot_weak
        }
    }
    else if (outline <= (small_circle * 0.6) && outline > (small_circle * 0.25))
    {
        shot_type = "medium"
        hit_object = obj_shot_medium
    }
    else if (outline < small_circle && outline > (small_circle * 0.6))
    {
        shot_type = "weak"
        hit_object = obj_shot_weak
    }
    if (shrink == 1)
    {
        instance_create(enemy_target_x, enemy_target_y, hit_object)
        shrink = 0
        button_pressed = 1
    }
}
if (outline > 0 && shrink == 1)
    outline -= shrink_speed
if (button_pressed == 1 && shrink == 0)
{
    color_alt_total += color_alt_speed
    if (color_alt_total >= color_alt_max)
    {
        color_alt_total = 0
        color_number += 1
        if (color_number > 1)
            color_number = 0
    }
    cursor_color = color[color_number]
    color_number_2 = (color_number + 1)
    if (color_number_2 > 1)
        color_number_2 = 0
    outline_color = color[color_number_2]
}
function shotFail_gml_Object_obj_toy_gun_circle_Step_0() //gml_Script_shotFail_gml_Object_obj_toy_gun_circle_Step_0
{
    outline = 0
    shrink = 0
    image_alpha = 0
    alarm[0] = 1
    no_loop = 1
}

