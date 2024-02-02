if (fade_out == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.33
    else
        instance_destroy()
}
