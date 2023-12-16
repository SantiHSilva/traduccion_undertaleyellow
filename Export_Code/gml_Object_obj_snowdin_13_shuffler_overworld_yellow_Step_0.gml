if (move_right == 1)
{
    switch x
    {
        case 130:
            destination = 160
            move_right = 0
            break
        case 160:
            destination = 190
            move_right = 0
            break
    }

    active = true
}
if (move_left == 1)
{
    switch x
    {
        case 160:
            destination = 130
            move_left = 0
            break
        case 190:
            destination = 160
            move_left = 0
            break
    }

    active = true
}
if (active == true)
{
    if (x < destination)
        x += shuffle_speed
    else if (x > destination)
        x -= shuffle_speed
    else
        active = false
}
