if (waiter == 1)
    return;
scr_get_input()
if (room == rm_mainmenu)
{
    if (global.left_keyp && p[2] == 1)
    {
        p[2] = 0
        p[1] = 1
    }
    if (global.right_keyp && p[1] == 1)
    {
        p[2] = 1
        p[1] = 0
    }
    if global.down_keyp
    {
        p[1] = 0
        p[2] = 0
        p[3] = 1
    }
    if (global.up_keyp && p[3] == 1)
    {
        p[3] = 0
        p[1] = 1
    }
}
else
{
    if global.down_keyp
    {
        p[1] = 0
        p[2] = 1
    }
    if global.up_keyp
    {
        p[1] = 1
        p[2] = 0
    }
}
if (keyboard_multicheck_pressed(0) == 1)
{
    if (room == rm_mainmenu)
    {
        if (p[1] == 1)
        {
            scr_loadgame()
            audio_stop_sound(mus)
        }
        if (p[2] == 1)
        {
            audio_stop_sound(mus)
            audio_play_sound(mus_cymbal, 10, false)
            alarm[1] = 1
            instance_create(0, 0, obj_transition_white)
            waiter = 1
        }
        if (p[3] == 1)
        {
            audio_stop_sound(mus)
            room_goto(rm_config)
        }
    }
    else
    {
        if (p[1] == 1 && (!instance_exists(obj_transition_white)))
        {
            audio_stop_sound(mus)
            audio_play_sound(mus_cymbal, 10, false)
            alarm[1] = 1
            instance_create(0, 0, obj_transition_white)
            waiter = 1
        }
        if (p[2] == 1)
        {
            audio_stop_sound(mus)
            room = rm_config
        }
    }
}
