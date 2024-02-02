function cutscene_dialogue() //gml_Script_cutscene_dialogue
{
    scr_text()
    if (!global.dialogue_open)
    {
        cutscene_advance()
        return 1;
    }
    return 0;
}

