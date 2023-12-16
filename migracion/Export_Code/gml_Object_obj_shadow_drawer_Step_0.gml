if live_call()
    return global.live_result;
if (!instance_exists(shadow_actor))
    instance_destroy()
with (shadow_actor)
{
    if place_meeting(x, y, obj_shadow_collider)
        other.shadow_active = 1
    else
        other.shadow_active = 0
}
if (shadow_active == 1)
{
    if (reverse == 0)
    {
        if (draw_alpha < 0.5)
            draw_alpha += 0.1
    }
    else if (draw_alpha > 0)
        draw_alpha -= 0.1
}
else if (reverse == 0)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.1
}
else if (draw_alpha < 0.5)
    draw_alpha += 0.1
shadow_actor.visible = false
depth = (shadow_actor.depth - 1)
