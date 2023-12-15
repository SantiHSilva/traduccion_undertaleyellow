event_inherited()
if live_call()
    return global.live_result;
if (waiter == 0)
{
    if interact
        waiter = 1
}
if (waiter == 1)
{
    scr_text()
    if (npc_flag == 0)
    {
        with (msg)
        {
            message[0] = "* (You find 60G in the trash can.)"
            message[1] = "* (Take it?)"
            ch_msg = 1
            ch[1] = "Sí"
            ch[2] = "No"
            if (outcome == 1)
            {
                message[2] = "* (You got 60G!)"
                audio_play_sound(snd_success, 1, false)
                global.player_gold += 60
                other.npc_flag += 1
                other.waiter = 0
            }
            if (outcome == 2)
            {
                global.dialogue_open = 0
                other.waiter = 0
            }
        }
    }
    else if (npc_flag == 1)
    {
        msg.message[0] = "* (Only trash left.)"
        waiter = 0
    }
}
