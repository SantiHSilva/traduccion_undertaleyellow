function action_set_hspeed(argument0) //gml_Script_action_set_hspeed
{
    var val = argument0
    if global.__argument_relative
        val += hspeed
    hspeed = val
}

