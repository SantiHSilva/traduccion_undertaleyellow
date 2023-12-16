function has_parent(argument0, argument1) //gml_Script_has_parent
{
    var _obj = argument0
    if (!object_exists(_obj))
        _obj = argument0.object_index
    if (_obj == argument1 || object_is_ancestor(_obj, argument1))
        return 1;
    return 0;
}

