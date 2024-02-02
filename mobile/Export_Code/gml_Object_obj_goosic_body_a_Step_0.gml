var enemy_dead = global.enemy_dead
var enemy_spared = global.enemy_spared
var enemy_sparing = global.enemy_sparing
if (enemy_dead == 0 && enemy_spared == 0)
    image_alpha = global.image_alpha_enemy_attacking
if (enemy_dead == 1)
{
    x = xstart
    y = ystart
    instance_create(starting_point_x, starting_point_y, obj_goosic_dead)
    layer_sequence_destroy(24)
    instance_destroy()
    return;
}
else if (enemy_spared == 1)
{
    sprite_index = spr_goosic_spared
    x = xstart
    y = ystart
    image_speed = 0
    image_index = 0
    image_alpha = 0.5
    if (no_loop_create_clouds == 0)
    {
        for (i = 0; i <= 11; i += 1)
            instance_create(x, (y - 22), obj_spare_cloud)
    }
    no_loop_create_clouds = 1
}
if (damage_disjoint_count > 0)
    damage_disjoint_count -= 1
else if (enemy_dead == 0 && enemy_spared == 0 && damage_disjoint_count <= 0)
{
    if (global.enemy_low_hp == 1 && global.current_hp_enemy < global.max_hp_enemy)
    {
        if (!low_hp_noloop)
        {
            layer_sequence_destroy(idle_seq)
            layer_sequence_create("sequence_layer", x, y, 17)
            low_hp_noloop = 1
        }
        sprite_index = -4
    }
    else
        sprite_index = -4
}
else if (enemy_spared == 1)
    sprite_index = spr_goosic_spared
if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == 0)
{
    sprite_index = spr_goosic_hurt
    time_elapsed = 0
    sign_modifier = 1
    damage_disjoint_count = 12
    no_loop_damage_disjoint_count = 1
    audio_play_sound(enemy_hurt_noise, 1, false, 1, 0, enemy_hurt_pitch)
}
else if (!instance_exists(obj_text_damage_count))
    no_loop_damage_disjoint_count = 0
if (damage_disjoint_count == 12)
    damage_disjoint_x = -50
else if (damage_disjoint_count == 10)
    damage_disjoint_x = 50
else if (damage_disjoint_count == 8)
    damage_disjoint_x = -20
else if (damage_disjoint_count == 6)
    damage_disjoint_x = 20
else if (damage_disjoint_count == 4)
    damage_disjoint_x = -10
else if (damage_disjoint_count == 2)
    damage_disjoint_x = 10
else if (damage_disjoint_count == 0)
    damage_disjoint_x = 0
x = (xstart + damage_disjoint_x)
if (global.current_hp_enemy <= 0)
    sprite_index = spr_goosic_spared
