if live_call()
    return global.live_result;
image_speed = 0.2
if (spawner != noone && track_spawner == 1)
{
    soul_color = spawner.soul_color
    if (soul_color == 16777215)
        image_alpha = 0
    y = spawner.y
    x = spawner.x
}
if (idle_animation == 1)
{
    sin_timer += 0.1
    if (sin_timer > 360)
        sin_timer -= 360
    y_offset = (sin(sin_timer) * 1)
}
