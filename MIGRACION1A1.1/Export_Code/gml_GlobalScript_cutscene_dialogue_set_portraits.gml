function cutscene_dialogue_set_portraits() //gml_Script_cutscene_dialogue_set_portraits
{
    with (msg)
    {
        for (var i = 0; i < argument_count; i++)
            prt[i] = argument[i]
    }
    return 1;
}

