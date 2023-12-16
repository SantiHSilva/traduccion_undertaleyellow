if (scr_interact() && keyboard_multicheck_pressed(0))
{
    is_talking = 1
    scr_text()
    with (msg)
    {
        for (var i = (array_length_1d(other.self_message) - 1); i >= 0; i--)
            message[i] = other.self_message[i]
    }
}
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
