if live_call()
    return global.live_result;
var battle_box = obj_dialogue_box_battle_transformation_any
var side = choose(1, 2, 3)
var xx = (battle_box.bbox_left + 16)
var xx2 = (battle_box.bbox_right - 16)
var xx3 = battle_box.x
var yy = (battle_box.bbox_top - 16)
var obstacle1 = obj_ceroba_attack_fireball_obstacle
var obstacle2 = obj_ceroba_attack_fireball_obstacle
var obstacle3 = obj_ceroba_attack_fireball_obstacle
var obstacle_speed = 5
switch side
{
    case 1:
        obstacle1 = obj_ceroba_attack_bell_obstacle
        break
    case 2:
        obstacle2 = obj_ceroba_attack_bell_obstacle
        break
    case 3:
        obstacle3 = obj_ceroba_attack_bell_obstacle
        break
}

instance_create_depth(xx, yy, -50, obstacle1)
instance_create_depth(xx2, yy, -50, obstacle2)
instance_create_depth(xx3, yy, -50, obstacle3)
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
with (obstacle3)
{
    direction = 270
    speed = obstacle_speed
}
alarm[0] = obstacle_offset
