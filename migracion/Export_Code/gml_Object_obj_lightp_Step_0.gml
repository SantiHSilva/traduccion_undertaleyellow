if (global.flag[2] == 1)
    return;
if keyboard_multicheck_pressed(0)
{
    if (scr_interact() == 1)
    {
        audio_play_sound(snd_switch, 1, false)
        if (turn == 1)
            turn = 0
        else if (turn == 0)
            turn = 1
        if (i == 1)
        {
            with (obj_lightp)
            {
                if (i == 2)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
        if (i == 2)
        {
            with (obj_lightp)
            {
                if (i == 3 || i == 1)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
        if (i == 3)
        {
            with (obj_lightp)
            {
                if (i == 4 || i == 2)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
        if (i == 4)
        {
            with (obj_lightp)
            {
                if (i == 3 || i == 5)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
        if (i == 5)
        {
            with (obj_lightp)
            {
                if (i == 4)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
    }
}
if (turn == 1)
    image_index = 0
if (turn == 0)
    image_index = 1
if (turn == 1 && waiter == 0)
{
    obj_puzzle2.puzzlecount += 1
    waiter = 1
}
if (turn == 0 && waiter == 1)
{
    obj_puzzle2.puzzlecount -= 1
    waiter = 0
}
