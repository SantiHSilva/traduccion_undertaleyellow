if (image_alpha < 1 && fade == 0)
{
    image_alpha += 0.2
    if (image_alpha > 1)
        image_alpha = 1
}
image_xscale += image_scale_increase
image_yscale += image_scale_increase
y += y_speed
if (image_alpha > 0 && fade == 1)
{
    image_alpha -= 0.2
    if (image_alpha < 0)
        image_alpha = 0
    if (image_alpha == 0)
        instance_destroy()
}
