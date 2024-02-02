if (moving == false)
{
    if (image_alpha == 0 && no_loop == 0)
    {
        alarm[0] = 5
        no_loop = 1
    }
    if (image_alpha == 1 && no_loop == 0 && flash_count < 3)
    {
        alarm[0] = 5
        no_loop = 1
    }
    if (flash_count == 3 && no_loop_2 == 0)
    {
        alarm[1] = 5
        no_loop_2 = 1
    }
}
if (moving == true)
{
    if (x != 48)
    {
        x_position += hsp
        x = (ceil(((x_position / 2) - 0.5)) * 2)
    }
    if (y != 454)
    {
        y_position += vsp
        y = (floor(((y_position / 2) + 0.5)) * 2)
    }
    if ((hsp_sign * x) > (hsp_sign * 48))
    {
        x = 48
        x_position = x
    }
    if ((vsp_sign * y) > (vsp_sign * 454))
    {
        y = 454
        y_position = y
    }
    if (x == 48 && y == 454 && no_loop_moving == 0)
    {
        alarm[2] = 10
        no_loop_moving = 1
    }
}
