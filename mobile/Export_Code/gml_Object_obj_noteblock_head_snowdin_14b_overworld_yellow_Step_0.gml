talk = obj_noteblock_snowdin_14b_overworld_yellow.is_talking
if (instance_exists(obj_dialogue) && talk == 1)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.2
}
