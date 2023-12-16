if ((!instance_exists(obj_heart_death_screen_split)) && no_loop == 0)
{
    alarm[0] = 45
    no_loop = 1
}
if (generate == 1 && image_alpha != 1)
    image_alpha += 0.05
if (image_alpha == 1 && no_loop_2 == 0)
{
    alarm[1] = 30
    no_loop_2 = 1
}
