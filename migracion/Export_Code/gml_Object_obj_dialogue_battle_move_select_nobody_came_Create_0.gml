message[0] = "* But nobody came."
message_current = 0
message_end = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
moveable = 1
script_execute(gml_Script_scr_generate_text_counters)
