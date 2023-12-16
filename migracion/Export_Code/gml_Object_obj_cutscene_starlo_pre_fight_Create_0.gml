scene = 0
cutscene_timer = 0
cutscene_music = 0
audio_sound_gain(mus_wind, 1, 0)
wind_sound = audio_play_sound(mus_wind, 1, true)
audio_sound_pitch(wind_sound, 0.5)
if (global.route == 3)
{
    scene = -1
    return;
}
if (global.dunes_flag[39] == 1)
{
    scene = -1
    return;
}
if (global.dunes_flag[24] == 2)
{
    scene = -1
    instance_create(0, 0, obj_cutscene_starlo_post_fight_neutral)
    return;
}
else if (global.dunes_flag[24] == 1 && global.route == 1)
{
    scene = -1
    instance_create(0, 0, obj_cutscene_starlo_post_fight_neutral_alive)
    return;
}
var actor_starlo = instance_create(160, 80, obj_starlo_npc)
with (actor_starlo)
{
    up_sprite = 207
    right_sprite = 237
    down_sprite = 240
    left_sprite = 236
    up_sprite_idle = 206
    right_sprite_idle = 235
    down_sprite_idle = 230
    left_sprite_idle = 232
}
if (global.dunes_flag[24] != 0)
{
    scene = 17
    actor_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc)
    actor_ceroba = instance_create(obj_pl.x, (obj_pl.y + 80), obj_ceroba_npc)
    actor_ceroba.npc_direction = "up"
    __view_set((9 << 0), 0, actor_starlo)
}
else
{
    actor_starlo.action_sprite = 1
    actor_starlo.sprite_index = spr_starlo_up_wind
    actor_starlo.image_speed = 0.25
}
