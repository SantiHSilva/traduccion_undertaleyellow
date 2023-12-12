if (global.flag[7] == 1)
{
    if (solid == 1)
    {
        image_speed = 0
        image_index = 5
        solid = 0
        dr = instance_create(260, 120, obj_doorway)
        with (dr)
        {
            nextroom = 28
            xx = 410
            yy = 860
            image_xscale = 2.5
            image_yscale = 1.25
        }
    }
    return;
}
if keyboard_multicheck_pressed(0)
{
    if (scr_interact() == 1)
    {
        timer = 1
        obj_pl.state = gml_Script_scr_frozen_state
    }
}
if (image_speed == 0 && image_index == 0 && timer == 10)
{
    image_speed = 0.2
    audio_play_sound(snd_tarpdrop, 1, false)
}
if (image_index == 5 && image_speed == 0.2)
{
    image_speed = 0
    image_index = 5
}
if (timer >= 1 && timer < 60)
    timer++
if (timer == 60)
{
    obj_pl.state = gml_Script_scr_normal_state
    global.flag[7] = 1
}
