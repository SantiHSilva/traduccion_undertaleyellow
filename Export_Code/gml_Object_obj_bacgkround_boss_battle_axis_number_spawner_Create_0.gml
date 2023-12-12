part_x = (round((irandom_range(0, room_width) / 40)) * 40)
var move = 0
while (move == 0)
{
    move = 1
    with (obj_bacgkround_boss_battle_axis_number_spawner)
    {
        if (id != other.id && part_x == other.part_x)
        {
            other.part_x += 20
            move = 0
        }
    }
}
creator = obj_background_boss_battle_axis_yellow
part_size = choose(1, 1, 1, 2, 2, 3)
size_multiplier = (12 * part_size)
number_count = 9
alarm[0] = 1
