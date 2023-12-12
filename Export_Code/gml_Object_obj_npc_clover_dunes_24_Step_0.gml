if global.dialogue_open
    return;
event_inherited()
if (npc_arrived == 1)
{
    can_walk = 0
    if (instance_exists(obj_martlet_npc) && obj_martlet_npc.npc_arrived != 1)
        return;
    npc_arrived = 0
    alarm[0] = 30
}
obj_pl.x = x
obj_pl.y = y
depth = (obj_pl.depth - 1)
if (player_fade_out == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.1
    else if (!alarm[0])
        alarm[0] = 15
}
