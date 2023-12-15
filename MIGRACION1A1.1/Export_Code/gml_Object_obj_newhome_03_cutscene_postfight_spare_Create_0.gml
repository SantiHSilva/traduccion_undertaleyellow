if live_call()
    return global.live_result;
layer_set_visible("overlay_2", 1)
with (instance_create(162, 240, obj_ceroba_npc))
{
    action_sprite = 1
    sprite_index = spr_pacifist_ending_ceroba_look
    image_speed = 0
    image_index = 0
}
with (instance_create(227, 297, obj_starlo_npc))
{
    action_sprite = 1
    sprite_index = spr_pacifist_ending_starlo_getup
    image_speed = 0
    image_index = 0
    up_sprite = 207
    right_sprite = 237
    down_sprite = 240
    left_sprite = 236
    up_sprite_idle = 206
    right_sprite_idle = 235
    down_sprite_idle = 230
    left_sprite_idle = 232
    npc_direction = "left"
}
with (instance_create(102, 298, obj_martlet_npc))
{
    action_sprite = 1
    sprite_index = spr_pacifist_ending_martlet_getting_up
    image_speed = 0
    image_index = 0
    npc_direction = "right"
}
with (instance_create(162, 300, obj_player_npc))
    npc_direction = "up"
obj_pl.x = 162
obj_pl.y = 300
scene = -1
cutscene_timer = 0
cutscene_music = 0
overlay_alpha = 0
circle_alpha = 1
white_overlay_radius = 0
clover_overlay_alpha = 0
clover_overlay_alpha_dark = 0
clover_shake_intensity = 0
clover_crawl_speed = 0
scr_cutscene_start()
zen_dialogue_gain = 1
offset_y_current = 0
offset_y_scroll_speed = 0.5
