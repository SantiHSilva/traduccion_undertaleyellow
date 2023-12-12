for (var i = (room_width + 15); i >= 0; i -= 30)
{
    if (choose(1, 2, 3) != 1)
        part_particles_create(part_axis_bg_sys, i, room_height, part_axis_bg_dark, 1)
}
alarm[1] = (36 / part_axis_bg_dark_speed)
