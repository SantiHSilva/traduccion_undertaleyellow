var text_parent = obj_quote_battle_martlet_genocide_final_intro
if (sprite_index != spr_martlet_final_intro_1 && sprite_index != spr_martlet_final_intro_3)
    return;
if (instance_exists(text_parent) && text_parent.draw_enabled == 1)
{
    if instance_exists(obj_quote_bubble_battle)
    {
        if (text_parent.can_talk == 1)
        {
            if (can_talk_no_loop == 0)
            {
                image_index = 1
                can_talk_no_loop = 1
            }
            image_speed = ((global.text_speed * global.talk_speed_martlet) * text_parent.hold)
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
}
