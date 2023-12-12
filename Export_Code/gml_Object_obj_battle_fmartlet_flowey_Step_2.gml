if live_call()
    return global.live_result;
if (sprite_index == spr_flowey_enter_plain || sprite_index == spr_evil_flowey_dies_10)
    return;
if (instance_exists(obj_quote_battle_martlet_genocide_final_2_outro) && instance_exists(obj_quote_bubble_battle))
{
    if (obj_quote_battle_martlet_genocide_final_2_outro.can_talk == 1)
    {
        if (can_talk_no_loop == 0)
        {
            image_index = 1
            can_talk_no_loop = 1
        }
        image_speed = ((global.text_speed * global.talk_speed_flowey) * obj_quote_battle_martlet_genocide_final_2_outro.hold)
    }
    else
    {
        can_talk_no_loop = 0
        image_speed = 0
        image_index = 0
    }
}
else
{
    can_talk_no_loop = 0
    image_speed = 0
    image_index = 0
}
