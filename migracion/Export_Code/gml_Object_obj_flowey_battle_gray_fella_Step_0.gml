if live_call()
    return global.live_result;
if (destroy_self == 0)
{
    var soul_dir = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y)
    direction += (angle_difference(soul_dir, direction) * 0.1)
}
