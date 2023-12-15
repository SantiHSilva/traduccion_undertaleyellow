text_effect = "twitchy"
attack = 0
message[0] = "..."
message[1] = "...What are you#waiting for?"
message[2] = "Please, give me#this."
message_end = 2
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
circle_text_angle = global.circle_text_angle_default
circle_text_angle_direction = 1
