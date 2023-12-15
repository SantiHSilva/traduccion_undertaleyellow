if (image_speed > 0 && image_index >= (image_number - 1))
{
    with (id_bull)
        alarm[1] = warning_alarm
    image_speed = 0
    image_index = (image_number - 1)
}
if (image_speed < 0)
{
    if (image_index != (image_number - 1))
        can_disappear = 1
    if ((image_index <= 0 || image_index == (image_number - 1)) && can_disappear == 1)
    {
        image_speed = 0
        image_index = 0
    }
}
