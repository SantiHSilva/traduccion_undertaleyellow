global.player_exp += global.enemy_exp
global.player_gold += global.enemy_gold
message[0] = (((("* YOU WON!#* You earned " + string(global.enemy_exp)) + " XP and ") + string(global.enemy_gold)) + " gold.")
message[0] = (message[0] + "#* Your LOVE increased.")
message_current = 0
message_end = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
can_check_display_text = 0
display_text = 0
alarm[0] = 1
moveable = 1
script_execute(gml_Script_scr_generate_text_counters)
