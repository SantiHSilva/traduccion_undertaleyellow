if (global.snowdin_flag[14] >= 1 || (global.snowdin_flag[13] == 0 && global.geno_complete[2] == 1) || global.snowdin_flag[13] == 3)
{
    instance_destroy()
    return;
}
event_inherited()
image_speed = 0
scene = 0
walk_speed = 2
action_sprite = 1
arrived_count = 0
up_sprite = 273
right_sprite = 270
down_sprite = spr_martlet_down
left_sprite = 272
up_sprite_idle = 262
right_sprite_idle = 263
down_sprite_idle = 265
left_sprite_idle = 268
if (global.snowdin_flag[13] > 0)
{
    action_sprite = 0
    sprite_index = down_sprite
    scr_cutscene_start()
    alarm[2] = 45
    x = 220
    y = 200
    if (global.route == 3)
    {
        x = 220
        y = 280
    }
    instance_create(x, (y - 20), obj_camera)
    __view_set((9 << 0), 0, 1120)
    obj_pl.x = x
    obj_pl.y = (y + 30)
}
