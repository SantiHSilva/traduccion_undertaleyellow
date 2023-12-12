if (!instance_exists(obj_bowll_body_a))
    instance_destroy()
if (obj_bowll_body_a.animating == 0)
{
    instance_destroy()
    return;
}
image_alpha = global.image_alpha_enemy_attacking
