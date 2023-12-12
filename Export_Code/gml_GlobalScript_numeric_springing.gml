var _ret;
function numeric_springing(argument0, argument1, argument2, argument3, argument4, argument5) //gml_Script_numeric_springing
{
    var _x = argument0
    var _v = (argument1 * (room_speed / argument5))
    var _x_t = argument2
    var _damping = argument3
    var _ang_freq = ((2 * pi) * argument4)
    var _t = (argument5 / room_speed)
    var _delta = ((1 + (((2 * _t) * _damping) * _ang_freq)) + (power(_t, 2) * power(_ang_freq, 2)))
    var _delta_x = ((((1 + (((2 * _t) * _damping) * _ang_freq)) * _x) + (_t * _v)) + ((power(_t, 2) * power(_ang_freq, 2)) * _x_t))
    var _delta_v = (_v + ((_t * power(_ang_freq, 2)) * (_x_t - _x)))
    _ret[1] = ((_delta_v / _delta) / (room_speed / argument5))
    _ret[0] = (_delta_x / _delta)
    return _ret;
}

