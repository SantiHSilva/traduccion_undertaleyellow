script_execute(gml_Script_scr_controls_text)
if key_revert_pressed
{
    characters = message_length
    message_draw = string_copy(message[message_current], 0, characters)
}
if (characters < message_length)
{
    if (counter == 0)
    {
        script_execute(gml_Script_scr_text_increase)
        script_execute(gml_Script_scr_talking_axis)
    }
    else
        can_talk = 0
}
else
{
    can_talk = 0
    if (key_select_pressed && skippable == 1)
    {
        if (message_current < message_end)
            message_adv = 1
        else
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0)
            with (obj_quote_bubble_battle)
                instance_destroy()
            instance_destroy()
        }
    }
    if (skippable == 0)
    {
        if (current_turn == 3 && message_current == 0)
        {
            if (scene == 0)
                scene = 1
        }
    }
}
switch scene
{
    case 1:
        if scr_battle_box_resize_midfight(575, 140)
        {
            scr_text_battle()
            with (msg)
            {
                sndfnt = 391
                message[0] = "* (You do.)"
            }
            if (!global.dialogue_open)
                cutscene_advance()
        }
        break
    case 2:
        message_adv = 1
        cutscene_advance()
        break
    case 3:
        if cutscene_wait(0.5)
            audio_play_sound(snd_generator_start, 1, false, 1, 0, 0.7)
        break
    case 4:
        obj_axis_body.x = obj_axis_body.xstart
        obj_axis_body.y = obj_axis_body.ystart
        obj_axis_body.x += random_range(-1, 1)
        obj_axis_body.y += random_range(-1, 1)
        white_fade_alpha += 0.05
        if (white_fade_alpha >= 1)
            cutscene_advance()
        break
    case 5:
        cutscene_wait(1)
        break
    case 6:
        message_adv = 1
        cutscene_advance()
        obj_axis_heart.image_index = 3
        obj_axis_heart.image_speed = 0
        obj_axis_body.sprite_index = spr_axis_body
        audio_play_sound(snd_undertale_flash, 1, false, 0.75, 0, 1.2)
        audio_play_sound(snd_love_increased, 1, false, 1, 0, 1.2)
        break
    case 7:
        white_fade_alpha -= 0.1
        if (white_fade_alpha <= 0)
            cutscene_advance()
        break
    case 8:
        skippable = 1
        scene = 0
        global.enemy_sparing = 1
        break
}

if (message_adv == 1)
{
    message_current += 1
    message_length = string_length(message[message_current])
    characters = 0
    message_draw = ""
    draw_enabled = 1
    message_adv = 0
}
script_execute(gml_Script_scr_text_counter)
if (scene > 0)
{
    with (obj_heart_battle_fighting_axis)
    {
        if (image_alpha > 0)
            image_alpha -= 0.1
    }
    with (obj_battle_enemy_attack_axis_shield)
    {
        if (image_alpha > 0)
            image_alpha -= 0.1
    }
}