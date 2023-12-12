if (global.flag[6] == 1)
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
            with (obj_lightp2)
            {
                if (i == 2 || i == 6)
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
            with (obj_lightp2)
            {
                if (i == 3 || i == 1 || i == 7)
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
            with (obj_lightp2)
            {
                if (i == 4 || i == 2 || i == 8)
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
            with (obj_lightp2)
            {
                if (i == 3 || i == 5 || i == 9)
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
            with (obj_lightp2)
            {
                if (i == 4 || i == 10)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
        if (i == 6)
        {
            with (obj_lightp2)
            {
                if (i == 1 || i == 7)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
        if (i == 7)
        {
            with (obj_lightp2)
            {
                if (i == 6 || i == 8 || i == 2)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
        if (i == 8)
        {
            with (obj_lightp2)
            {
                if (i == 7 || i == 9 || i == 3)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
        if (i == 9)
        {
            with (obj_lightp2)
            {
                if (i == 8 || i == 10 || i == 4)
                {
                    if (turn == 1)
                        turn = 0
                    else if (turn == 0)
                        turn = 1
                }
            }
        }
        if (i == 10)
        {
            with (obj_lightp2)
            {
                if (i == 9 || i == 5)
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
    obj_puzzle3bridgeroom.puzzlecount += 1
    waiter = 1
}
if (turn == 0 && waiter == 1)
{
    obj_puzzle3bridgeroom.puzzlecount -= 1
    waiter = 0
}
