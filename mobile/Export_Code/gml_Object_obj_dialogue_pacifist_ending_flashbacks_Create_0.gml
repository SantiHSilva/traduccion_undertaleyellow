local_dialogue_open = 1
letter_array = -1
letter_current = 1
letter_waiter = 0
line_current = 0
letter_speed = 1
sndfnt = 96
shake_intensity = 0
message[0] = ""
message_current = 0
message_advance = 0
message_color = 0
fade_timer = 30
text_x[1] = x
text_y[1] = y
text_alpha[1] = 0
text_x_mod = 0
text_y_mod = 0
white_text = 0
draw_set_font(fnt_main)
str_width = string_width("w")
draw_alpha = 0
reverb_volume = 1
alarm[1] = 0
emitter1 = audio_emitter_create()
emitter1_bus = audio_bus_create()
audio_emitter_bus(emitter1, emitter1_bus)
audio_emitter_gain(emitter1, 0.33)
ef_reverb = audio_effect_create((5 << 0))
ef_reverb.size = 1
ef_reverb.mix = 0.8
emitter1_bus.effects[0] = ef_reverb
