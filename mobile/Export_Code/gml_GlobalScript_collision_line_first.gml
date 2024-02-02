function collision_line_first(argument0, argument1, argument2, argument3, argument4, argument5, argument6) //gml_Script_collision_line_first
{
    var ox = argument0
    var oy = argument1
    var dx = argument2
    var dy = argument3
    var object = argument4
    var prec = argument5
    var notme = argument6
    var sx = (dx - ox)
    var sy = (dy - oy)
    var inst = collision_line(ox, oy, dx, dy, object, prec, notme)
    if (inst != -4)
    {
        while (abs(sx) >= 1 || abs(sy) >= 1)
        {
            sx /= 2
            sy /= 2
            var i = collision_line(ox, oy, dx, dy, object, prec, notme)
            if i
            {
                dx -= sx
                dy -= sy
                inst = i
            }
            else
            {
                dx += sx
                dy += sy
            }
        }
    }
    return inst;
}

