if (obj_pl.x > 1860)
{
    state = "idle"
    image_speed = 0
    ball_spawn_noloop = 0
    alarm[0] = throw_interval
}
else
    state = "throw"
