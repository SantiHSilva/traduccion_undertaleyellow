x -= move_speed
if (bbox_right < 0 && no_loop == 0)
{
    instance_create(0, 0, obj_battle_fade_out_screen)
    no_loop = 1
}
