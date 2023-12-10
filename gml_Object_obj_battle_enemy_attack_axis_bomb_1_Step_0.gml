if live_call()
    return global.live_result;
var battle_box = obj_dialogue_box_battle_transformation_any
if (image_alpha < 1)
    image_alpha += 0.1
else if (noloop == 0)
{
    gravity = 0.8
    vspeed = -14
    hspeed = 3
    if (x > 320)
        hspeed *= -1
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
        var shield = obj_battle_enemy_attack_axis_shield
        y = (shield.bbox_top - 5)
        vspeed = -10
        destroy_check = 1
    }
    hurt_player = 0
    if (obj_heart_battle_fighting_axis.movement_mode == 1)
    {
        if (bbox_bottom >= battle_box.bbox_bottom && vspeed > 0)
            hurt_player = 1
    }
    else if collision_rectangle((battle_box.x - 5), (battle_box.y - 5), (battle_box.x + 5), (battle_box.y + 5), id, 0, 0)
        hurt_player = 1
}
if hurt_player
{
    instance_destroy(self, false)
    instance_create_depth(320, 320, -100, obj_battle_enemy_attack_axis_energy_ball_explosion)
}
if (destroy_check == 1 && vspeed > 0)
    instance_destroy()
