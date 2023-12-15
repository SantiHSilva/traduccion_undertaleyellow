if live_call()
    return global.live_result;
text_effect = "circle"
attack = 0
scene = -1
cutscene_timer = 0
skippable = 0
message_adv = 0
var turns_passed = global.turns_passed
enemy_talker = 0
voice_pitch = 0.5
audio_stop_sound(global.battle_music)
message[0] = ". . ."
message[1] = "W O R R I E D#R I B B I T."
message[2] = "T . . .#"
message[3] = "T H E#F I N A L#. . .#"
message[4] = "T H E#F I N A L#F R O G ."
message[5] = "C O L L E C T I O N#T I M E ."
message_end = 5
message_current = 0
message_draw = ""
draw_enabled = 0
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
circle_text_angle = global.circle_text_angle_default
circle_text_angle_direction = 1
draw_alpha = 1
global.enemy_spared = 1
obj_macro_froggit_body.image_alpha = 1
