if (waiter < 30)
    waiter++
if (waiter == 30)
{
    if (!instance_exists(obj_dialogue))
        msg = instance_create(x, y, obj_dialogue)
    with (msg)
    {
        sndfnt = 97
        portrait = 0
        message[0] = "* ¡Mi niño!"
        message[1] = "* ¿Está todo bien ahí?"
        message[2] = "* ..."
        message[3] = "* Oh cariño... Me temo que#  no puedo llegar#  hasta ti..."
        message[4] = "* Debo irme un momento. Tu#  te quedaras ahi, ¿verdad?"
        message[5] = "* No pasees por ahí, hay#  monstruos que no son amistosos#  con todos los humanos."
        message[6] = "* No temas, mi niño, ¡Yo te#  protegere!"
        message[7] = "* Por favor... espera ahí."
    }
    waiter = 31
}
if (waiter == 31 && (!instance_exists(obj_dialogue)))
{
    room = rm_darkruinsintro
    global.item_slot[0] = "Nothing"
}
