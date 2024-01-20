// create
timer = 0
fps_tick = 0
fps_timer = 0
current_fps = 30
fps_list = ds_list_create()

// step

fps_timer += (delta_time / 1000000)
fps_tick += 1
if (fps_timer >= 1)
{
    if (ds_list_size(fps_list) > 10)
        ds_list_delete(fps_list, 0)
    ds_list_add(fps_list, fps_tick)
    current_fps = 0
    for (i = 0; i < ds_list_size(fps_list); i += 1)
        current_fps += ds_list_find_value(fps_list, i)
    current_fps /= ds_list_size(fps_list)
    if (current_fps > 35)
    {
        timer += 1
        if (timer > 5)
        {
            display_reset(0, 0)
            room_speed = 30
            game_set_speed(30, gamespeed_fps)
            display_set_timing_method(0)
            timer = -10
        }
    }
    else
        timer = 0
    fps_tick = 0
    fps_timer = 0
}