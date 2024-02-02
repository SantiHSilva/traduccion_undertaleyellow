event_inherited()
up_sprite = spr_martlet_up
right_sprite = spr_martlet_right
down_sprite = spr_martlet_down
left_sprite = spr_martlet_left
up_sprite_idle = 262
right_sprite_idle = 263
down_sprite_idle = 265
left_sprite_idle = 268
action_sprite = 0
scene = 0
if instance_exists(obj_martlet_follower)
{
    switch obj_martlet_follower.direction
    {
        case 0:
            npc_direction = "right"
            sprite_index = right_sprite
            break
        case 90:
            npc_direction = "up"
            sprite_index = up_sprite
            break
        case 180:
            npc_direction = "left"
            sprite_index = left_sprite
            break
        case 270:
            npc_direction = "down"
            sprite_index = down_sprite
            break
    }

}
x_dest[0] = x
y_dest[0] = y
actor_speed = 3
axis_override = "nothing"
end_direction = "left"
walk_collider = -4
npc_voice_sfx = 102
scr_load_palette_shader(0)
palette_index = 0
