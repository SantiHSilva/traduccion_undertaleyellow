depth = (-y)
var audio_sound_gain_radio = audio_sound_get_gain(obj_radio.current_song)
var audio_sound_gain_gramophone = audio_sound_get_gain(mus_dalventertainer)
if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)) && (audio_sound_gain_radio == 1 || audio_sound_gain_gramophone == 1))
    waiter = 1
if (global.route != 3)
{
    if (!audio_is_playing(mus_dalventertainer))
    {
        if (waiter == 1)
        {
            scr_text()
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* (Es un gramófono.)"
                message[1] = "* (Parece bastante viejo.)"
                message[2] = "* (Tal vez sea un abuelitáfono.)"
                message[3] = "* (Un disco llamado #  \"Prueba de Organo de Dalv\" está en cola para escuchar.)"
                message[4] = "* (¿Escuchar?)"
                if (outcome >= 1 && outcome <= 2 && message_current == 4)
                {
                    if (outcome == 1)
                        obj_dalvsroom_gramophone.waiter = 2
                    else
                        obj_dalvsroom_gramophone.waiter = 4
                }
                if ((message_current + 1) == 4)
                {
                    ch_msg = 4
                    ch[1] = "Sí"
                    ch[2] = "No"
                }
            }
        }
        if (waiter == 2 && (!instance_exists(obj_dialogue)))
        {
            with (obj_radio)
                audio_sound_gain(current_song, 0, 1000)
            waiter++
        }
        if (waiter == 3)
        {
            with (obj_radio)
            {
                var audio_gain = audio_sound_get_gain(current_song)
                if (audio_gain == 0)
                {
                    audio_stop_sound(current_song)
                    with (obj_dalvsroom_gramophone)
                    {
                        audio_sound_gain(mus_dalventertainer, 1, 0)
                        audio_play_sound(mus_dalventertainer, 1, false)
                        image_speed = 0.26666666666666666
                        waiter = 0
                        obj_pl.alarm[0] = 1
                    }
                }
            }
        }
        if (waiter == 4)
        {
            waiter = 0
            obj_pl.alarm[0] = 1
            with (obj_dialoguebox_dummy)
                instance_destroy()
        }
    }
    else
    {
        if (waiter == 1)
        {
            scr_text()
            with (msg)
            {
                if (!instance_exists(obj_dialoguebox_dummy))
                    instance_create(0, 0, obj_dialoguebox_dummy)
                portrait = 0
                sndfnt = 99
                message[0] = "* (El disco debe estar dañado o# roto.)"
                message[1] = "* (¿Poner fin a esta#  música miserable?)"
                if (outcome >= 1 && outcome <= 2 && message_current == 1)
                {
                    if (outcome == 1)
                        obj_dalvsroom_gramophone.waiter = 2
                    else
                        obj_dalvsroom_gramophone.waiter = 4
                }
                if ((message_current + 1) == 1)
                {
                    ch_msg = 1
                    ch[1] = "Sí"
                    ch[2] = "No"
                }
            }
        }
        if (waiter == 2 && (!instance_exists(obj_dialogue)))
        {
            scr_text()
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* (Apagas el gramófono.)"
                message[1] = "* (Tal vez sea un trabajo en#  progreso.)"
                choice = 0
            }
            audio_sound_gain(mus_dalventertainer, 0, 1000)
            waiter++
        }
        if (waiter == 3 && (!instance_exists(obj_dialogue)))
        {
            instance_destroy(obj_dialoguebox_dummy)
            audio_gain = audio_sound_get_gain(mus_dalventertainer)
            if (audio_gain == 0)
            {
                audio_stop_sound(mus_dalventertainer)
                with (obj_radio)
                {
                    audio_sound_gain(current_song, 1, 0)
                    audio_play_sound(current_song, 1, true)
                    with (obj_dalvsroom_gramophone)
                    {
                        image_speed = 0
                        image_index = 0
                        waiter = 0
                        obj_pl.alarm[0] = 1
                    }
                }
            }
        }
        if (waiter == 4)
        {
            waiter = 0
            obj_pl.alarm[0] = 1
            with (obj_dialoguebox_dummy)
                instance_destroy()
        }
    }
}
else
{
    if (waiter == 1 && (!instance_exists(obj_dialogue)))
    {
        scr_text()
        with (msg)
        {
            portrait = 0
            sndfnt = 99
            message[0] = "* (Un viejo gramófono.)"
            message[1] = "* (Te ahorras no#  ponerle el disco.)"
        }
        waiter++
    }
    if (waiter == 2)
        waiter = 0
}
if (!audio_is_playing(mus_dalventertainer))
{
    image_speed = 0
    image_index = 0
}
