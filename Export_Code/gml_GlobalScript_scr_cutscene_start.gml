function scr_cutscene_start() //gml_Script_scr_cutscene_start
{
    global.cutscene = true
    obj_pl.state = gml_Script_scr_frozen_state
    obj_pl.image_index = 0
    obj_pl.image_speed = 0
}

