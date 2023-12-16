function cutscene_npc_path_start(argument0, argument1, argument2) //gml_Script_cutscene_npc_path_start
{
    with (argument0)
    {
        if (path_position >= 1)
        {
            path_position = 0
            path_end()
            with (other)
                cutscene_advance()
            return 1;
        }
        if (path_index != argument1)
            path_start(argument1, argument2, path_action_stop, 0)
    }
}

