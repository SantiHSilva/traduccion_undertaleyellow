if instance_exists(obj_dialogue_shop_parent)
    var action = obj_dialogue_shop_parent.action[obj_dialogue_shop_parent.message_current]
else
    action = "Nothing"
if (action != "Nothing")
{
    if (instance_exists(obj_dialogue_shop_parent) && obj_dialogue_shop_parent.point[obj_dialogue_shop_parent.message_current] == 1)
        script_execute(obj_dialogue_shop_parent.action_script[obj_dialogue_shop_parent.message_current])
    else
    {
        can_talk_no_loop = 0
        sprite_index = head_sprite
        image_speed = 0
        image_index = 0
    }
}
if (action != "Override")
{
    if instance_exists(obj_dialogue_shop_parent)
    {
        if (sprite_index != obj_dialogue_shop_parent.portrait_author_head[obj_dialogue_shop_parent.message_current])
            sprite_index = obj_dialogue_shop_parent.portrait_author_head[obj_dialogue_shop_parent.message_current]
    }
    else
        sprite_index = head_sprite
    if (instance_exists(obj_dialogue_shop_parent) && obj_dialogue_shop_parent.point[obj_dialogue_shop_parent.message_current] == 1)
    {
        if (obj_dialogue_shop_parent.can_talk == 1)
        {
            if (can_talk_no_loop == 0)
            {
                image_index = 1
                can_talk_no_loop = 1
            }
            image_speed = ((global.text_speed * global.talk_speed_author) * obj_dialogue_shop_parent.hold)
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
