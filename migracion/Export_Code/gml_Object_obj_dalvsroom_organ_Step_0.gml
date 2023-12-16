if (global.route != 3)
{
    if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
        waiter = 1
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            portrait = 0
            sndfnt = 99
            message[0] = "* (Es un órgano.)"
            message[1] = "* (De tipo musical.)"
        }
        waiter++
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
        waiter++
    if (waiter == 3)
    {
        waiter = 0
        obj_pl.alarm[0] = 1
    }
}
else
{
    if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
        waiter = 1
    if (waiter == 1)
    {
        scr_text()
        with (msg)
        {
            portrait = 0
            sndfnt = 99
            message[0] = "* (Es un órgano.)"
            message[1] = "* (Parece horriblemente desafinado.)"
        }
        waiter++
    }
    if (waiter == 2 && (!instance_exists(obj_dialogue)))
        waiter++
    if (waiter == 3)
    {
        waiter = 0
        obj_pl.alarm[0] = 1
    }
}
