function cutscene_fade_in(argument0, argument1) //gml_Script_cutscene_fade_in
{
    if (!instance_exists(argument0))
        return;
    var fade_speed = clamp(argument1, 0.1, 10)
    if (argument0.image_alpha < 1)
        argument0.image_alpha += (argument1 / 10)
    else
    {
        cutscene_advance()
        return 1;
    }
    return 0;
}

