if live_call()
    return global.live_result;
object[0] = obj_battle_hp_max_self
object[1] = obj_battle_hp_current_self
object[2] = obj_fight
object[3] = obj_act
object[4] = obj_item
object[5] = obj_mercy
object[6] = obj_ceroba_transformation_p1_blast
object[7] = obj_ceroba_body_pacifist_phase_1
object[8] = obj_petal
object[9] = obj_text_hp
object[10] = obj_ceroba_hair
object[11] = obj_ceroba_cape_2
object[12] = obj_ceroba_phase_2_staff
object[13] = obj_ceroba_legs
object[14] = obj_ceroba_cape_1
object[15] = obj_ceroba_phase_2_head
object[16] = obj_ceroba_sideburn_left
object[17] = obj_ceroba_sideburn_right
object[18] = obj_ceroba_transformation_mask
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
            shader_reset()
        }
    }
}
