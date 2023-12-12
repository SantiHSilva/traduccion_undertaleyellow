if live_call()
    return global.live_result;
up_sprite = 273
right_sprite = 270
down_sprite = 274
left_sprite = 272
up_sprite_idle = 262
right_sprite_idle = 263
down_sprite_idle = 265
left_sprite_idle = 268
up_sprite_run = 277
right_sprite_run = 278
down_sprite_run = 280
left_sprite_run = 279
sprites_water_override = 0
npc_move_delay_max = 10
npc_move_current = 0
last_player_dir = obj_pl.direction
for (var i = npc_move_delay_max; i > 0; i--)
{
    x_new[i] = -1
    y_new[i] = -1
    dir_new[i] = obj_pl.direction
    sprinting_new[i] = 0
}
image_index = 0
image_speed = 0
npc_reset = 0
is_talking = 0
follower_idle = 1
npc_actor = 1163
if (x != obj_pl.x || y != obj_pl.y)
{
    var x_dist = (obj_pl.x - x)
    var y_dist = (obj_pl.y - y)
    for (i = 0; i <= npc_move_delay_max; i++)
    {
        x_new[i] = (x + (((obj_pl.x - x) / npc_move_delay_max) * i))
        y_new[i] = (y + (((obj_pl.y - y) / npc_move_delay_max) * i))
        dir_new[i] = obj_pl.direction
        npc_move_current += 1
    }
}
scr_load_palette_shader(0)
palette_index = 0
event_perform(ev_step, ev_step_normal)
