alarm[0] = 30
if (global.dunes_flag[20] != 1 || global.dunes_flag[21] >= 1)
{
    instance_destroy()
    return;
}
image_speed = 0
is_talking = 0
scene = -1
timer = 0
scr_cutscene_start()
obj_pl.direction = 270
instance_create(obj_pl.x, obj_pl.y, obj_player_npc)
global.radio_pause = 1
