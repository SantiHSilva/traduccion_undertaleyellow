function cutscene_npc_walk() //gml_Script_cutscene_npc_walk
{
    if (!instance_exists(argument[0]))
        return;
    with (argument[0])
    {
        can_walk = 1
        if (x_dest[0] != argument[1] || y_dest[0] != argument[2])
        {
            x_dest = 0
            y_dest = 0
            x_dest[0] = argument[1]
            y_dest[0] = argument[2]
            axis_override = argument[4]
            end_direction = argument[5]
            if (argument_count > 6)
                walk_collider = argument[6]
            if (argument_count > 7)
                x_dest[1] = argument[7]
            if (argument_count > 8)
                y_dest[1] = argument[8]
            if (argument_count > 9)
                x_dest[2] = argument[9]
            if (argument_count > 10)
                y_dest[2] = argument[10]
            if (x != x_dest[(array_length_1d(x_dest) - 1)] || y != y_dest[(array_length_1d(y_dest) - 1)])
                npc_arrived = 0
        }
        actor_speed = argument[3]
        if (npc_arrived == 1)
        {
            can_walk = 0
            npc_arrived = 0
            with (other)
                cutscene_advance()
            return 1;
        }
    }
    return 0;
}

