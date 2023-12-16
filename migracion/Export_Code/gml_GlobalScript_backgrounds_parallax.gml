function backgrounds_parallax() //gml_Script_backgrounds_parallax
{
    var _v = argument[0]
    for (var _i = 1; _i < argument_count; _i++)
    {
        var _b = argument[_i]
        __background_set((3 << 0), _b, ((__view_get((0 << 0), _v) / (room_width - __view_get((2 << 0), _v))) * (room_width - __background_get((5 << 0), _b))))
        __background_set((4 << 0), _b, ((__view_get((1 << 0), _v) / (room_height - __view_get((3 << 0), _v))) * (room_height - __background_get((6 << 0), _b))))
    }
}

