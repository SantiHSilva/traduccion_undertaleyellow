message[0] = "..."
portrait[0] = 1755
message_end = 0
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
finale_chart = [[1.26, 1.73, 1.89, 2.36, 2.68, 3.02, 3.15, 3.78, 4.1, 4.42, 4.57, 4.73, 5.36, 5.68, 6.31, 6.63, 7.26, 7.57, 7.81, 8.05, 8.68, 8.84, 9.07, 9.31, 9.78, 10.1, 10.42, 10.73, 11.05, 11.21, 11.36], [1, 0, 2, 0, 0, 0, 1, 0, 2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 2, 1, 0, 0, 1, 0, 1, 2, 1, 0, 0, 1]]
script_execute(gml_Script_scr_generate_text_counters)
