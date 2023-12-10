function cutscene_dialogue_chujin() //gml_Script_cutscene_dialogue_chujin
{
    if (!instance_exists(obj_dialogue_chujin_tapes))
        msg = instance_create(x, y, obj_dialogue_chujin_tapes)
    if (!global.dialogue_open)
    {
        cutscene_advance()
        return 1;
    }
    return 0;
}

