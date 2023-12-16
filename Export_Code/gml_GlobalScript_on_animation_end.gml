function on_animation_end() //gml_Script_on_animation_end
{
    if (image_index >= (image_number - image_speed))
        return 1;
    else
        return 0;
}

