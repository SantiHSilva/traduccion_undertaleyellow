event_inherited()
if (hp_self <= 0)
{
    if (jump_noloop == 0)
    {
        path_end()
        audio_play_sound(snd_monster_damage_hit_critical, 1, false)
        jump_noloop = 1
        vspeed = 4
        gravity = 0.5
        image_speed = 0
    }
    image_alpha -= 0.04
    if (image_alpha <= 0)
        instance_destroy()
}
if live_call()
    return global.live_result;
switch path_index
{
    case pt_flowey_battle_phase_2_paper_right:
        image_angle = (direction + 90)
        break
    case 3:
        image_angle = (direction - 90)
        break
    case 7:
        image_angle = (direction - 90)
        break
    case 59:
        image_angle = (direction + 90)
        break
}

path_speed = 4
if (path_position > 0.5)
{
    with (obj_flowey_battle_phase_2_paper_thorn)
    {
        if (path_index == other.path_index)
        {
            if (path_position > 0.9)
            {
                var old_pos = other.path_position
                other.path_position = path_position
                path_position = old_pos
            }
        }
    }
}
