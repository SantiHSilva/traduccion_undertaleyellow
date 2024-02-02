function scr_shuffle_controls_snowdin_13_yellow() //gml_Script_scr_shuffle_controls_snowdin_13_yellow
{
    var key_left = global.left_keyp
    var key_right = global.right_keyp
    var key_select = keyboard_multicheck_pressed(0)
    if (shufflers_select == 1)
    {
        if key_right
        {
            audio_play_sound(snd_mainmenu_select, 20, false)
            switch current_shuffler
            {
                case 0:
                    current_shuffler = 1
                    break
                case 1:
                    current_shuffler = 2
                    break
                case 2:
                    current_shuffler = 0
                    break
            }

        }
        if key_left
        {
            audio_play_sound(snd_mainmenu_select, 20, false)
            switch current_shuffler
            {
                case 0:
                    current_shuffler = 2
                    break
                case 1:
                    current_shuffler = 0
                    break
                case 2:
                    current_shuffler = 1
                    break
            }

        }
        if key_select
        {
            audio_play_sound(snd_confirm, 20, false)
            shufflers_select = 0
            timer += 1
        }
    }
}

