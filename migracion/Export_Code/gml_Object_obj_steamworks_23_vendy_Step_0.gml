if (scr_interact() && keyboard_multicheck_pressed(0))
{
    if (global.geno_complete[3] == 0)
        scr_summon_shop("Steamworks Vendy")
    else
        scr_summon_shop("Steamworks Vendy Geno")
}