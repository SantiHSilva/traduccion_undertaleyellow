function scr_distance(argument0, argument1) //gml_Script_scr_distance
{
    var dx = (argument1[0] - argument0[0])
    var dy = (argument1[1] - argument0[1])
    return sqrt(((dx * dx) + (dy * dy)));
}

