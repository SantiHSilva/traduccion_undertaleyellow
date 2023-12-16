alarm[1] = 165
audio_stop_sound(obj_radio.current_song)
audio_sound_gain(obj_radio.current_song, 1, 1)
obj_radio.bgm = 164
global.radio_restart = 1
timer[0] = 60
scr_text()
with (msg)
{
    sndfnt = 99
    skippable = 0
    portrait = 0
    position = 0
    message[0] = "* ¿Qué es esto?"
    message[1] = "* ¿Un nuevo cliente?"
}
