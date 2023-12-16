script_execute(gml_Script_scr_controls_text)
if instance_exists(obj_quote_bubble_battle)
{
    if (draw_enabled == 0)
        obj_quote_bubble_battle.visible = false
    else
        obj_quote_bubble_battle.visible = true
}
if is_array(enemy_talker)
{
    var bubble_type = obj_quote_bubble_battle_yellow_3
    var bubble_x = 402
    var bubble_y = 68
    switch enemy_talker[message_current]
    {
        case 0:
            bubble_type = obj_quote_bubble_battle_yellow_3
            bubble_x = 402
            bubble_y = 68
            break
        case 1:
            bubble_type = obj_quote_bubble_battle_yellow_above_larger
            bubble_x = ((obj_guardener_guy_a.x - (sprite_get_width(spr_quote_bubble_battle_yellow_above) * 0.5)) - 8)
            bubble_y = (obj_guardener_guy_a.bbox_top - sprite_get_height(spr_quote_bubble_battle_yellow_above))
            break
        case 2:
            bubble_type = obj_quote_bubble_battle_yellow_above_larger
            bubble_x = ((obj_guardener_guy_b.x - (sprite_get_width(spr_quote_bubble_battle_yellow_above) * 0.5)) - 8)
            bubble_y = (obj_guardener_guy_b.bbox_top - sprite_get_height(spr_quote_bubble_battle_yellow_above))
            break
    }

    if ((!instance_exists(bubble_type)) || bubble_type.x != bubble_x)
    {
        with (obj_quote_bubble_battle)
            instance_destroy()
        instance_create(bubble_x, bubble_y, bubble_type)
    }
}
switch global.turns_passed
{
    case 10:
        script_execute(gml_Script_scr_cutscene_battle_guardener_2)
        break
}

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
        if (enemy_talker != 0)
        {
            switch enemy_talker[message_current]
            {
                case 0:
                    script_execute(gml_Script_scr_talking_guardener)
                    break
                case 1:
                case 2:
                    script_execute(gml_Script_scr_talking_enemy)
                    break
            }

        }
        else
            script_execute(gml_Script_scr_talking_guardener)
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
