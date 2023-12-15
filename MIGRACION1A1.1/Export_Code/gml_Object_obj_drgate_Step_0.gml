if keyboard_multicheck_pressed(0)
{
    if (scr_interact() == 1)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue)
        with (msg)
        {
            sndfnt = 99
            portrait = 0
            message[0] = "* (Empujas la puerta.)"
            message[1] = "* (No se mueve.)"
        }
    }
}
