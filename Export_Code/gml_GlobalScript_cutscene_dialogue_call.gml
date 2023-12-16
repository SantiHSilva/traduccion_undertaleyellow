function cutscene_dialogue_call(argument0) //gml_Script_cutscene_dialogue_call
{
    scr_text()
    script_execute(argument0)
    if (!global.dialogue_open)
    {
        cutscene_advance()
        return 1;
    }
    return 0;
}

