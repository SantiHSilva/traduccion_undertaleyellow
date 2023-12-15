draw_alpha = lerp(draw_alpha, target_alpha, 0.1)
if (target_alpha != 0 && noloop == 0)
{
    if instance_exists(obj_heart_battle_fighting_parent)
        noloop = 1
}
if (noloop == 1)
{
    if (!instance_exists(obj_heart_battle_fighting_parent))
    {
        noloop = 0
        target_alpha = 0
    }
}
image_total += 2
