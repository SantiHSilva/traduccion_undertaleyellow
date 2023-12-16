if (sprite_index == spr_floweyleave || sprite_index == spr_floweyrise)
    return;
if (instance_exists(obj_dialogue) && is_talking == 1)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.2
}
else
{
    image_speed = 0
    is_talking = 0
}
