message[0] = "Since you're so bad#at dodging bullets,#I can SAVE your#progress for you."
message[1] = "That means if#something bad#happens, I can make#it unhappen for you."
portrait[0] = 1934
portrait[1] = 1934
message_end = 1
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
audio_sound_pitch(mus_floweynew_yellow, 1)
