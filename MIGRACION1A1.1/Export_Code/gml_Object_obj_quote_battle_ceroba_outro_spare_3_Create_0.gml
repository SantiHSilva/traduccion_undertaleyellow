text_effect = "twitchy"
attack = 0
message[0] = "Why...?"
message[1] = "You..."
message[2] = "You don't#understand."
message[3] = "This is irreversible!#Everyone knows what#I've become!"
message[4] = "Living... after what#I've done..."
message[5] = "I..."
message_end = 5
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
circle_text_angle = global.circle_text_angle_default
circle_text_angle_direction = 1
