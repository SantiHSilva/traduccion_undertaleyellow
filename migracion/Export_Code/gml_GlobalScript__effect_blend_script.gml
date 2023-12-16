function _effect_blend() constructor //gml_Script__effect_blend
{
    g_Blend = 1
    surf_blend = -1
    surf_width = 1
    surf_height = 1
    clonedcam = -1
    tempcam = -1
    function anon__effect_blend_gml_GlobalScript__effect_blend_script_159__effect_blend_gml_GlobalScript__effect_blend_script() //gml_Script_anon__effect_blend_gml_GlobalScript__effect_blend_script_159__effect_blend_gml_GlobalScript__effect_blend_script
    {
        if (clonedcam == -1)
            clonedcam = camera_create()
        var currcam = camera_get_active()
        camera_copy_transforms(clonedcam, currcam)
    }

    function anon__effect_blend_gml_GlobalScript__effect_blend_script_335__effect_blend_gml_GlobalScript__effect_blend_script() //gml_Script_anon__effect_blend_gml_GlobalScript__effect_blend_script_335__effect_blend_gml_GlobalScript__effect_blend_script
    {
        if surface_exists(surf_blend)
        {
            surface_free(surf_blend)
            surf_blend = -1
        }
        if (tempcam != -1)
        {
            camera_destroy(tempcam)
            tempcam = -1
        }
        if (clonedcam != -1)
        {
            camera_destroy(clonedcam)
            clonedcam = -1
        }
    }

    function anon__effect_blend_gml_GlobalScript__effect_blend_script_662__effect_blend_gml_GlobalScript__effect_blend_script() //gml_Script_anon__effect_blend_gml_GlobalScript__effect_blend_script_662__effect_blend_gml_GlobalScript__effect_blend_script
    {
        self.cleanup()
    }

    function anon__effect_blend_gml_GlobalScript__effect_blend_script_708__effect_blend_gml_GlobalScript__effect_blend_script() //gml_Script_anon__effect_blend_gml_GlobalScript__effect_blend_script_708__effect_blend_gml_GlobalScript__effect_blend_script
    {
        if (event_type != 8 || event_number != 0)
        {
        }
        if (!gmAffectsSingleLayerOnly)
            return;
        var _draw_surface = surface_get_target()
        var _draw_width = surface_get_width(_draw_surface)
        var _draw_height = surface_get_height(_draw_surface)
        if (!surface_exists(surf_blend))
            surf_blend = surface_create(_draw_width, _draw_height)
        else if (surf_width != _draw_width || surf_height != _draw_height)
            surface_resize(surf_blend, _draw_width, _draw_height)
        surf_width = _draw_width
        surf_height = _draw_height
        self.CloneCurrCam()
        surface_set_target(surf_blend)
        draw_clear_alpha(c_black, 0)
        camera_apply(clonedcam)
    }

    function anon__effect_blend_gml_GlobalScript__effect_blend_script_1530__effect_blend_gml_GlobalScript__effect_blend_script() //gml_Script_anon__effect_blend_gml_GlobalScript__effect_blend_script_1530__effect_blend_gml_GlobalScript__effect_blend_script
    {
        if (event_type != 8 || event_number != 0)
        {
        }
        if (!gmAffectsSingleLayerOnly)
            return;
        surface_reset_target()
        if (tempcam == -1)
            tempcam = camera_create_view(0, 0, surf_width, surf_height)
        else
            camera_set_view_size(tempcam, surf_width, surf_height)
        camera_apply(tempcam)
        gpu_push_state()
        gpu_set_blendmode(g_Blend)
        draw_surface(surf_blend, 0, 0)
        gpu_pop_state()
        camera_apply(clonedcam)
    }

}

