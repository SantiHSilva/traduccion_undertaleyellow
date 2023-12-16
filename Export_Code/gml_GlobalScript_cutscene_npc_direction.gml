function cutscene_npc_direction(argument0, argument1) //gml_Script_cutscene_npc_direction
{
    if instance_exists(argument0)
    {
        with (argument0)
        {
            npc_direction = argument1
            with (other)
                cutscene_advance()
            return 1;
        }
    }
    return 0;
}

