if live_call()
    return global.live_result;
if (event_fade_in == 1 && draw_alpha < 1)
    draw_alpha += 0.1
else
{
    if audio_is_paused(mus)
        audio_resume_sound(mus)
    event_fade_in = 0
}
if (event_fade_out == 1)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.1
    else
    {
        event_fade_out = 0
        instance_destroy(obj_crayon)
        instance_destroy(obj_crayon_box)
        instance_destroy(obj_crayon_indicator)
        instance_destroy()
    }
    return;
}
var h_mouse = (global.right_key - global.left_key)
var v_mouse = (global.down_key - global.up_key)
var cursor_speed = 4
if (window_get_fullscreen() == 1)
    cursor_speed = 8
if (h_mouse != 0 || v_mouse != 0)
    window_mouse_set((window_mouse_get_x() + (h_mouse * cursor_speed)), (window_mouse_get_y() + (v_mouse * cursor_speed)))
cursor_x = mouse_x
cursor_y = mouse_y
cursor_x -= view_x
cursor_y -= view_y
if (mouse_check_button(mb_left) || keyboard_multicheck(0))
    cursor_click = 1
else
    cursor_click = 0
if (cursor_click == 1)
{
    if (cursor_click_noloop == 0 && point_in_rectangle(cursor_x, cursor_y, obj_crayon_indicator.bbox_left, obj_crayon_indicator.bbox_top, obj_crayon_indicator.bbox_right, obj_crayon_indicator.bbox_bottom))
    {
        if (brush_size_current == brush_size_normal)
            brush_size_current = brush_size_large
        else
            brush_size_current = brush_size_normal
    }
    var cursor_x_target = cursor_x
    var cursor_y_target = cursor_y
    if (abs((cursor_x_last - cursor_x)) > brush_size_current || abs((cursor_y_last - cursor_y)) > brush_size_current)
    {
        cursor_x = cursor_x_last
        cursor_y = cursor_y_last
    }
    do
    {
        if (cursor_x > id_xx && cursor_x < (id_xx + ds_grid_width(drawing_grid)) && cursor_y > id_yy && cursor_y < (id_yy + ds_grid_height(drawing_grid)))
        {
            for (var j = (-brush_size_normal); j < brush_size_current; j++)
            {
                for (var i = (-brush_size_normal); i < brush_size_current; i++)
                    ds_grid_set(drawing_grid, ((cursor_x - id_xx) + i), ((cursor_y - id_yy) + j), crayon_selected)
            }
        }
        if (cursor_x != cursor_x_target)
            cursor_x += sign((cursor_x_target - cursor_x))
        if (cursor_y != cursor_y_target)
            cursor_y += sign((cursor_y_target - cursor_y))
    } until (cursor_x == cursor_x_target && cursor_y == cursor_y_target);
}
for (i = 0; i < array_length(button_x); i++)
{
    if point_in_rectangle(cursor_x, cursor_y, button_x[i], button_y[i], (button_x[i] + button_width), (button_y[i] + button_height))
    {
        if (button_highlight[i] == 0)
        {
            audio_play_sound(snd_mainmenu_select, 1, false)
            button_highlight[i] = 1
        }
        if (cursor_click && cursor_click_noloop == 0)
            event_user(i)
    }
    else
        button_highlight[i] = 0
}
cursor_x_last = cursor_x
cursor_y_last = cursor_y
if cursor_click
    cursor_click_noloop = 1
else
    cursor_click_noloop = 0
