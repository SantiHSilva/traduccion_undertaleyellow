event_inherited()
depth = (-y)
up_sprite = 24
right_sprite = 21
down_sprite = 23
left_sprite = 22
up_sprite_idle = 24
right_sprite_idle = 21
down_sprite_idle = 23
left_sprite_idle = 22
if (global.route == 3)
{
    up_sprite = 24
    right_sprite = 2918
    down_sprite = 2226
    left_sprite = 3704
    up_sprite_idle = 24
    right_sprite_idle = 2918
    down_sprite_idle = 2226
    left_sprite_idle = 3704
}
action_sprite = 0
scene = 0
with (obj_pl)
    image_alpha = 0
npc_direction = "down"
sprite_index = obj_pl.sprite_index
actor_speed = 3
axis_override = "nothing"
if (room == rm_dunes_20)
    end_direction = "right"
else
    end_direction = "left"
walk_collider = 1680
destination_count = 0
can_walk = 1
player_fade_out = 0
if (room == rm_dunes_20)
{
    x_dest[0] = 280
    y_dest[0] = 180
}
else
{
    x_dest[0] = 320
    y_dest[0] = 340
}
scr_load_palette_shader(1)
palette_index = obj_pl.palette_index
shader_on = obj_pl.shader_on
