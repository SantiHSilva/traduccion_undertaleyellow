if live_call()
    return global.live_result;
if (is_green == 1)
{
    image_blend = make_color_rgb(64, 255, 64)
    if place_meeting(x, y, obj_heart_battle_fighting_parent)
    {
        obj_macro_frog_counter.frog_scale = 1.5
        obj_macro_frog_counter.frog_count--
        audio_play_sound(snd_heal, 1, false)
        instance_destroy()
    }
}
