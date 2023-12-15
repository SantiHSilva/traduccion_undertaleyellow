if (global.route != 1 || instance_exists(obj_credits_final_neutral))
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
cutscene_music = snd_ceroba_staff_lock
clover_shake = 0
draw_alpha = 0
draw_alpha_white = 0
draw_clover_yellow_alpha = 0
global.player_can_run = 0
if (global.hotland_flag[12] == 1)
{
    scene = 60
    obj_pl.image_alpha = 0
    obj_pl.x = obj_martlet_npc.x
    obj_pl.y = (obj_martlet_npc.y + 60)
    instance_create(obj_martlet_npc.x, (obj_martlet_npc.y + 20), obj_flowey_npc)
    obj_flowey_npc.image_alpha = 0
    instance_destroy(obj_martlet_npc)
    draw_alpha = 1
    cutscene_music = audio_play_sound(mus_missing_inaction, 1, false)
    audio_sound_set_track_position(cutscene_music, 15)
    audio_sound_gain(cutscene_music, 0, 0)
    audio_sound_gain(cutscene_music, 1, 500)
}
