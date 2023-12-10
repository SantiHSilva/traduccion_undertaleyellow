text_effect = "twitchy"
attack = 0
scene = 0
cutscene_timer = 0
skippable = 1
message_adv = 0
enemy_talker = 0
if (global.last_action_selected != "Action 1 Message 1")
{
    message[0] = "..."
    message_end = 0
}
else
{
    current_turn = global.action_1_selected_count
    switch current_turn
    {
        case 1:
            instance_create_depth(obj_axis_body.x, obj_axis_body.y, (obj_axis_body.depth - 1), obj_axis_heart)
            obj_axis_heart.image_index = 1
            obj_axis_heart.image_speed = 0
            audio_play_sound(snd_undertale_flash, 1, false)
            message[0] = "I... WHAT?"
            message_end = 0
            break
        case 2:
            obj_axis_heart.image_index = 2
            obj_axis_heart.image_speed = 0
            audio_play_sound(snd_undertale_flash, 1, false, 1, 0, 1.1)
            message[0] = "WELL...#I MEAN, YEAH."
            message[1] = "THANK YOU,#I GUESS."
            message_end = 1
            break
        case 3:
            scr_audio_fade_out(mus_guns_blazing, 1000)
            message[0] = "COME ON, YOU#DO NOT MEAN#THAT."
            message[1] = "YOU DO?"
            message[2] = "WHOA. HEY.#I FEEL FUNNY."
            message[3] = "I FEEL...#GOOD."
            message[4] = "THANK YOU FOR#CONFIRMING MY#NARCISSISM,#HUMAN."
            message[5] = "NOTE: THAT WAS#A \"JOKE.\""
            message_end = 5
            skippable = 0
            global.enemy_sparing = 1
            break
    }

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
white_fade_alpha = 0
