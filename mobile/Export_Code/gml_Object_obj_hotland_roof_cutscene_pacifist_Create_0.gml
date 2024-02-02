if live_call()
    return global.live_result;
global.player_can_run = 0
if (global.route != 2 || global.hotland_flag[1] >= 1)
{
    instance_destroy()
    return;
}
if (global.hotland_flag[3] > 0 && route == 2)
{
    instance_destroy()
    return;
}
with (instance_create_depth(205, 300, 0, obj_martlet_npc))
{
    can_walk = 0
    up_sprite = 3617
    right_sprite = 3143
    down_sprite = 2486
    left_sprite = 3622
    up_sprite_idle = 2324
    right_sprite_idle = 3294
    down_sprite_idle = 3564
    left_sprite_idle = 1469
    npc_direction = "up"
}
scene = 0
cutscene_timer = 0
cutscene_music = 0
draw_alpha = 0
draw_alpha_white = 0
draw_clover_yellow_alpha = 0
