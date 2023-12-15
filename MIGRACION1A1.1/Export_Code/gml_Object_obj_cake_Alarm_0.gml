audio_play_sound(snd_success, 1, false)
scr_text()
with (msg)
    message[0] = "* (...Phew.)"
npc_flag = 1
other.image_index = 1
waiter = 0
global.cutscene = false
scr_radio_restart()
