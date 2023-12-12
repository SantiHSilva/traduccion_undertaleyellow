script_execute(gml_Script_scr_controls_text)
if instance_exists(obj_quote_bubble_battle)
{
    if (draw_enabled == 0)
        obj_quote_bubble_battle.visible = false
    else
        obj_quote_bubble_battle.visible = true
}
if (draw_enabled == 0)
{
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
            with (obj_quote_bubble_battle)
                instance_destroy()
            global.text_speed = 1
            instance_destroy()
            if (global.attack_cycle == global.attack_cycle_max)
            {
                obj_axis_body_geno.sprite_index = spr_axis_body_nocharge_melancholy
                instance_create_depth(obj_axis_body_geno.x, obj_axis_body_geno.y, (obj_axis_body_geno.depth - 1), obj_axis_shield_only_geno)
                global.action_amount = 0
                global.enemy_sparing = 1
                obj_background_boss_battle_axis_yellow.fade_out = 1
            }
            with (obj_battlebox_controller_axis)
                event_user(0)
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
