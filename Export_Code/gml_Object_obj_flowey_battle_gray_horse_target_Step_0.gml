if live_call()
    return global.live_result;
switch scene
{
    case 0:
        image_xscale = lerp(image_xscale, 1.2, 0.1)
        image_yscale = image_xscale
        image_angle = (720 * image_xscale)
        if (image_xscale >= 1.19)
        {
            image_xscale = 1.2
            scene++
        }
        break
    case 1:
        image_xscale = lerp(image_xscale, 1, 0.4)
        image_yscale = image_xscale
        image_angle = (720 * image_xscale)
        if (image_xscale < 1.01)
        {
            image_xscale = 1
            scene++
        }
        break
    case 2:
        instance_destroy()
        audio_play_sound(snd_impact_gunshot, 1, false)
        spawner.hit_flash = 1
        spawner.alarm[1] = 3
        break
}

if (spawner != noone && instance_exists(spawner))
{
    x = spawner.x
    y = spawner.y
}
else
    instance_destroy()
