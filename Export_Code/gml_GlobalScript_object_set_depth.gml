function object_set_depth(argument0, argument1) //gml_Script_object_set_depth
{
    var objID = argument0
    if object_exists(objID)
    {
        with (objID)
            global.__objectID2Depth[id] = argument1
    }
}

