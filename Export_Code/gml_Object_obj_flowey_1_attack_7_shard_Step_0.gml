if live_call()
    return global.live_result;
waiter--
if (waiter <= 0)
    fade_out = 1
if (fade_out == 1)
    image_alpha -= 0.1
if (image_alpha <= 0)
    instance_destroy()
