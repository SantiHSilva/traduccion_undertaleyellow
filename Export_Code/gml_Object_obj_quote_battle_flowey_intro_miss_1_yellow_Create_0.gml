message[0] = "Sorry about that."
message[1] = "Let's try again!"
message[2] = "Here they come!#Dodge them all!"
portrait[0] = 1939
portrait[1] = 1934
portrait[2] = 1934
message_end = 2
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)