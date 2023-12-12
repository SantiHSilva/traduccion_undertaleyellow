if live_call()
    return global.live_result;
object[0] = obj_battle_hp_max_self
object[1] = obj_battle_hp_current_self
object[2] = obj_fight
object[3] = obj_act
object[4] = obj_item
object[5] = obj_mercy
object[6] = obj_martlet_final_hair
object[7] = obj_martlet_final_wing
object[8] = obj_martlet_final_head
object[9] = obj_martlet_final_base
object[10] = obj_text_hp
object[11] = obj_martlet_final_leg_back
object[12] = obj_martlet_final_leg_front
object[13] = obj_martlet_final_talon_back
object[14] = obj_martlet_final_talon_front
var alpha_new = starlo_take_aim_overlay_alpha
var alpha_id = shader_alpha
for (var i = 0; i < array_length_1d(object); i++)
{
    if instance_exists(object[i])
    {
        with (object[i])
        {
            shader_set(sh_grayscale)
            shader_set_uniform_f(alpha_id, alpha_new)
            draw_self()
            if (object_index == obj_martlet_final_wing)
            {
                if (!surface_exists(wing_surf))
                    wing_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface))
                surface_set_target(wing_surf)
                draw_clear_alpha(c_black, 0)
                draw_sprite_ext(spr_martlet_final_wing_mask, image_index, x, y, image_xscale, 1, image_angle, c_white, image_alpha)
                draw_set_blend_mode_ext(7, 8)
                draw_sprite_tiled(space_test, 0, 0, 0)
                draw_set_blend_mode(0)
                surface_reset_target()
                draw_surface(wing_surf, 0, 0)
            }
            shader_reset()
        }
    }
}
