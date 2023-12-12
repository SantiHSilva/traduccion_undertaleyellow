if (image_alpha < 1)
{
    image_alpha += 0.1
    if (image_alpha > 1)
        image_alpha = 1
}
if (can_move == 0 && set_alarm == 0)
{
    angle = point_direction(x, y, round((obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2))), (obj_dialogue_box_battle_transformation_any.bbox_top + center_disjoint))
    x += lengthdir_x(move_speed, angle)
    y += lengthdir_y(move_speed, angle)
    if (x == round((obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2))) && y == (obj_dialogue_box_battle_transformation_any.bbox_top + center_disjoint))
    {
        alarm[0] = alarm_time
        set_alarm = 1
    }
}
if (instance_exists(obj_heart_battle_fighting_parent) && can_move == 1)
{
    angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y)
    if (can_move == 1)
    {
        x += lengthdir_x(move_speed, angle)
        y += lengthdir_y(move_speed, angle)
    }
}
