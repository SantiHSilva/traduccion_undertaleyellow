message[0] = "Whoa whoa whoa!"
message[1] = "No need to start a#fight! Let's be#civil 'ere."
message[2] = "Do you attempt to#attack everyone you#encounter?"
message[3] = "Calm down, will ya?"
portrait[0] = 2085
portrait[1] = 2085
portrait[2] = 2085
portrait[3] = 2085
message_end = 3
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
