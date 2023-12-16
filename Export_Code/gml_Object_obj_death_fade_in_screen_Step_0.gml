image_alpha -= 0.15
if (image_alpha <= 0 && no_loop == 0)
{
    if (room != rm_battle && global.party_member == -4)
        global.flowey_death_pop = 1
    else
        scr_cutscene_end()
    instance_destroy()
    no_loop = 1
}
