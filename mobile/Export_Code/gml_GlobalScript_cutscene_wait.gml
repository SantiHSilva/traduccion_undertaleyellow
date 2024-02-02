function cutscene_wait(argument0) //gml_Script_cutscene_wait
{
    cutscene_timer++
    if (cutscene_timer >= (argument0 * 30))
    {
        cutscene_timer = 0
        cutscene_advance()
        return 1;
    }
}

