if (global.current_hp_enemy <= 0)
    fade_out = 1
if (fade_out == 1)
{
    if (overlay_alpha < 1)
        overlay_alpha += 0.15
    else
        overlay_alpha = 1
}
