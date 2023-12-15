text_effect = "twitchy"
attack = 0
scene = -2
cutscene_timer = 0
skippable = 1
message_adv = 0
obj_quote_bubble_battle.visible = false
switch global.attack_cycle
{
    case 5:
        message[0] = "HoW L0NG ARE wE#GOInG TO DO#THIS?"
        message_end = 0
        break
    case 6:
        message[0] = "I DID nOT THiNK#BOTS COuLD GET#TIR3D."
        message[1] = "BUT HeRE I AM.#TIRED AS [heck]."
        message_end = 1
        break
    case 7:
        message[0] = "STILL_ GoiNG,. ."
        message_end = 0
        break
    case 8:
        message[0] = "\"hey axis please#do another sick#attack.\""
        message[1] = "OK BuT JUST#BEC4USE Y0U ASKED#NIcELY."
        message_end = 1
        break
    case 9:
        message[0] = "OK."
        message[1] = "OK. .. ."
        message[2] = "LET M3 CATCH#mY STEAM."
        message[3] = ". . ."
        message[4] = "I THINK. ."
        message[5] = "IT is TIME#FOR A BrEAK..#. . ."
        scr_audio_fade_out(global.battle_music, 1000)
        message_end = 5
        break
}

message_current = 0
message_draw = ""
draw_enabled = 1
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
global.image_alpha_enemy_attacking_immunity = 1
script_execute(gml_Script_scr_generate_text_counters)
circle_text_angle = global.circle_text_angle_default
circle_text_angle_direction = 1
draw_alpha_white = 0
draw_white_circle = 0
