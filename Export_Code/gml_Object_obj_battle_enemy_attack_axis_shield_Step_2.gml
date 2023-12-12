var battle_box = 3153
if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy()
    return;
}
if instance_exists(obj_heart_battle_fighting_parent)
{
    x = (obj_heart_battle_fighting_parent.x + lengthdir_x(shield_offset, obj_heart_battle_fighting_parent.soul_direction))
    y = (obj_heart_battle_fighting_parent.y + lengthdir_y(shield_offset, obj_heart_battle_fighting_parent.soul_direction))
}
direction = obj_heart_battle_fighting_axis.soul_direction
image_angle = direction
