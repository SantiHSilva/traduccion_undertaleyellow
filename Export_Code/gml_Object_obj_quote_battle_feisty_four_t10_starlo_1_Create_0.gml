text_effect = "twitchy"
message[0] = "   Hey!"
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
scr_audio_fade_out(mus_deal_em_out_yellow, 350)
scr_audio_fade_out(mus_deal_em_out_ace_yellow, 350)
scr_audio_fade_out(mus_deal_em_out_ed_yellow, 350)
scr_audio_fade_out(mus_deal_em_out_mooch_yellow, 350)
scr_audio_fade_out(mus_deal_em_out_moray_yellow, 350)