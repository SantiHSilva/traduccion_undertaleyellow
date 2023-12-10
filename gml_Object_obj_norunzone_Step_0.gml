if place_meeting(x, y, obj_pl)
{
    global.player_can_run = 0
    obj_pl.is_sprinting = 0
}
else
    global.player_can_run = 1
