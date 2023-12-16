if (global.sworks_flag[21] == 1)
{
    instance_destroy()
    return;
}
if (global.route != 2 && global.party_member == -4)
{
    instance_destroy()
    instance_create(x, y, obj_steamworks_31_cutscene_neutral)
    return;
}
with (obj_determination)
    image_alpha = 0
cutscene_timer = 0
scene = 0
