if live_call()
    return global.live_result;
if (fade_out == 1)
{
    if (draw_alpha > 0.01)
        draw_alpha = lerp(draw_alpha, 0, 0.1)
    else
        instance_destroy()
}
if (draw_alpha < 0.99)
    draw_alpha = lerp(draw_alpha, 1, 0.1)
else if (puzzle_draw_guide == 1)
{
    if (keyboard_multicheck_pressed(0) || keyboard_multicheck_pressed(1))
        puzzle_draw_guide = 0
    return;
}
else if (puzzle_start_noloop == 0)
{
    alarm[0] = 15
    draw_alpha = 1
    puzzle_start_noloop = 1
}
if (puzzle_game_victory == 1)
{
    if (!alarm[2])
        alarm[2] = 45
    puzzle_alpha = 0.5
}
if (puzzle_game_over == 1)
{
    event_user(0)
    offset_max = 3
    puzzle_alpha = 0.5
    puzzle_game_over = 0
    screenshake_enabled = 1
}
if (global.route == 3)
{
    if (instance_exists(obj_chem_05_maze_puzzle_player) && obj_chem_05_maze_puzzle_player.can_move)
    {
        if (puzzle_speed_last == 0)
            puzzle_speed_last = obj_chem_05_maze_puzzle_player.max_speed
        if (!alarm[5])
        {
            if (irandom(pseudo_random_number) == 1)
            {
                pseudo_random_number = pseudo_random_number_max
                puzzle_alpha = random_range(0.25, 0.5)
                audio_play_sound(snd_electric_flash, 1, false, 1, 0, random_range(0.75, 1.25))
                alarm[5] = irandom_range(15, 25)
            }
            else if (pseudo_random_number > 20)
                pseudo_random_number--
        }
    }
}
if (screenshake_enabled == 1)
{
    x_offset = random_range((-offset_max), offset_max)
    y_offset = random_range((-offset_max), offset_max)
    if (offset_max > 0)
        offset_max -= 0.2
    else
        screenshake_enabled = 0
}
