function cutscene_initialize() //gml_Script_cutscene_initialize
{
    global.cutscene = true
    obj_pl.state = gml_Script_scr_frozen_state
    obj_pl.image_index = 0
    obj_pl.image_speed = 0
    cutscene_advance()
    return 1;
}

