function action_set_vspeed(argument0) //gml_Script_action_set_vspeed
{
    var val = argument0
    if global.__argument_relative
        val += vspeed
    vspeed = val
}

