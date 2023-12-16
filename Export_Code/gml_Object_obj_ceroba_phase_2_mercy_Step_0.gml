if live_call()
    return global.live_result;
var player_soul = obj_heart_battle_fighting_parent
button_pressed = 0
if (fade_in == 0)
{
    image_alpha = lerp(image_alpha, 0, 0.1)
    if (image_alpha < 0.01)
        image_alpha = 0
}
else if (fade_in == 1)
{
    image_alpha = lerp(image_alpha, 1, 0.1)
    if (image_alpha > 0.99)
    {
        image_alpha = 1
        if place_meeting(x, y, player_soul)
        {
            if keyboard_multicheck_pressed(0)
            {
                audio_play_sound(snd_confirm, 1, false)
                button_pressed = 1
                image_index = 0
                return;
            }
            image_index = 1
        }
        else
            image_index = 0
    }
}
