if (keyboard_multicheck_pressed(0) && scr_interact() == 1)
{
    audio_play_sound(snd_mainmenu_select, 20, false)
    instance_create((__view_get((0 << 0), 0) + 8), (__view_get((1 << 0), 0) + 8), obj_dimensional_box_screen_overworld)
    instance_create((obj_dimensional_box_screen_overworld.x + 20), (obj_dimensional_box_screen_overworld.y + 37), obj_heart_dimensional_box_overworld)
    scr_cutscene_start()
}
