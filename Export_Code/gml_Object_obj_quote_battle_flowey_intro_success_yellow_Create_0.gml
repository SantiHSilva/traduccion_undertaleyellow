message[0] = "Nice job there,#buddy! In case you#do get hit, I can#SAVE your progress!"
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
