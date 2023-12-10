var battle_flag = global.snowdin_flag[13]
if (global.snowdin_flag[14] >= 1 || (battle_flag == 0 && global.geno_complete[2] == 0) || battle_flag == 1 || battle_flag == 2)
{
    instance_destroy()
    return;
}
event_inherited()
image_speed = 0
scene = 0
walk_speed = 3
action_sprite = 0
arrived_count = 0
up_sprite = 273
right_sprite = 270
down_sprite = spr_martlet_down
left_sprite = 272
up_sprite_idle = 262
right_sprite_idle = 263
down_sprite_idle = 265
left_sprite_idle = 268
if (global.snowdin_flag[13] == 3)
{
    action_sprite = 0
    sprite_index = down_sprite
    scr_cutscene_start()
    alarm[1] = 30
    x = 220
    y = 280
    obj_pl.x = x
    obj_pl.y = (y + 30)
}
