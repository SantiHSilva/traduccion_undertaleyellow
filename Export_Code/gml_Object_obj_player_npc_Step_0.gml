event_inherited()
obj_pl.x = x
obj_pl.y = y
palette_index = obj_pl.palette_index
shader_on = obj_pl.shader_on
if (npc_dynamic_depth == 1)
    depth = (-y)
if (can_walk == 1 && is_walking == 1)
{
    image_speed = 0.2
    if (sprite_index == spr_pl_run_up || sprite_index == spr_pl_run_right || sprite_index == spr_pl_run_left || sprite_index == spr_pl_run_down)
        image_speed = (1/3)
}
