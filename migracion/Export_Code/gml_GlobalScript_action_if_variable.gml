function action_if_variable(argument0, argument1, argument2) //gml_Script_action_if_variable
{
    var ret = 0
    switch argument2
    {
        case 1:
            ret = argument0 < argument1
            break
        case 2:
            ret = argument0 > argument1
            break
        case 3:
            ret = argument0 <= argument1
            break
        case 4:
            ret = argument0 >= argument1
            break
        default:
            ret = argument0 == argument1
            break
    }

    return ret;
}

