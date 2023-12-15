if live_call()
    return global.live_result;
with (obj_ceroba_follower)
{
    up_sprite = 67
    right_sprite = 68
    down_sprite = 66
    left_sprite = 69
    up_sprite_idle = 61
    right_sprite_idle = 65
    down_sprite_idle = 60
    left_sprite_idle = 63
    up_sprite_run = 81
    right_sprite_run = 80
    down_sprite_run = 78
    left_sprite_run = 79
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
    npc_actor = 1161
    if (x != obj_pl.x || y != obj_pl.y)
    {
        var player_distance = (point_distance(x, y, obj_pl.x, obj_pl.y) / 10)
        for (i = 0; i <= npc_move_delay_max; i++)
        {
            x_new[i] = (x + (((obj_pl.x - x) / npc_move_delay_max) * i))
            y_new[i] = (y + (((obj_pl.y - y) / npc_move_delay_max) * i))
            npc_move_current += 1
        }
    }
}
scr_load_palette_shader(0)
palette_index = 0
event_perform(ev_step, ev_step_normal)
