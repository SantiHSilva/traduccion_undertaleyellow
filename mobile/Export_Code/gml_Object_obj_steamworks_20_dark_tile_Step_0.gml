if (global.sworks_flag[11] == 0 && obj_pl.x <= (x - 100))
    fade_out = 1
if (fade_out && image_alpha < 1)
{
    image_alpha += 0.15
    if (image_alpha >= 1)
        global.sworks_flag[11] = 1
}
