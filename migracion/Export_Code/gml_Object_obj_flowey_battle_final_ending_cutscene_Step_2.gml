if instance_exists(obj_dialogue)
{
    if (obj_dialogue.cutoff < string_length(obj_dialogue.message[obj_dialogue.message_current]))
        is_talking = 1
    else
        is_talking = 0
    if (is_talking == 1)
        image_speed = 0.2
    else
    {
        image_speed = 0
        image_index = 0
    }
}
