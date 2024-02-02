scene = 0
cutscene_timer = 0
steam_audio_noloop = 0
pacifist_skip = 0
if (global.route == 1 || global.route == 3)
{
    pacifist_skip = 1
    scene = 7
}
if (global.sworks_flag[53] == 1)
{
    instance_create(860, 120, obj_ceroba_npc)
    scene = 7
    return;
}
if (global.sworks_flag[53] == 2)
{
    with (obj_steamworks_steam_blaster)
        instance_destroy()
    instance_destroy()
}
