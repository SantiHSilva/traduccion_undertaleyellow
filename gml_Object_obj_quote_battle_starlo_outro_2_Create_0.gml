text_effect = "twitchy"
attack = 0
var turns_passed = global.turns_passed
message[0] = "I'll make this count."
portrait_head[0] = 2126
message_end = 0
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
circle_text_angle = global.circle_text_angle_default
circle_text_angle_direction = 1
