up_sprite = spr_rals_up
right_sprite = spr_rals_right
down_sprite = spr_rals_down
left_sprite = spr_rals_left
up_sprite_idle = 262
right_sprite_idle = 263
down_sprite_idle = 265
left_sprite_idle = 268
can_animate = 0
npc_move_delay_max = 10
npc_move_current = 0
last_player_dir = obj_pl.direction
for (var i = npc_move_delay_max; i > 0; i--)
{
    x_new[i] = -1
    y_new[i] = -1
    dir_new[i] = -1
}
image_index = 0
image_speed = 0
