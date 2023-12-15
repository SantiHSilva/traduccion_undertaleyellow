function sprite_mirror(argument0, argument1) //gml_Script_sprite_mirror
{
    if argument0
    {
        var _bb = bbox_left
        image_xscale *= -1
        x -= (bbox_left - _bb)
    }
    if argument1
    {
        _bb = bbox_top
        image_yscale *= -1
        y -= (bbox_top - _bb)
    }
}

