function scr_object_culling() //gml_Script_scr_object_culling
{
    var y_top = (y - sprite_get_yoffset(sprite_index))
    var y_bottom = (y_top + sprite_height)
    var x_left = (x - sprite_get_xoffset(sprite_index))
    var x_right = (x_left + sprite_width)
    if rectangle_in_rectangle(x_left, y_top, x_right, y_bottom, (__view_get((0 << 0), 0) - 20), (__view_get((1 << 0), 0) - 20), ((__view_get((0 << 0), 0) + __view_get((2 << 0), 0)) + 20), (__view_get((1 << 0), 0) + __view_get((3 << 0), 0)))
        visible = true
    else
        visible = false
}

