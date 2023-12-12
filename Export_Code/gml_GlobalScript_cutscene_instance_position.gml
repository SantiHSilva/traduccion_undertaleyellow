function cutscene_instance_position(argument0, argument1, argument2, argument3) //gml_Script_cutscene_instance_position
{
    if (argument1 == "x")
    {
        if (argument2 == ">")
        {
            if (argument0.x >= argument3)
            {
                cutscene_advance()
                return 1;
            }
        }
        if (argument2 == "<")
        {
            if (argument0.x <= argument3)
            {
                cutscene_advance()
                return 1;
            }
        }
    }
    if (argument1 == "y")
    {
        if (argument2 == ">")
        {
            if (argument0.y >= argument3)
            {
                cutscene_advance()
                return 1;
            }
        }
        if (argument2 == "<")
        {
            if (argument0.y <= argument3)
            {
                cutscene_advance()
                return 1;
            }
        }
    }
    return 0;
}

