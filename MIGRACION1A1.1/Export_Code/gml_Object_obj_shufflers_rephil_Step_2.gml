if (instance_exists(obj_quote_battle_shufflers_rephil) && instance_exists(obj_quote_bubble_battle))
{
    if (sprite_index != obj_quote_battle_shufflers_rephil.portrait[obj_quote_battle_shufflers_rephil.message_current])
        sprite_index = obj_quote_battle_shufflers_rephil.portrait[obj_quote_battle_shufflers_rephil.message_current]
}
else
    sprite_index = spr_shufflers_rephil_regular
if (instance_exists(obj_quote_battle_shufflers_rephil) && instance_exists(obj_quote_bubble_battle))
{
    if (obj_quote_battle_shufflers_rephil.can_talk == 1)
    {
        if (can_talk_no_loop == 0)
        {
            image_index = 1
            can_talk_no_loop = 1
        }
        image_speed = ((global.text_speed * global.talk_speed_shufflers_rephil) * obj_quote_battle_shufflers_rephil.hold)
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
