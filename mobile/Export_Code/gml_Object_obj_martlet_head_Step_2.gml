if (!instance_exists(obj_martlet_body))
    instance_destroy()
if (obj_martlet_body.animating == 1)
{
    x = obj_martlet_body.x
    y = obj_martlet_body.head_displacement_y
}
else
{
    x = starting_point_x
    y = starting_point_y
}
if instance_exists(obj_quote_defeat_parent)
    var text_parent = obj_quote_defeat_parent
else
    text_parent = obj_quote_battle_martlet_parent
if (instance_exists(text_parent) && instance_exists(obj_quote_bubble_battle))
{
    if (sprite_index != text_parent.portrait_head[text_parent.message_current])
        sprite_index = text_parent.portrait_head[text_parent.message_current]
}
else
    sprite_index = head_sprite
if (instance_exists(text_parent) && instance_exists(obj_quote_bubble_battle))
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
with (obj_martlet_head_shadow)
    event_user(0)
