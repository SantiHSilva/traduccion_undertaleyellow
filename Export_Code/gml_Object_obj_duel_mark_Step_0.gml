if cutscene_key_prompt()
{
    if (fade_out == 0)
        fade_out = 1
}
if (fade_out == 1)
{
    if (image_alpha > 1)
        image_alpha -= 0.15
    else
        instance_destroy()
}
