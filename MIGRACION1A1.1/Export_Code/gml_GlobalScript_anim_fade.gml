function anim_fade(argument0) //gml_Script_anim_fade
{
    aspd = argument0
    if (image_alpha < 1)
        image_alpha += aspd
}

