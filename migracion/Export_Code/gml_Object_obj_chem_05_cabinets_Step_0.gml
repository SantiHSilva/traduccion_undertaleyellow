var compound = instance_place(x, y, obj_compound_parent)
if (compound != noone && compound.visible == true && scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_text()
    with (msg)
        message[0] = "* (Nothing useful here.)"
}
