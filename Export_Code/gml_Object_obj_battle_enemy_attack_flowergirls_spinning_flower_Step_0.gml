if (can_spin == 1)
{
    if (spin_speed < spin_speed_max)
        spin_speed += 0.2
    image_angle += (spin_speed * spin_direction)
}
