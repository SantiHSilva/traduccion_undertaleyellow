message[0] = "* (Este cartel #  está oculto por las#  hojas...)"
message[1] = "* (Sólo se ven algunas#  palabras.)"
if (global.option_autorun == 0)
    message[2] = (("* Precaución... " + global.cancel_key) + "... Corre...")
else
    message[2] = (("* Precaución... " + global.cancel_key) + "... Camina...")
