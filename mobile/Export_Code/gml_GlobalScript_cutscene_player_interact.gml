function cutscene_player_interact(argument0) //gml_Script_cutscene_player_interact
{
    if instance_exists(argument0)
    {
        with (argument0)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                with (other)
                    cutscene_advance()
                return 1;
            }
        }
    }
    return 0;
}

