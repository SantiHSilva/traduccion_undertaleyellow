scene = 0
cutscene_timer = 0
steam_audio_noloop = 0
if (global.route == 1 || global.route == 3)
{
    instance_create(0, 0, obj_steamworks_07_controller_neutral)
    instance_destroy()
    return;
}
if (global.sworks_flag[8] == 1)
{
    instance_create(780, 120, obj_ceroba_npc)
    scene = 7
    return;
}
if (global.sworks_flag[8] == 2)
{
    with (obj_steamworks_steam_blaster)
        instance_destroy()
    instance_destroy()
}