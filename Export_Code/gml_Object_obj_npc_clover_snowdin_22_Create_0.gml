event_inherited()
up_sprite = 47
right_sprite = spr_pl_right_snowdin
down_sprite = 45
left_sprite = 42
up_sprite_idle = 47
right_sprite_idle = 43
down_sprite_idle = 45
left_sprite_idle = 42
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
sprite_index = right_sprite
depth = obj_pl.depth
action_sprite = 0
scene = 0
with (obj_pl)
    image_alpha = 0
x_dest[0] = 330
y_dest[0] = 70
actor_speed = 3
axis_override = "x"
end_direction = "right"
walk_collider = 1133
destination_count = 0
if (global.route == 3)
{
    scr_load_palette_shader(1)
    palette_index = obj_pl.palette_index
    shader_on = obj_pl.shader_on
}
