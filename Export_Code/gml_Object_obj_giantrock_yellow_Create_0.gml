event_inherited()
if (global.route != 3)
{
    message[0] = "* (Es una roca grande#  e impresionante.)"
    message[1] = "* (Parece estar perfectamente#  bloqueando la entrada#  de la cueva.)"
    message[2] = "* (Pasar parece imposible#  por el momento.)"
    message_length = 3
}
else
{
    message[0] = "* (Una molesta roca#  bloquea la cueva.)"
    message_length = 1
}
depth = (-y)
