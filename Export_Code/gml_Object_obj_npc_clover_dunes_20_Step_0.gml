if global.dialogue_open
    return;
event_inherited()
if (npc_arrived == 1)
{
    npc_arrived = 0
    can_walk = 0
    alarm[0] = 30
}
obj_pl.x = x
obj_pl.y = y
if (player_fade_out == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.1
    else if (!alarm[0])
        alarm[0] = 15
}
