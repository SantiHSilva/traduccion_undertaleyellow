var flDelay = flash_delay
if (image_alpha == 0 && no_loop == 0)
{
    alarm[0] = flDelay
    no_loop = 1
}
if (image_alpha == 1 && no_loop == 0 && flash_count < 3)
{
    alarm[0] = flDelay
    no_loop = 1
}
if (flash_count == 3 && no_loop_2 == 0)
{
    alarm[1] = flDelay
    no_loop_2 = 1
}
