if instance_exists(obj_player_npc)
    active_object = obj_player_npc
else
    active_object = obj_pl
if (active_object.x <= 308)
    overlay_draw_enabled = 1
else
    overlay_draw_enabled = 0
if (overlay_draw_enabled == 1)
{
    if (overlay_draw_alpha < 1)
        overlay_draw_alpha += 0.05
}
else if (overlay_draw_alpha > 0)
    overlay_draw_alpha -= 0.05
depth = (active_object.depth - 5)
