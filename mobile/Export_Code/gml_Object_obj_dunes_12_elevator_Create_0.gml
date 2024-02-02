elevator_menu_open = 0
elevator_solution = "none"
timer = 0
if (global.dunes_flag[4] >= 2)
    sprite_index = spr_dunes_13_elevator_fixed
if (obj_pl.x > 320)
{
    image_index = (image_number - 1)
    image_speed = -0.3
    obj_pl.image_alpha = 1
    audio_play_sound(snd_elevator_open, 1, false)
}
else
    image_speed = 0
