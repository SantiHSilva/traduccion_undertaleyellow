if (scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_cutscene_start()
    audio_play_sound(snd_mansion_slidedoor_open, 1, false)
    image_speed = 1
}
