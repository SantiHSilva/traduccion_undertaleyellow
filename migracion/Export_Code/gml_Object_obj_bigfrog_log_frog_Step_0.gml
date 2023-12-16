if live_call()
    return global.live_result;
var battle_box = obj_dialogue_box_battle_transformation_any
if (spawner_log != noone && instance_exists(spawner_log))
    x = (spawner_log.x + x_offset)
if (image_index == 2 && (!is_jumping))
{
    is_jumping = 1
    audio_play_sound(snd_playerjump, 1, false)
    gravity = 0.4
    vspeed = -7
}
if (is_jumping == 1)
{
    if (vspeed > 5)
        vspeed = 5
    if (y >= ystart && vspeed > 0)
    {
        y = ystart
        gravity = 0
        vspeed = 0
        image_index = 0
        image_speed = 0
        alarm[0] = jump_interval
        is_jumping = 0
    }
}
if (x > battle_box.bbox_right)
    instance_destroy()
