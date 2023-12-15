if (fade_out == 1)
    image_alpha -= 0.016666666666666666
if (image_alpha < 1)
    image_alpha += fade_speed
else
    instance_destroy(obj_intro_slide_1_new)
