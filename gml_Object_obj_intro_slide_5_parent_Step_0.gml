if instance_exists(obj_intro_text)
{
    if (obj_intro_text.message_current == 5 && obj_intro_text.characters == obj_intro_text.message_length && no_loop == 0)
    {
        alarm[0] = 40
        no_loop = 1
    }
}
