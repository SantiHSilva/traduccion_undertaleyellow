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
actor_follower = -4
party_noloop = 0
with (obj_pl)
    image_alpha = 0
if (room == rm_dunes_13)
{
    x_dest[0] = 420
    y_dest[0] = y
    x_dest[1] = 420
    y_dest[1] = 150
}
if (room == rm_dunes_14)
{
    x_dest[0] = 100
    y_dest[0] = y
    x_dest[1] = 100
    y_dest[1] = 145
}
npc_direction = "up"
actor_speed = 3
axis_override = "x"
end_direction = "up"
walk_collider = 1132
destination_count = 0
can_walk = 1
player_fade_out = 0
scr_load_palette_shader(1)
palette_index = obj_pl.palette_index
shader_on = obj_pl.shader_on
