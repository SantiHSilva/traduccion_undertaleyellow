object[0] = obj_battle_hp_max_self
object[1] = obj_battle_hp_current_self
object[2] = obj_fight
object[3] = obj_act
object[4] = obj_item
object[5] = obj_mercy
var alpha_new = greyscale_overlay_alpha
var alpha_id = shader_alpha
for (var i = 0; i < array_length_1d(object); i++)
{
    with (object[i])
    {
        shader_set(sh_grayscale)
        shader_set_uniform_f(alpha_id, alpha_new)
        draw_self()
        shader_reset()
    }
}
