text_effect = "twitchy"
message[0] = "Moray, let's team#up for an attack!"
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
talk_script = gml_Script_scr_talking_ed
