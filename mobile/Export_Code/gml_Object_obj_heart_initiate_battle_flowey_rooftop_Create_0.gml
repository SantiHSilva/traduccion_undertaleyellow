if live_call()
    return global.live_result;
flash_count = 0
flash_delay = 4
start_delay = 5
no_loop = 0
no_loop_2 = 0
draw_player_sprite = 1
image_alpha = 0
image_speed = 0
alarm[0] = 1
no_loop = 1
if (global.sound_carry_overworld == 1)
    return;
with (obj_radio)
{
    music_position = audio_sound_get_track_position(current_song)
    audio_stop_sound(bgm)
}
