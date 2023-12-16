arcade_intro_alpha -= 0.2
if (arcade_intro_alpha < 0)
{
    arcade_intro = 0
    instance_create(160, 185, obj_arcade_mew)
    arcade_start_screen = 1
    alarm[1] = 45
    return;
}
alarm[0] = 15
