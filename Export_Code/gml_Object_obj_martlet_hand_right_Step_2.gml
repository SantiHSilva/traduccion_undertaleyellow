if (!instance_exists(obj_martlet_body))
    instance_destroy()
if (obj_martlet_body.animating == 1)
{
    x = (obj_martlet_body.x + 18)
    y = obj_martlet_body.hand_right_displacement_y
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
    if (sprite_index != text_parent.portrait_hand[text_parent.message_current])
        sprite_index = text_parent.portrait_hand[text_parent.message_current]
}
else
    sprite_index = hand_right_sprite
image_speed = 0
image_index = 0
with (obj_martlet_hand_right_shadow)
    event_user(0)
