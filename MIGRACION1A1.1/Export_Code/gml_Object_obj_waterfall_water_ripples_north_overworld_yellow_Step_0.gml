if live_call()
    return global.live_result;
var starting_y = (((camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])) + 2.5) + 20)
var target_y = (camera_get_view_y(view_camera[0]) - 2.5)
if (y < target_y && wrap_around == 1)
{
    var y_offset = (target_y - y)
    y = (starting_y - y_offset)
    var crash_prevent = 5
    obj_water_ripple_controller_waterfall.x_last = x
}
if (can_move == 1)
    y -= 1
image_speed = 0.1
