if (global.fun_event[1] == 1)
{
    instance_destroy()
    return;
}
if (global.fun_value >= 9 && global.fun_value <= 18)
    global.fun_event[1] = 1
else
{
    instance_destroy()
    return;
}
