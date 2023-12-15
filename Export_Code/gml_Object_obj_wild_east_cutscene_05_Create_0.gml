scene = 0
cutscene_timer = 0
cutscene_music = 0
scr_cutscene_start()
scr_radio_fade(0, 0)
if (global.dunes_flag[22] == 0)
{
    instance_create(720, 375, obj_starlo_npc)
    instance_create(700, 375, obj_player_npc)
    obj_player_npc.npc_direction = "down"
    __view_set((9 << 0), 0, 1169)
    instance_create(920, 385, obj_ace_npc)
    instance_create(920, 400, obj_mooch_npc)
    instance_create(440, 390, obj_moray_npc)
    instance_create(720, 680, obj_ed_npc)
}
else
{
    instance_create(700, 375, obj_player_npc)
    obj_player_npc.npc_direction = "down"
    instance_create(720, 600, obj_starlo_npc)
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
    }
    instance_create(730, 420, obj_ace_npc)
    instance_create(750, 375, obj_mooch_npc)
    instance_create(660, 375, obj_moray_npc)
    instance_create(690, 420, obj_ed_npc)
    obj_ace_npc.npc_direction = "up"
    obj_ed_npc.npc_direction = "up"
    obj_moray_npc.npc_direction = "right"
    obj_mooch_npc.npc_direction = "left"
    scene = 21
}
