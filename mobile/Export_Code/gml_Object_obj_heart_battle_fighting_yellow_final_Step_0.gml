if live_call()
    return global.live_result;
script_execute(gml_Script_scr_controls_battle_heart_red)
charge_percentage = (charge_time / charge_time_max)
x_previous = x
y_previous = y
move_x = (key_left + key_right)
move_y = (key_down + key_up)
hsp = (move_x * walk_speed)
vsp = (move_y * walk_speed)
if is_dashing
{
    var ghost = instance_create_depth(x, y, depth, obj_dash_ghost)
    ghost.sprite_index = base_sprite
    hsp = (move_x_dash * dash_speed)
    vsp = (move_y_dash * dash_speed)
    dash_timer--
    if (dash_timer <= 0)
        is_dashing = 0
}
else
    dash_timer = dash_distance
hsp += hsp_factor
vsp += vsp_factor
if (room == rm_battle_flowey_phase_2)
{
    var right_boundary = room_width
    var left_boundary = 0
    var top_boundary = 260
    var bottom_boundary = room_height
}
else
{
    right_boundary = (obj_dialogue_box_battle_transformation_any.bbox_right - 4)
    left_boundary = (obj_dialogue_box_battle_transformation_any.bbox_left + 4)
    top_boundary = (obj_dialogue_box_battle_transformation_any.bbox_top + 4)
    bottom_boundary = (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4)
}
if (sign(hsp) == -1 && (bbox_left + hsp) <= left_boundary)
{
    while ((bbox_left + sign(hsp)) > left_boundary)
        x += sign(hsp)
    is_dashing = 0
    hsp = 0
}
else if (sign(hsp) == 1 && (bbox_right + hsp) >= right_boundary)
{
    while ((bbox_right + sign(hsp)) < right_boundary)
        x += sign(hsp)
    is_dashing = 0
    hsp = 0
}
x += hsp
if (sign(vsp) == -1 && (bbox_top + vsp) <= top_boundary)
{
    while ((bbox_top + sign(vsp)) > top_boundary)
        y += sign(vsp)
    is_dashing = 0
    vsp = 0
}
else if (sign(vsp) == 1 && (bbox_bottom + vsp) >= bottom_boundary)
{
    while ((bbox_bottom + sign(vsp)) < bottom_boundary)
        y += sign(vsp)
    is_dashing = 0
    vsp = 0
}
y += vsp
var collider_id = instance_place(x, (y + vsp), obj_martlet_attack_glass)
if (collider_id != -4)
{
    if (vsp != 0)
    {
    }
}
obj_heart_red_hitbox.x = x
obj_heart_red_hitbox.y = y
if instance_exists(obj_heart_battle_effect_glow)
{
    obj_heart_battle_effect_glow.x = x
    obj_heart_battle_effect_glow.y = y
}
if (moveable == 1 && global.current_sp_self > 0)
{
    var can_trail = 0
    trail_cc_current += 1
    if (trail_cc_current >= trail_cc_max)
    {
        can_trail = 1
        trail_cc_current = 0
    }
    if (can_trail == 1)
    {
        ds_list_add(x_list, x)
        ds_list_add(y_list, y)
        while (ds_list_size(x_list) > max_points_trail)
        {
            ds_list_delete(x_list, 0)
            ds_list_delete(y_list, 0)
        }
    }
}
else if (ds_list_size(x_list) > 0)
    ds_list_clear(x_list)
if (room == rm_battle_flowey_phase_2)
{
    if (sprite_index == spr_heart_yellow_down)
    {
        base_sprite = 1661
        var dash_disable = 1
        if instance_exists(obj_flowey_battle_final)
        {
            for (var i = 0; i < array_length(obj_flowey_battle_final.petal_alive); i++)
            {
                if (obj_flowey_battle_final.petal_alive[i] == 0)
                    dash_disable = 0
            }
        }
        if (dash_disable == 1)
        {
            is_dashing = 0
            can_dash = 0
        }
    }
    else
        base_sprite = 1662
}
if ((abs(move_x) + abs(move_y)) == 0)
{
    if keyboard_multicheck_pressed(1)
        dash_buffered = 1
    if (keyboard_multicheck_released(1) && dash_buffered == 1)
        dash_buffered = 0
}
if ((keyboard_multicheck_pressed(1) || dash_buffered) && moveable == 1 && can_dash == 1 && (abs(move_x) + abs(move_y)) != 0)
{
    audio_play_sound(snd_yellow_soul_dash, 1, false)
    dash_overlay = 1.1
    move_x_dash = move_x
    move_y_dash = move_y
    dash_grace = dash_grace_max
    is_dashing = 1
    dash_buffered = 0
    can_dash = 0
}
if ((!can_dash) && (!is_dashing))
{
    if (dash_grace > 0)
        dash_grace--
    if (dash_delay > 0)
        dash_delay--
    else
    {
        dash_grace = 0
        dash_delay = dash_delay_max
        can_dash = 1
    }
}
if (keyboard_multicheck_released(1) && is_dashing && can_cancel_dash)
    is_dashing = 0
if (dash_overlay > 0)
    dash_overlay -= 0.1
shoot_delay = 10
if (shoot_buffer <= 0)
{
    if keyboard_multicheck_pressed(0)
        shoot_buffer = 10
}
else
    shoot_buffer--
var turn_angle_target_final = (turn_angle_target - 90)
switch turn_state
{
    case 0:
        if (image_angle != turn_angle_target_final)
            turn_state += 1
        break
    case 1:
        image_xscale += 0.25
        image_yscale += 0.25
        if (image_xscale > 1.5)
            turn_state += 1
        break
    case 2:
        image_angle += (angle_difference(turn_angle_target_final, image_angle) * 0.2)
        if (image_xscale > 1)
            image_xscale -= 0.2
        else
            image_xscale = 1
        if (angle_difference(image_angle, turn_angle_target_final) < 1)
        {
            image_angle = turn_angle_target_final
            image_xscale = 1
            turn_state = 0
            show_debug_message(("LOCKED " + string(turn_angle_target_final)))
        }
        image_yscale = image_xscale
        break
}

if (turn_state > 0)
{
    if instance_exists(obj_heart_yellow_shot_blast)
    {
    }
}
if instance_exists(obj_heart_yellow_shot_blast)
{
    can_shoot = 0
    alarm[1] = shoot_delay
}
if (keyboard_multicheck_pressed(2) && global.option_autoshoot)
{
    if global.autofire_on
        global.autofire_on = 0
    else
        global.autofire_on = 1
}
if (global.option_autoshoot == 0)
    global.autofire_on = 0
function fireCheck_gml_Object_obj_heart_battle_fighting_yellow_final_Step_0() //gml_Script_fireCheck_gml_Object_obj_heart_battle_fighting_yellow_final_Step_0
{
    if (global.autofire_on == 1 || (global.autofire_on == 0 && keyboard_multicheck_pressed(0)))
        return 1;
    return 0;
}

if ((fireCheck() || shoot_buffer > 0) && sprite_index != spr_heart_yellow_down && moveable == 1 && can_shoot == 1 && (!blast_is_firing) && (!is_charging))
{
    shoot_buffer = 0
    sprite_index = spr_heart_yellow_shoot
    image_index = 0
    image_speed = 1
    var yy = (y - 6)
    var xx = (x + 0.5)
    if (image_angle == 90 || image_angle == 270)
    {
        yy = y
        xx = x
    }
    if (image_angle == 180)
        yy = (y + 6)
    var shot = instance_create_depth(xx, yy, -10000, obj_heart_yellow_shot)
    shot.direction = (image_angle + 90)
    shot.image_angle = image_angle
    can_shoot = 0
    alarm[1] = shoot_delay
}
if (keyboard_multicheck(0) && (!is_charging) && sprite_index != spr_heart_yellow_down && moveable == 1 && (!blast_is_firing) && can_charge == 1)
{
    if (!alarm[2])
        alarm[2] = 7
}
if (keyboard_multicheck_released(0) || keyboard_multicheck_pressed(2))
{
    alarm[2] = -1
    if (is_charging == 1)
    {
        is_charging = 0
        charge_time = charge_time_max
        sprite_index = spr_heart_yellow_up
        image_index = 0
        image_speed = 0
        if (is_charged == 1)
        {
            if (charged_shot_type == 1)
            {
                yy = (y - 6)
                xx = (x + 0.5)
                if (image_angle == 90 || image_angle == 270)
                {
                    yy = y
                    xx = x
                }
                var shot_big = instance_create_depth(xx, yy, -10000, obj_heart_yellow_shot_big)
                shot_big.direction = (image_angle + 90)
                shot_big.image_angle = image_angle
                is_charged = 0
                can_shoot = 0
                alarm[1] = shoot_delay
                sprite_index = spr_heart_yellow_shoot
                image_index = 0
                image_speed = 1
            }
            else if (charged_shot_type == 2)
            {
                shot_big = instance_create_depth(x, y, -10000, obj_heart_yellow_shot_blast)
                var image_angle_final = turn_angle_target_final
                shot_big.direction = (image_angle_final + 90)
                shot_big.image_angle = image_angle_final
                is_charged = 0
                blast_is_firing = 1
                sprite_index = spr_heart_yellow_shoot
                image_index = 0
                image_speed = 0
            }
        }
    }
}
if is_charging
{
    if (!audio_is_playing(snd_chargeshot_charge))
    {
        charge_sound = audio_play_sound(snd_chargeshot_charge, 1, true)
        audio_sound_gain(charge_sound, 0.8, 0)
        audio_sound_pitch(charge_sound, 0.5)
    }
    if (charge_time > 0)
        charge_time -= 1
    else if (!is_charged)
    {
        var ready_sound = audio_play_sound(snd_undertale_flash, 1, false)
        audio_sound_gain(ready_sound, 0.5, 0)
        audio_sound_gain(charge_sound, 0, 1000)
        is_charged = 1
        sprite_index = spr_heart_yellow_ready
        image_index = 0
        image_speed = 1
    }
}
else
{
    audio_stop_sound(charge_sound)
    is_charged = 0
    if (sprite_index == spr_heart_yellow_ready)
    {
        sprite_index = spr_heart_yellow_up
        image_index = 0
        image_speed = 0
    }
}
if audio_is_playing(charge_sound)
{
    var pitch_original = audio_sound_get_pitch(charge_sound)
    if (pitch_original < 0.99)
        audio_sound_pitch(charge_sound, (1 - (0.5 * charge_percentage)))
    else
        audio_sound_pitch(charge_sound, 1)
}
if (blast_is_firing && (!instance_exists(obj_heart_yellow_shot_blast)))
{
    blast_is_firing = 0
    sprite_index = spr_heart_yellow_up
    image_index = 0
    image_speed = 0
}
event_user(15)
