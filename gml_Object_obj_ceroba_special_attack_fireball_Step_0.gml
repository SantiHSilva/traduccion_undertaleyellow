if live_call()
    return global.live_result;
var battle_box = 3153
if (y > battle_box.bbox_bottom)
{
    image_alpha -= 0.2
    if (image_alpha <= 0)
        instance_destroy()
}
else if (image_alpha < 1)
    image_alpha += 0.2
