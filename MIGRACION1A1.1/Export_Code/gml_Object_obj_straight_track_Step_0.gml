var rail_switch = 0
with (obj_mc_button)
{
    if (track_number == other.track_number && swit == 1)
        rail_switch = 1
}
if (rail_switch == 1)
{
    if (rotation == "horizontal")
    {
        sprite_index = spr_mc_rail_vertical
        rotation = "vertical"
    }
    else if (rotation == "vertical")
    {
        sprite_index = spr_mc_rail_horizontal
        rotation = "horizontal"
    }
}
