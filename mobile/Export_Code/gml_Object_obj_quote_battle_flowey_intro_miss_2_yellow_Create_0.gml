message[0] = "What are you doing?#Dodge. The. Bullets."
message[1] = "Don't mess it up#this time."
portrait[0] = 1938
portrait[1] = 1934
message_end = 1
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
