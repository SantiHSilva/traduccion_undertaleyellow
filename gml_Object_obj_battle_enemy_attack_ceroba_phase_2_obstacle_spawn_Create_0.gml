if live_call()
    return global.live_result;
var battle_box = obj_dialogue_box_battle_transformation_any
var side = choose(1, 2)
var xx = (battle_box.bbox_left + 16)
var xx2 = (battle_box.bbox_right - 16)
var yy = (battle_box.bbox_top - 16)
var obstacle1 = obj_ceroba_attack_bell_obstacle
var obstacle2 = obj_ceroba_attack_fireball_obstacle
var obstacle_speed = 5
if (side == 2)
{
    obstacle1 = 247
    obstacle2 = obj_ceroba_attack_bell_obstacle
}
instance_create_depth(xx, yy, -50, obstacle1)
instance_create_depth(xx2, yy, -50, obstacle2)
instance_destroy()
with (obstacle1)
{
    direction = 270
    speed = obstacle_speed
}
with (obstacle2)
{
    direction = 270
    speed = obstacle_speed
}
