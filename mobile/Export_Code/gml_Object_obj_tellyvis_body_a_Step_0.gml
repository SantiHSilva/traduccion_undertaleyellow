if live_call()
    return global.live_result;
var enemy_dead = global.enemy_dead
var enemy_spared = global.enemy_spared
var enemy_sparing = global.enemy_sparing
if (enemy_dead == 0 && enemy_spared == 0)
    image_alpha = global.image_alpha_enemy_attacking
if (enemy_dead == 1)
{
    x = starting_point_x
    y = starting_point_y
    image_xscale = starting_point_xscale
    image_yscale = starting_point_yscale
    instance_create(starting_point_x, starting_point_y, obj_tellyvis_dead)
    instance_destroy()
}
else if (enemy_spared == 1)
{
    tellyvis_draw_face = 0
    sprite_index = spr_tellyvis_body
    x = starting_point_x
    y = starting_point_y
    image_xscale = starting_point_xscale
    image_yscale = starting_point_yscale
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
else if (enemy_dead == 0 && enemy_spared == 0 && damage_disjoint_count <= 0 && (!instance_exists(obj_battle_enemy_attack_tellyvis_remote_generator)))
{
    if (global.enemy_low_hp == 1 && global.current_hp_enemy < global.max_hp_enemy)
    {
        sprite_index = spr_tellyvis_low_hp
        tellyvis_face_default = spr_tellyvis_face_sad
    }
    else if ((enemy_sparing == 1 && global.enemy_attacking == 0) || (enemy_sparing == 0 && global.action_3_selected_count >= 1))
    {
        sprite_index = spr_tellyvis_body
        tellyvis_face_default = spr_tellyvis_face_smug
    }
    else if (!instance_exists(obj_battle_enemy_attack_tellyvis_remote_generator))
        sprite_index = spr_tellyvis_body
}
if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == 0)
{
    time_elapsed = 0
    sign_modifier = 1
    damage_disjoint_count = 12
    no_loop_damage_disjoint_count = 1
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
if (damage_disjoint_count > 0 || global.current_hp_enemy <= 0)
    sprite_index = spr_tellyvis_body
x = (draw_position_x + damage_disjoint_x)
y = (draw_position_y + damage_disjoint_y)
image_xscale = starting_point_xscale
image_yscale = starting_point_yscale
if (global.action_1_selected_count >= 1 && enemy_sparing == 1 && global.enemy_attacking == 1 && global.enemy_low_hp == 0)
{
    if (tellyvis_face_default != spr_tellyvis_face_dance)
        tellyvis_face_default = spr_tellyvis_face_dance
}
if (tellyvis_face_change == 1 && tellyvis_face_current != spr_tellyvis_face_switch)
{
    tellyvis_face_frame = 0
    tellyvis_face_current = spr_tellyvis_face_switch
}
else if ((tellyvis_face_current != tellyvis_face_next && tellyvis_face_change == 0) || tellyvis_face_next_stored != tellyvis_face_next)
{
    tellyvis_face_next_stored = tellyvis_face_next
    tellyvis_face_change = 1
    alarm[0] = 10
}
if ((!instance_exists(obj_quote_bubble_battle)) && tellyvis_face_current != tellyvis_face_default && tellyvis_face_next != tellyvis_face_default)
    tellyvis_face_next = tellyvis_face_default
if (tellyvis_face_frame < sprite_get_number(tellyvis_face_current))
    tellyvis_face_frame += 0.3
else
    tellyvis_face_frame = 0
