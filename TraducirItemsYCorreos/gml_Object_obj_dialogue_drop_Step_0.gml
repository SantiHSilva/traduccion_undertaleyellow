scr_text()
if (scr_determine_item_droppable_yellow(current_item) == 1)
{
    with (msg)
    {
        message[0] = (("* ¿Seguro de que quieres#  tirar " + obtenerItemSpanish(other.current_item)) + "?")
        ch_msg = 0
        ch[1] = "Sí"
        ch[2] = "No"
        if (outcome == 1)
        {
            scr_item_remove(other.current_item)
            instance_destroy(other)
        }
        if (outcome == 2)
            instance_destroy(other)
    }
}
else
{
    with (msg)
        message[0] = (("* No se puede tirar el#  " + obtenerItemSpanish(other.current_item)) + ".")
    if (!global.dialogue_open)
        instance_destroy()
}
