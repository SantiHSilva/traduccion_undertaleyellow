function cutscene_end() //gml_Script_cutscene_end
{
    if instance_exists(obj_player_npc)
        instance_destroy(obj_player_npc)
    scr_cutscene_end()
    instance_destroy()
}

