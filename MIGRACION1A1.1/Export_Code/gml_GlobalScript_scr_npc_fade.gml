function scr_npc_fade() //gml_Script_scr_npc_fade
{
    solid = 0
    if (image_alpha > 0)
        image_alpha -= 0.2
    if (image_alpha == 0 && fade_kill == 1)
        instance_destroy()
}

