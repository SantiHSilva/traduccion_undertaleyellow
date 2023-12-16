if (waiter == 1)
{
}
if (choice == 0)
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
    if (keyboard_multicheck_pressed(0) == 1)
    {
        audio_play_sound(snd_mainmenu_select, 1, false)
        if (p[1] == 1)
            choice = 1
        if (p[2] == 1)
            choice = 2
    }
}
else if instance_exists(obj_ending_flowey)
{
    if (obj_ending_flowey.sprite_index != spr_flowey_enter)
    {
        obj_ending_flowey.sprite_index = spr_flowey_enter
        obj_ending_flowey.image_index = (obj_ending_flowey.image_number - 1)
        obj_ending_flowey.image_speed = -0.25
    }
    if (obj_ending_flowey.image_index <= 0)
    {
        instance_destroy(obj_ending_flowey)
        if (choice == 1)
        {
            audio_play_sound(mus_cymbal, 10, false)
            alarm[1] = 1
            instance_create(0, 0, obj_transition_white)
            if file_exists("Save.sav")
                file_delete("Save.sav")
            ini_open("Save02.sav")
            ini_write_real("00", "02", 0)
            ini_write_real("00", "03", 0)
            ini_write_real("00", "04", 0)
            ini_close()
        }
        else
            game_end()
    }
}
