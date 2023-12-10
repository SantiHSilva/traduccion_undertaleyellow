function sw_laser(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) //gml_Script_sw_laser
{
    var _x1 = argument0
    var _y1 = argument1
    var _x2 = argument2
    var _y2 = argument3
    var _w1 = argument4
    var _w2 = argument5
    var _c1 = argument6
    var _c3 = argument7
    var _c2 = merge_color(_c1, _c3, 0.1)
    var _a1 = argument8
    var _a2 = argument9
    var _a3 = argument10
    _dir = point_direction(_x1, _y1, _x2, _y2)
    var _s = max(1, ceil(((_w1 + (_w2 * 2)) / 16)))
    var _amt = (90 / _s)
    draw_primitive_begin(5)
    for (var i = 0; i <= _s; i++)
    {
        draw_vertex_color((_x1 + lengthdir_x((_w1 / 2), ((_dir + 180) + (i * _amt)))), (_y1 + lengthdir_y((_w1 / 2), ((_dir + 180) + (i * _amt)))), _c2, _a2)
        draw_vertex_color(_x1, _y1, _c1, _a1)
    }
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color((_x2 + lengthdir_x((_w1 / 2), ((_dir - 90) + (i * _amt)))), (_y2 + lengthdir_y((_w1 / 2), ((_dir - 90) + (i * _amt)))), _c2, _a2)
        draw_vertex_color(_x2, _y2, _c1, _a1)
    }
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color((_x2 + lengthdir_x((_w1 / 2), (_dir + (i * _amt)))), (_y2 + lengthdir_y((_w1 / 2), (_dir + (i * _amt)))), _c2, _a2)
        draw_vertex_color(_x2, _y2, _c1, _a1)
    }
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color((_x1 + lengthdir_x((_w1 / 2), (((_dir + 180) - 90) + (i * _amt)))), (_y1 + lengthdir_y((_w1 / 2), (((_dir + 180) - 90) + (i * _amt)))), _c2, _a2)
        draw_vertex_color(_x1, _y1, _c1, _a1)
    }
    draw_primitive_end()
    draw_primitive_begin(5)
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color((_x1 + lengthdir_x(((_w1 / 2) + _w2), ((_dir + 180) + (i * _amt)))), (_y1 + lengthdir_y(((_w1 / 2) + _w2), ((_dir + 180) + (i * _amt)))), _c3, _a3)
        draw_vertex_color((_x1 + lengthdir_x((_w1 / 2), ((_dir + 180) + (i * _amt)))), (_y1 + lengthdir_y((_w1 / 2), ((_dir + 180) + (i * _amt)))), _c2, _a2)
    }
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color((_x2 + lengthdir_x(((_w1 / 2) + _w2), ((_dir - 90) + (i * _amt)))), (_y2 + lengthdir_y(((_w1 / 2) + _w2), ((_dir - 90) + (i * _amt)))), _c3, _a3)
        draw_vertex_color((_x2 + lengthdir_x((_w1 / 2), ((_dir - 90) + (i * _amt)))), (_y2 + lengthdir_y((_w1 / 2), ((_dir - 90) + (i * _amt)))), _c2, _a2)
    }
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color((_x2 + lengthdir_x(((_w1 / 2) + _w2), (_dir + (i * _amt)))), (_y2 + lengthdir_y(((_w1 / 2) + _w2), (_dir + (i * _amt)))), _c3, _a3)
        draw_vertex_color((_x2 + lengthdir_x((_w1 / 2), (_dir + (i * _amt)))), (_y2 + lengthdir_y((_w1 / 2), (_dir + (i * _amt)))), _c2, _a2)
    }
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color((_x1 + lengthdir_x(((_w1 / 2) + _w2), (((_dir + 180) - 90) + (i * _amt)))), (_y1 + lengthdir_y(((_w1 / 2) + _w2), (((_dir + 180) - 90) + (i * _amt)))), _c3, _a3)
        draw_vertex_color((_x1 + lengthdir_x((_w1 / 2), (((_dir + 180) - 90) + (i * _amt)))), (_y1 + lengthdir_y((_w1 / 2), (((_dir + 180) - 90) + (i * _amt)))), _c2, _a2)
    }
    draw_primitive_end()
}

