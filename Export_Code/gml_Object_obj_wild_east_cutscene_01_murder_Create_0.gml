scene = 0
cutscene_timer = 0
cutscene_music = 0
cutscene_duel_timer = 0
if (global.dunes_flag[40] == 1)
{
    instance_destroy()
    return;
}
instance_create(720, 420, obj_starlo_npc)
with (obj_starlo_npc)
{
    up_sprite = 207
    right_sprite = 237
    down_sprite = 240
    left_sprite = 236
    up_sprite_idle = 206
    right_sprite_idle = 235
    down_sprite_idle = 230
    left_sprite_idle = 232
    npc_direction = "up"
}
background_fade_alpha = 0
