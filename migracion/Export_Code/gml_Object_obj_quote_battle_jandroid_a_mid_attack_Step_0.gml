script_execute(gml_Script_scr_controls_text)
if (characters < message_length)
{
    if (counter == 0)
    {
        if (color_count >= 1)
        {
            script_execute(gml_Script_scr_text_increase_color)
            script_execute(gml_Script_scr_talking_enemy_color)
        }
        else
        {
            script_execute(gml_Script_scr_text_increase)
            script_execute(gml_Script_scr_talking_enemy)
        }
    }
    else
        can_talk = 0
}
else
    can_talk = 0
if (color_count >= 1)
    script_execute(gml_Script_scr_text_counter_color)
else
    script_execute(gml_Script_scr_text_counter)
if (!instance_exists(obj_heart_battle_fighting_parent))
{
    with (obj_quote_bubble_battle)
        instance_destroy()
    instance_destroy()
}
