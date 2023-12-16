if live_call()
    return global.live_result;
var battle_box = obj_dialogue_box_battle_transformation_any
if (image_alpha < 1)
    image_alpha += 0.1
else if (noloop == 0)
{
    var base_speed = 12
    switch gravity_direction
    {
        case 0:
            hspeed = (-base_speed)
            vspeed = 2
            if (y > battle_box.y)
                vspeed *= -1
            break
        case 180:
            hspeed = base_speed
            vspeed = 2
            if (y > battle_box.y)
                vspeed *= -1
            break
        case 90:
            vspeed = base_speed
            hspeed = 2
            if (x > battle_box.x)
                hspeed *= -1
            break
        case 270:
            vspeed = (-base_speed)
            hspeed = 2
            if (x > battle_box.x)
                hspeed *= -1
            break
    }

    gravity = 0.4
    noloop = 1
}
var hurt_player = 0
if (noloop == 1)
{
    if place_meeting(x, y, obj_battle_enemy_attack_axis_shield)
    {
        if instance_exists(obj_battlebox_controller_axis)
            obj_battlebox_controller_axis.axis_trash_meter = clamp((obj_battlebox_controller_axis.axis_trash_meter + 10), 0, 100)
        obj_battle_enemy_attack_axis_shield.shield_hit = 1
        var shield = 511
        direction = other.direction
        bomb_speed = 15
        destroy_check = 1
    }
    if collision_rectangle((battle_box.x - 5), (battle_box.y - 5), (battle_box.x + 5), (battle_box.y + 5), id, 0, 0)
        hurt_player = 1
}
if hurt_player
{
    instance_destroy(self, false)
    instance_create_depth(320, 320, -100, obj_battle_enemy_attack_axis_energy_ball_explosion)
}
if (destroy_check == 1 && bomb_speed > 0)
    instance_destroy()
