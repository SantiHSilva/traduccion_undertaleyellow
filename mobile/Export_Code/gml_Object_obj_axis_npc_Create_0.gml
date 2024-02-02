event_inherited()
up_sprite = 488
right_sprite = 487
down_sprite = 484
left_sprite = 486
up_sprite_idle = 488
right_sprite_idle = 487
down_sprite_idle = 484
left_sprite_idle = 486
action_sprite = 0
if (global.geno_complete[3] == 1 && global.sworks_flag[3] >= 1)
{
    up_sprite = 2592
    right_sprite = 383
    down_sprite = 2749
    left_sprite = 3415
    up_sprite_idle = 2592
    right_sprite_idle = 383
    down_sprite_idle = 2749
    left_sprite_idle = 3415
}
scene = 0
x_dest[0] = x
y_dest[0] = y
actor_speed = 3
axis_override = "nothing"
end_direction = "left"
walk_collider = -4
npc_voice_sfx = 111
image_speed = (1/3)
