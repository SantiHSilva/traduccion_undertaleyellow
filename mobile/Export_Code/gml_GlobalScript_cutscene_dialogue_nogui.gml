function cutscene_dialogue_nogui() //gml_Script_cutscene_dialogue_nogui
{
    if (!instance_exists(obj_dialogue_nongui))
        msg = instance_create_depth(x, y, -9999, obj_dialogue_nongui)
    if (!global.dialogue_open)
    {
        cutscene_advance()
        return 1;
    }
    return 0;
}

