text_effect = "twitchy"
attack = 0
scene = 0
cutscene_timer = 0
skippable = 1
message_adv = 0
var turns_passed = global.turns_passed
enemy_talker = 0
switch turns_passed
{
    case 10:
        message[0] = "ADEQUATE JOB."
        message[1] = "THANK YOU#FOR YOUR HELP. "
        message[2] = "no problem,#guardener."
        message[3] = "yeah, give#us a call#anytime."
        message[4] = "even just#to hang out#or smth."
        message[5] = "..."
        message[6] = "or not,#it's nbd."
        enemy_talker = [0, 0, 1, 2, 2, 0, 2]
        message_end = 6
        break
}

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
