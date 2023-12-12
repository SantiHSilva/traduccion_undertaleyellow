if (global.fun_event[0] == 1)
{
    instance_destroy()
    return;
}
if (global.fun_value >= 2 && global.fun_value <= 10)
{
    global.fun_event[0] = 1
    instance_destroy(103617)
}
else
    instance_destroy()
