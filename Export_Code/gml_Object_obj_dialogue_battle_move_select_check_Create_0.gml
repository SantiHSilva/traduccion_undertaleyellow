script_execute(gml_Script_scr_battle_core_directory_flavor_text_check)
message_current = 0
message_end = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
