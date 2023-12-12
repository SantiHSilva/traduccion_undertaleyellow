if live_call()
    return global.live_result;
if (fade_out == 1)
{
    if (image_alpha > 0.2)
        image_alpha -= 0.2
    else
        instance_destroy()
}
