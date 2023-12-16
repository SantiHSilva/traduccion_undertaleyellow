if (image_alpha < 1)
{
    x = obj_arcade_mew.x
    y = (obj_arcade_mew.y - 24)
    image_alpha += 0.3
}
else if (vspeed == 0)
{
    audio_play_sound(snd_arc_shoot, 1, false)
    vspeed = (-bul_vsp)
    hspeed = bul_hsp
}
