text_effect = "twitchy"
attack = 0
scene = 0
cutscene_timer = 0
skippable = 1
message_adv = 0
message[0] = "For Chujin..."
message_end = 0
message_current = 0
message_draw = ""
draw_enabled = 1
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
circle_text_angle = global.circle_text_angle_default
circle_text_angle_direction = 1
