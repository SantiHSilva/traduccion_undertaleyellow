function cutscene_dialogue_axis_hindered() //gml_Script_cutscene_dialogue_axis_hindered
{
    if (!instance_exists(obj_dialogue_axis_hindered))
        msg = instance_create(x, y, obj_dialogue_axis_hindered)
    if (!global.dialogue_open)
    {
        cutscene_advance()
        return 1;
    }
    return 0;
}

