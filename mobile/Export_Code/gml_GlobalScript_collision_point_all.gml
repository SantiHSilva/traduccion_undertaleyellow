function collision_point_all(argument0, argument1, argument2, argument3, argument4) //gml_Script_collision_point_all
{
    var _a = undefined
    var _n = 0
    var _id = collision_point(argument0, argument1, argument2, argument3, argument4)
    while _id
    {
        with (_id)
        {
            _a[_n] = id
            _n++
            y -= abs(sprite_height)
        }
        _id = collision_point(argument0, argument1, argument2, argument3, argument4)
    }
    for (var _i = 0; _i < _n; _i++)
    {
        with (_a[_i])
            y += abs(sprite_height)
    }
    return _a;
}

