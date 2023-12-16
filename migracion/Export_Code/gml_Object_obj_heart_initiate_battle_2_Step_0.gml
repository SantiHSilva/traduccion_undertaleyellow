if (distance_to_point(point_x2, point_y2) < move_speed)
{
    x = point_x2
    y = point_y2
}
if (x == point_x2 && y == point_y2 && no_loop == 0)
{
    alarm[0] = 2
    no_loop = 1
}
if (no_loop == 0)
{
    x += lengthdir_x(move_speed, angle)
    y += lengthdir_y(move_speed, angle)
}
