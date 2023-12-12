function collision_circle_all(argument0, argument1, argument2, argument3, argument4, argument5) //gml_Script_collision_circle_all
{
    var _a = undefined
    var _n = 0
    var _h = abs(argument2)
    var _id = collision_circle(argument0, argument1, argument2, argument3, argument4, argument5)
    while _id
    {
        with (_id)
        {
            _a[_n] = id
            _n++
            y -= (abs(sprite_height) + _h)
        }
        _id = collision_circle(argument0, argument1, argument2, argument3, argument4, argument5)
    }
    for (var _i = 0; _i < _n; _i++)
    {
        with (_a[_i])
            y += (abs(sprite_height) + _h)
    }
    return _a;
}

