alarm[0] = fadespeed
if (fadein == 0)
    fadealpha += 0.05
if (fadein == 1)
{
    fadealpha -= 0.05
    if (fadealpha <= 0)
        instance_destroy()
}
if (fadealpha >= 1)
{
    room_goto(newRoom)
    fadein = 1
}
