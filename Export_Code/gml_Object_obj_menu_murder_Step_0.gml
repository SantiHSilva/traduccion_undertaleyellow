if live_call()
    return global.live_result;
if (waiter == 1)
{
}
switch scene
{
    case 0:
        choice_alpha += 0.01
        if (choice_alpha >= 0.8)
        {
            audio_play_sound(snd_mainmenu_select, 1, false)
            choice_alpha = 1
            cutscene_advance()
        }
        break
    case 1:
        if (choice == 0)
        {
            if (global.left_keyp && p[2] == 1)
            {
                p[2] = 0
                p[1] = 1
                audio_play_sound(snd_mainmenu_select, 1, false)
            }
            if (global.right_keyp && p[1] == 1)
            {
                p[2] = 1
                p[1] = 0
                audio_play_sound(snd_mainmenu_select, 1, false)
            }
            if (keyboard_multicheck_pressed(0) == 1)
            {
                audio_play_sound(snd_confirm, 1, false)
                if (p[1] == 1)
                    choice = 1
                if (p[2] == 1)
                    choice = 2
            }
        }
        else
        {
            choice_alpha -= 0.15
            if (choice_alpha <= 0)
                cutscene_advance()
        }
        break
    case 2:
        cutscene_wait(1)
        break
    case 3:
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
            instance_destroy()
            scene++
        }
        else
            game_end()
        break
}

