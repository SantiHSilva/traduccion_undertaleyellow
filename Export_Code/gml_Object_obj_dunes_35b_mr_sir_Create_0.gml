event_inherited()
if (global.geno_complete[3] == 1 && global.route == 3)
{
    instance_destroy()
    return;
}
waiter = 0
if (global.fun_value >= 65 && global.fun_value <= 69)
    return;
instance_destroy()
