if (global.route != 2)
{
    instance_destroy()
    return;
}
if (global.hotland_flag[10] > 0)
{
    instance_destroy()
    return;
}
if (global.hotland_flag[3] == 1)
{
    instance_destroy()
    instance_create(x, y, obj_newhome_03_cutscene_postfight_spare)
    return;
}
else if (global.hotland_flag[3] == 2)
{
    instance_destroy()
    instance_create(x, y, obj_newhome_03_cutscene_postfight_kill)
    return;
}
with (instance_create(163, 239, obj_ceroba_npc))
    npc_direction = "up"
with (instance_create(163, 287, obj_starlo_npc))
{
    npc_direction = "up"
    up_sprite = 207
    right_sprite = 237
    down_sprite = 240
    left_sprite = 236
    up_sprite_idle = 206
    right_sprite_idle = 235
    down_sprite_idle = 230
    left_sprite_idle = 232
}
scene = 0
cutscene_timer = 0
cutscene_music = 0
starlo_overlay = 0
